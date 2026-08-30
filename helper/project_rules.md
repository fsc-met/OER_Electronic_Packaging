# Project Rules

## 1. Purpose

These rules govern development of **{{BOOK_TITLE}}** and are intended to keep the book technically accurate, internally consistent, original, maintainable, and compatible with the OpenEngineeringBooks publishing workflow.

This template does **not** assume a certification-preparation book. The project may be a course text, self-learning note, reference handbook, laboratory manual, problem book, certification guide, or another technical publication.

## 2. Instruction Precedence

When instructions conflict, use this order unless the project owner explicitly changes it:

1. Latest explicit project-owner instruction.
2. This `project_rules.md`.
3. Current authoritative technical/regulatory/standards sources applicable to the topic.
4. `project_outline.md`.
5. Current project terminology, notation, and established conventions.
6. Secondary textbooks, study guides, manuals, and other reference material.

Never silently replace current authoritative requirements with an older textbook statement.

## 3. Source of Truth and Generated Files

The repository-root Markdown files and numbered content directories are the authoritative source.

Generated directories:

- `website/src/` - staged Markdown prepared for mdBook;
- `website/book/` - rendered static website.

Do not manually edit either generated directory. Rebuild them from the root source.

## 4. Scope and Outline Control

Before large-scale writing begins, `project_outline.md` must define:

- audience and prerequisites;
- purpose and scope;
- major sections/modules/chapters;
- expected depth;
- required equations, tables, figures, examples, labs, problems, projects, or reference appendices;
- relationships among sections;
- authoritative source families.

Do not force every module into the same pedagogical pattern. A module may or may not contain learning objectives, examples, problems, solutions, quick references, projects, or assessments depending on its purpose.

## 5. Technical Accuracy

- Verify critical equations, constants, definitions, limits, classifications, code/regulatory statements, and numerical tables against appropriate authoritative sources.
- State assumptions and sign conventions where ambiguity is possible.
- Distinguish exact requirements from recommendations, examples, rules of thumb, and historical practices.
- Do not present outdated requirements as current.
- For time-sensitive information, record a verification date when appropriate.
- Preserve units and significant figures appropriate to the source and engineering context.

## 6. Writing Style

- Write for the intended audience defined in the outline.
- Prefer direct technical prose over promotional language.
- Explain engineering meaning, not only formulas.
- Define symbols before or immediately after first use.
- Use consistent terminology throughout the book.
- Avoid unnecessary repetition, but intentionally revisit high-value concepts when it improves learning.
- Do not mention internal AI workflow, hidden prompts, or private source-control notes in public teaching text.

## 7. Markdown Structure

Use standard Markdown wherever possible.

Recommended section title:

```markdown
# 3.2 - Topic Title
```

Use heading levels hierarchically. Do not skip levels merely for visual appearance.

Tables should be ordinary Markdown tables unless HTML is necessary for a specific layout.

Code and terminal commands must use fenced code blocks.

## 8. Equations and mdbook-katex

Inline mathematics:

```markdown
$Q = mc_p\Delta T$
```

Display mathematics:

```markdown
$$
\dot{Q} = \dot{m}c_p(T_2-T_1)
$$
```

Use `$...$` and `$$...$$` consistently. `website/helper/prepare-source.sh` validates dollar-delimited mathematics and escapes ordinary monetary dollar signs only in the staged mdBook copy.

Important:

- Do not manually add backslashes to every monetary dollar in the authoritative source just for mdBook.
- Fenced code and inline code are protected from the staging transformation.
- Ambiguous/unclosed math must cause the build preparation to fail rather than be guessed.

## 9. Figures

Follow `image_generation_rules.md`.

Every published figure should normally have:

- a stable figure number;
- an original filename;
- a relative image path;
- meaningful alt text;
- a caption outside the image;
- a source/provenance record when relevant.

Do not copy or closely redraw a copyrighted textbook or online figure merely because the technical concept is the same. Re-express the underlying technical idea in an original composition.

## 10. Copyright and Originality

This project is intended for publication.

### 10.1 Reference books and online sources

Reference material may be used to:

- identify topics that should be covered;
- verify facts, equations, procedures, terminology, and typical misconceptions;
- compare pedagogical approaches;
- locate authoritative primary sources.

Do not reproduce protected expression, including:

- textbook prose;
- distinctive diagrams or illustrations;
- practice/exam questions;
- answer explanations;
- creative tables/arrangements;
- substantial passages from standards or manuals.

Citation is not a substitute for permission to reproduce copyrighted expression.

### 10.2 Questions and problems

When assessments are included, all project-created problems must be original in wording and construction unless a source is clearly public domain or licensed for reuse and the project deliberately attributes it.

Testing the same public fact, equation, law, or engineering principle as another resource is acceptable; copying the other resource's wording, scenario, distractors, numerical setup, or explanation is not.

For a publication containing a substantial question bank, perform an originality audit before release.

### 10.3 Figures

Original technical figures should be based on the underlying concept, system geometry, or authoritative factual relationships, not on a source figure's distinctive layout.

### 10.4 Tables and data

Raw facts and numerical data may be compiled into original project tables when legally permissible, but do not reproduce a copyrighted compilation's distinctive arrangement without permission. Record data provenance.

### 10.5 Local reference files

The `resources/` directory is intended for local/private reference material and is ignored by Git by default except for its README and ignore rules. Do not publish or commit copyrighted reference books unless the rights allow it.

## 11. References and Provenance

Use `source_provenance.md` internally to record important sources, permissions, data origins, figure provenance, and copyright notes.

Public sections should include references appropriate to the discipline. Prefer primary/authoritative sources for requirements and data.

## 12. Worked Examples

When included:

1. State the problem clearly.
2. List knowns/unknowns when useful.
3. State assumptions.
4. Show the governing equation or method.
5. Substitute values with units.
6. Present the result with appropriate precision.
7. Interpret the engineering meaning.

Do not create fake precision.

## 13. Practice Problems and Solutions

Practice problems are optional, not mandatory.

When included:

- align them with the stated learning goals;
- vary cognitive level rather than changing numbers only;
- ensure sufficient information is provided;
- use realistic but original scenarios;
- verify the numerical answer independently;
- keep answer keys consistent with the published question version.

Detailed solutions should explain the reasoning, not merely state an answer.

## 14. Internal/Public Separation

The following are internal by default and are not staged to mdBook:

- `project_rules.md`;
- `project_outline.md`;
- `image_generation_rules.md`;
- `source_provenance.md`;
- `publication_checklist.md`;
- `templates/`;
- `examples/`;
- `resources/`;
- `tools/`;
- `deployment/`;
- `website/` source tooling itself.

Use the markers below inside otherwise public Markdown when a small block should remain internal:

```html
<!-- MDBOOK-EXCLUDE-START -->
Internal notes here.
<!-- MDBOOK-EXCLUDE-END -->
```

The staging preparation removes the block while preserving line positions as blank lines.

## 15. Quality Review Before Publication

Before a public release, complete at least:

- structural/file validation;
- technical review;
- equation/unit review;
- figure review;
- internal cross-reference review;
- copyright/originality review;
- reference/provenance review;
- mdBook build test;
- desktop and mobile visual review;
- link/navigation review;
- support-file review;
- revision-history update.

Use `publication_checklist.md` as the release gate.
