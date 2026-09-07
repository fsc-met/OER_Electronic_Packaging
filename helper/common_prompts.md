# Common Reusable Prompts — MET406 EPAC OER Project

These prompts are intended to be reused throughout the MET406 EPAC OER project. Replace the placeholder section or figure numbers before use.

---

## 1. Draft or Revise a Book Section

```text
Work on Section x.xx Markdown file.

Follow the current authoritative EPAC project rules, approved project outline, surrounding book sections, primary MET406 instructional materials, and approved reference hierarchy. Match the established writing style, structure, terminology, equation formatting, figure-placeholder format, and public/internal-content conventions used in the existing book.

Develop the section at the appropriate Engineering Technology level: technically accurate, applied, self-study capable, and concise enough to remain readable. Do not turn the section into material that belongs in a later chapter.

Perform multiple QA cycles, including:
- outline and scope alignment;
- technical accuracy and terminology;
- consistency with surrounding sections;
- equation, unit, and numerical checks where applicable;
- pedagogical clarity for MET students;
- figure-coverage review;
- redundancy and chapter-boundary review;
- Markdown/mdBook/KaTeX compatibility;
- public-book voice and final read-through.

Pay particular attention to figure planning. Include enough figures for MET students to understand the topic, but do not add redundant or decorative figures. Every planned figure must have the complete public HTML image/caption placeholder in the section Markdown using the canonical `./images/...png` path.

Preserve every meaningful revision using a different filename. Do not overwrite earlier revisions. Identify the strongest QA-reviewed candidate, but do not call it canonical/final until I explicitly accept it.

Provide all revision files for download, along with a concise QA record.
```

---

## 2. Create Suggested-Content Files for All Planned Figures in a Section

```text
Create suggested-content Markdown files for every planned figure in Section x.xx.

Use the current section text, approved outline, surrounding sections, project image-generation rules, and figure-QA rules as the basis.

For each figure specification, include at minimum:
- figure title for authoring/reference only;
- instructional purpose;
- central teaching message;
- canonical PNG filename;
- intended mdBook display width;
- recommended canvas size/aspect ratio;
- overall layout;
- required objects and labels;
- required technical relationships;
- spatial/geometry requirements;
- color/style guidance;
- scope boundaries;
- technical-verification basis;
- originality/copyright requirements;
- generation guidance;
- editable SVG requirements;
- final public HTML insertion block;
- preliminary cyclic QA checklist;
- provenance action after acceptance.

Ensure every figure has one clear instructional role and does not duplicate another figure unnecessarily.

Run QA on every suggested-content file for:
- section alignment;
- technical correctness;
- pedagogical usefulness;
- consistency with the project figure rules;
- filename/HTML-block consistency;
- mdBook compatibility;
- chapter-boundary control.

Provide each suggested-content `.md` file separately for download, plus a combined ZIP package and a QA record.
```

---

## 3. Generate and QA a Planned Figure

```text
Generate Figure x.xx.x based on its approved suggested-content Markdown file and the exact context of the section where the figure is placed.

Strictly follow the EPAC image-generation rules and figure-QA rules.

The figure must be:
- technically correct;
- simplistic and textbook-like;
- visually consistent with the existing EPAC figures;
- clear at the intended mdBook display size;
- original and copyright-safe;
- free of unnecessary decorative elements;
- free of an embedded external figure number, final caption, or oversized duplicate title.

Run cyclic QA after each revision. Once a promising visual baseline is established, freeze the overall visual language and make targeted corrections only. Do not redesign correct portions unless the underlying concept is wrong.

QA should include:
- compliance with the approved suggested-content specification;
- technical correctness of every panel/object/arrow/label;
- consistency with the section text;
- terminology and text accuracy;
- layout, spacing, and leader-line checks;
- reduced-size readability;
- clipping/overlap checks;
- originality/copyright review;
- final publication-quality review.

Preserve every meaningful revision with a different filename and provide all revisions for download. Identify the strongest QA-reviewed candidate, but do not call it canonical/final until I explicitly accept it.

Also provide a true editable SVG version of the best candidate for possible manual modification. The SVG must use editable text and vector objects rather than embedding the raster image as the primary artwork.

The SVG must have an **explicit white background**. Do not rely on the SVG viewer's default canvas color or transparency. Add a full-canvas white rectangle as the first visible drawing element, for example:

```svg
<rect x="0" y="0" width="100%" height="100%" fill="#ffffff"/>
```

This background rectangle must cover the entire SVG `viewBox`, remain behind all figure content, and be preserved in the final editable SVG so the figure renders with a white background consistently in browsers, mdBook, Inkscape, PDF conversion, and raster exports.

Render-check the final SVG at:
- native size;
- 1600 px width;
- 1200 px width;
- 900 px mdBook width.

Feel free to adjust the SVG canvas resolution and aspect ratio as needed so that all content is properly positioned with safe margins and no clipping.

For normal engineering arrows and dimension arrows, use:

`markerUnits="userSpaceOnUse"`

unless there is a specific technical reason for the arrowhead to scale with line thickness.

If image generation produces text or geometry defects that cannot be corrected reliably, a controlled vector rebuild is acceptable, provided that:
- the successful visual concept is preserved;
- earlier revisions are retained;
- the rebuild remains faithful to the approved suggested-content specification;
- no unrelated redesign is introduced.

Provide:
- every revision PNG/SVG that represents a meaningful QA stage;
- the best-candidate PNG;
- the best-candidate editable SVG;
- a figure QA record;
- a ZIP package containing the complete revision set.
```

---

## Placeholder Guide

- `x.xx` = section number, such as `2.10`
- `x.xx.x` = figure number, such as `2.10.2`

Before reusing a prompt, replace the placeholder with the actual section or figure number.

---

## QA Notes for These Reusable Prompts

The three prompts above were reviewed for:

- preservation of the original intent;
- grammar and clarity;
- consistency with the current EPAC project workflow;
- explicit revision preservation;
- explicit canonical-acceptance control;
- figure sufficiency without redundancy;
- suggested-content specification completeness;
- cyclic QA and targeted-revision behavior;
- editable SVG requirements;
- native and reduced-size SVG render checks;
- `markerUnits="userSpaceOnUse"` for controlled arrowhead sizing;
- explicit full-canvas white SVG background rather than relying on viewer transparency/default canvas color;
- compatibility with the current mdBook/KaTeX and figure-placeholder conventions.

**Prompt-set QA result: PASS**
