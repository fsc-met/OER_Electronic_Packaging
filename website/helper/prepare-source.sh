#!/usr/bin/env bash
set -euo pipefail

WEBSITE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SRC_DIR="$WEBSITE_DIR/src"

if [[ ! -d "$SRC_DIR" ]]; then
  echo "ERROR: staged source directory does not exist: $SRC_DIR" >&2
  exit 1
fi

python3 - "$SRC_DIR" <<'PY'
from pathlib import Path
import re
import sys

root = Path(sys.argv[1])
START = "<!-- MDBOOK-EXCLUDE-START -->"
END = "<!-- MDBOOK-EXCLUDE-END -->"

class PrepError(RuntimeError):
    pass


def strip_excluded(text: str, path: Path) -> str:
    """Remove internal blocks while preserving line count with blank lines."""
    out = []
    inside = False
    for lineno, line in enumerate(text.splitlines(keepends=True), start=1):
        has_start = START in line
        has_end = END in line
        if has_start and has_end:
            raise PrepError(f"{path}:{lineno}: exclude start/end markers cannot share one line")
        if has_start:
            if inside:
                raise PrepError(f"{path}:{lineno}: nested exclude-start marker")
            inside = True
            out.append("\n" if line.endswith("\n") else "")
            continue
        if has_end:
            if not inside:
                raise PrepError(f"{path}:{lineno}: exclude-end marker without matching start")
            inside = False
            out.append("\n" if line.endswith("\n") else "")
            continue
        if inside:
            out.append("\n" if line.endswith("\n") else "")
        else:
            out.append(line)
    if inside:
        raise PrepError(f"{path}: unclosed exclude block")
    return "".join(out)


def split_inline_code(line: str):
    """Yield (is_code, segment) for Markdown inline-code spans."""
    parts = []
    i = 0
    start = 0
    while i < len(line):
        if line[i] != '`':
            i += 1
            continue
        if start < i:
            parts.append((False, line[start:i]))
        j = i
        while j < len(line) and line[j] == '`':
            j += 1
        ticks = line[i:j]
        close = line.find(ticks, j)
        if close == -1:
            # Leave malformed/unclosed backticks to mdBook; do not rewrite their content.
            parts.append((True, line[i:]))
            return parts
        close_end = close + len(ticks)
        parts.append((True, line[i:close_end]))
        i = close_end
        start = i
    if start < len(line):
        parts.append((False, line[start:]))
    if not parts:
        parts.append((False, line))
    return parts


def is_escaped(s: str, idx: int) -> bool:
    n = 0
    j = idx - 1
    while j >= 0 and s[j] == '\\':
        n += 1
        j -= 1
    return (n % 2) == 1


def process_dollars(segment: str, path: Path, lineno: int) -> str:
    """
    Validate dollar-delimited KaTeX and escape clearly ordinary unpaired
    monetary dollars in staged Markdown only.
    """
    out = []
    i = 0
    while i < len(segment):
        if segment[i] != '$' or is_escaped(segment, i):
            out.append(segment[i])
            i += 1
            continue

        # Display math: require a closing $$ in this text segment or a later line.
        # Cross-line display math is handled at file level, so use sentinel tokens here.
        if i + 1 < len(segment) and segment[i + 1] == '$':
            out.append('$$')
            i += 2
            continue

        # Single-dollar inline math. Find the next unescaped single dollar.
        j = i + 1
        close = None
        while j < len(segment):
            if segment[j] == '$' and not is_escaped(segment, j):
                if j + 1 < len(segment) and segment[j + 1] == '$':
                    j += 2
                    continue
                close = j
                break
            j += 1

        if close is not None:
            body = segment[i + 1:close]
            if not body.strip():
                raise PrepError(f"{path}:{lineno}: empty inline math delimiter '$$' is ambiguous")

            # A prose currency amount can occur before valid inline math on the
            # same line, e.g. "$25 per board; use $V=IR$". In that case the
            # next dollar belongs to the later math expression and is not the
            # closing delimiter for the currency symbol. Detect clear prose
            # between a digit-leading dollar and the candidate close.
            if i + 1 < len(segment) and segment[i + 1].isdigit():
                strong_math = bool(re.search(r'[\\=+*/^_{}()]', body))
                prose_like = bool(
                    re.search(r'[.!?:;]\s', body)
                    or re.search(r'[A-Za-z]{3,}\s+[A-Za-z]{3,}', body)
                )
                if prose_like and not strong_math:
                    out.append(r'\$')
                    i += 1
                    continue

            out.append(segment[i:close + 1])
            i = close + 1
            continue

        # No closing delimiter. A dollar followed by a digit is overwhelmingly
        # likely to be currency in prose (e.g., $25); escape it for mdBook/KaTeX.
        if i + 1 < len(segment) and segment[i + 1].isdigit():
            out.append(r'\$')
            i += 1
            continue

        raise PrepError(
            f"{path}:{lineno}: unclosed/ambiguous '$'. "
            "Use $...$ for math, escape a literal dollar as \\$, or place literal text in code."
        )
    return ''.join(out)


