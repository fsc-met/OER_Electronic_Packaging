# MET406 Website Build

This directory contains the version-controlled files used to build the mdBook edition of **Electronic Packaging Applications**.

The website layer intentionally preserves the EPA Section 608 OpenEngineeringBooks mdBook visual theme and user-interface behavior. No MET406-specific visual restyling is added. The home button is inserted in the same position as the EPA608 book, immediately before the Print button, using mdBook's native icon styling.

The repository-root Markdown files and numbered chapter directories remain the source of truth. The website build creates a temporary staging tree and then generates static HTML from that copy.

## Directory Layout

```text
website/
├── .gitignore
├── README.md
├── book.toml
├── run.sh
├── helper/
│   ├── clean.sh
│   ├── stage-source.sh
│   ├── prepare-source.sh
│   ├── generate-summary.sh
│   └── build.sh
├── theme/
│   ├── openengineeringbooks.css
│   └── openengineeringbooks.js
├── src/          # Generated staging source; do not edit
└── book/         # Generated static website; do not edit
```

## Normal Build Command

From the repository root:

```bash
./website/run.sh
```

The pipeline is:

```text
clean -> stage source -> prepare Markdown -> generate SUMMARY.md -> build mdBook
```

The generated `website/src/` and `website/book/` directories should not be edited manually.

## Required Tools

- Bash
- Python 3
- mdBook
- mdbook-katex
- GNU `find`
- GNU `sort` with version sorting (`-V`)

## Navigation Behavior

Numbered root directories such as:

```text
01 - Introduction to Electronic Packaging
02 - PCB Structure, Materials, and Fabrication
```

become:

```text
Chapter 1 - Introduction to Electronic Packaging
Chapter 2 - PCB Structure, Materials, and Fabrication
```

Only top-level Markdown files inside each chapter directory are added to `SUMMARY.md`. Markdown figure-specification files stored under chapter `images/` directories therefore do not become sidebar pages.

The setting:

```toml
sidebar-header-nav = false
```

is preserved from the EPA608 build so headings/subheadings inside the current page are not added beneath that page in the left navigation.

## Deployment Path

`book.toml` currently uses:

```toml
site-url = "/epac/"
```

If the final OpenEngineeringBooks deployment path is changed, update only this value as needed.
