# Common Reusable Prompts — MET406 EPAC OER Project

These prompts are intended to be reused throughout the MET406 EPAC OER project. Replace the placeholder section or figure numbers before use.

---

## 1. Draft or Revise a Book Section

```text
Work on Section x.xx Markdown file.

Follow the current authoritative EPAC project rules, approved project outline, surrounding book sections, primary MET406 instructional materials, and approved reference hierarchy. Match the established writing style, structure, terminology, equation formatting, figure-placeholder format, and public/internal-content conventions used in the existing book.

Before drafting, extract the important teaching inventory from the primary instructional material: required concepts, sequence, representative numbers/ranges, examples, good/bad comparisons, practical rules/checklists, and visual concepts. Verify important technical claims independently. Preserve useful concrete teaching content when it is correct; qualify process-dependent values rather than removing them merely because they vary; and correct inaccurate or outdated items while preserving the original teaching purpose and MET-level accessibility.

Develop the section at the appropriate Engineering Technology level: technically accurate, applied, self-study capable, and concise enough to remain readable. Do not turn the section into material that belongs in a later chapter. Do not defer so much concrete content that the current section becomes mainly descriptive.

Special cases:
- for an `X.0 - Chapter Overview`, keep the page concise and chapter-level, and avoid repeating the detailed teaching of Section `X.1`;
- for a Practice Problem Keys / solution section, keep the solution content inside the project's `INSTRUCTOR-ONLY` protection markers while keeping the corresponding practice problems public.

Perform multiple QA cycles, including:
- outline and scope alignment;
- primary-instructional-material fidelity and teaching-inventory coverage;
- technical verification of instructional claims, diagrams, and representative values;
- technical accuracy and terminology;
- consistency with surrounding sections;
- equation, unit, and numerical checks where applicable;
- concrete-content sufficiency: enough verified numbers/ranges, examples, comparisons, figures, or applied decisions for the topic;
- pedagogical clarity for MET students;
- figure-coverage review based on distinct visual teaching concepts, not on minimizing figure count;
- redundancy and chapter-boundary review;
- Markdown/mdBook/KaTeX compatibility;
- instructor-protection marker validation where applicable;
- public-book voice and final read-through;
- final instructional-fidelity check: the finished OER section should provide at least the intended practical understanding, engineering scale, examples, and visual support of the primary instructional material after technical corrections.

Pay particular attention to figure planning. Plan figures from the **distinct visual concepts students need to understand**, not from a goal of minimizing figure count. Include enough figures for MET students to understand the topic, but do not add figures with duplicate instructional roles or purely decorative content. If several different physical relationships genuinely need separate visuals, keep them separate rather than forcing them into one overloaded figure. Every planned figure must have the complete public HTML image/caption placeholder in the section Markdown using the canonical `./images/...png` path.

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

## SVG-specific layout and canvas rules

The SVG must not be treated as successful merely because it is editable and renders without technical errors. The **visual layout itself** must also be organized, clean, and publication-ready.

For SVG figures, enforce the following additional rules:

- The SVG layout must be visually organized, with adequate spacing between boxes, panels, arrows, labels, and callouts.
- No text may extend outside its intended box, panel, callout region, or safe margin.
- No boxes, diamonds, panels, or major objects may overlap unless overlap is intentionally part of the technical meaning.
- Arrows and leader lines must not pass through unrelated text or objects.
- Arrowheads, leaders, and connectors must terminate clearly at their intended targets.
- Multi-line text must be wrapped intentionally and checked visually, not merely inserted as separate text lines by coordinate.
- After any change to wording, font size, box size, object position, or arrow routing, the layout QA must be rerun because a technically valid SVG can still become visually disorganized.
- A successful SVG render is **not** evidence that the layout is acceptable. Rendered outputs must be visually inspected.

### Flexible aspect ratio / content-first canvas rule

For SVG figures, the recommended canvas size or aspect ratio in the suggested-content file is only an initial starting point. It is **not fixed**.

Use a **content-first canvas rule**:
- The content determines the canvas.
- Do not crowd, compress, or awkwardly scale content merely to preserve a planned aspect ratio.
- Freely adjust the SVG `width`, `height`, and `viewBox` aspect ratio whenever needed to achieve clear organization, safe margins, clean arrow routing, and readable labels.
- If the figure needs more vertical space, increase the canvas height.
- If the figure needs more horizontal separation, increase the canvas width.
- After the content is laid out correctly, crop or expand the SVG canvas around the finished composition with safe margins.

### Preferred correction order for crowded SVG layouts

If an SVG layout becomes crowded or disorganized, use the following correction priority instead of forcing the content to fit the original canvas:
- first, expand the canvas or change the aspect ratio;
- second, increase spacing between panels/boxes and reroute arrows or leaders;
- third, resize boxes or rewrap text;
- only after those steps, make modest text-size adjustments if still needed.

Do not solve layout crowding mainly by shrinking text to the smallest possible size.
Maintain comfortable internal padding inside boxes and panels.

The SVG must have an **explicit white background**. Do not rely on the SVG viewer's default canvas color or transparency. Add a full-canvas white rectangle as the first visible drawing element, for example:

```svg
<rect x="0" y="0" width="100%" height="100%" fill="#ffffff"/>
```

This background rectangle must cover the entire SVG `viewBox`, remain behind all figure content, and be preserved in the final editable SVG so the figure renders with a white background consistently in browsers, mdBook, Inkscape, PDF conversion, and raster exports.

## Required SVG layout QA gate

Before a candidate SVG can be considered the strongest QA-reviewed version, it must pass a dedicated **visual geometry/layout QA gate** in addition to the usual technical and content QA.

This SVG layout QA must explicitly verify that:
- every text block fits comfortably within its intended region with visible padding;
- no text touches or crosses a bounding border;
- no important objects overlap unintentionally;
- branch arrows and leaders are visually unambiguous;
- panels and boxes are aligned cleanly enough for textbook presentation;
- margins around the figure content are balanced and safe;
- internal padding inside boxes and panels is sufficient for comfortable reading;
- the composition remains readable at native size, 1600 px, 1200 px, and 900 px mdBook width;
- the SVG source remains editable after the layout corrections.

If any of these checks fail, correct the layout and rerun the QA cycle before presenting the result.

## Render-check requirements

Render-check the final SVG at:
- native size;
- 1600 px width;
- 1200 px width;
- 900 px mdBook width.

Do not just generate these renders. Visually inspect them for layout defects such as:
- overlap;
- text escaping boxes;
- crowded callouts;
- arrow/leader ambiguity;
- unbalanced spacing;
- clipping;
- scale-dependent readability problems.

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