def process_file(path: Path):
    raw = path.read_text(encoding='utf-8')
    text = strip_excluded(raw, path)

    lines = text.splitlines(keepends=True)
    out_lines = []
    in_fence = False
    fence_char = None
    fence_len = 0
    display_open = False

    fence_re = re.compile(r'^(\s*)(`{3,}|~{3,})')

    for lineno, line in enumerate(lines, start=1):
        m = fence_re.match(line)
        if m:
            marker = m.group(2)
            ch = marker[0]
            ln = len(marker)
            if not in_fence:
                in_fence = True
                fence_char = ch
                fence_len = ln
            elif ch == fence_char and ln >= fence_len:
                in_fence = False
                fence_char = None
                fence_len = 0
            out_lines.append(line)
            continue

        if in_fence:
            out_lines.append(line)
            continue

        # Track display-math delimiters outside inline code. We keep the math
        # unchanged but require balanced $$ delimiters across the file.
        rebuilt = []
        for is_code, seg in split_inline_code(line):
            if is_code:
                rebuilt.append(seg)
                continue

            # Count unescaped $$ and toggle display state. Then validate/escape
            # single-dollar content without changing valid KaTeX.
            k = 0
            chunks = []
            last = 0
            while k < len(seg):
                if (seg[k:k+2] == '$$' and not is_escaped(seg, k)):
                    # Process prose preceding the display delimiter.
                    chunks.append(process_dollars(seg[last:k], path, lineno))
                    chunks.append('$$')
                    display_open = not display_open
                    k += 2
                    last = k
                else:
                    k += 1
            tail = seg[last:]
            if display_open:
                # Inside display math: leave content untouched until closing $$.
                # This branch is only correct when the current segment follows an opening.
                # If an opening was encountered in this same segment, tail is math body.
                chunks.append(tail)
            else:
                chunks.append(process_dollars(tail, path, lineno))
            rebuilt.append(''.join(chunks))
        out_lines.append(''.join(rebuilt))

    if in_fence:
        raise PrepError(f"{path}: unclosed fenced code block")
    if display_open:
        raise PrepError(f"{path}: unclosed display-math delimiter '$$'")

    new_text = ''.join(out_lines)
    path.write_text(new_text, encoding='utf-8', newline='\n')


errors = []
count = 0
for path in sorted(root.rglob('*.md')):
    try:
        process_file(path)
        count += 1
    except PrepError as exc:
        errors.append(str(exc))

if errors:
    print("ERROR: staged Markdown preparation failed:", file=sys.stderr)
    for err in errors:
        print(f"  - {err}", file=sys.stderr)
    sys.exit(1)

print(f"Prepared {count} Markdown file(s): removed internal blocks and validated dollar-delimited math.")
PY
