# Image Generation and Figure Rules

## 1. Purpose

These rules govern figures, diagrams, schematics, charts, and AI-assisted instructional images created for **{{BOOK_TITLE}}**.

The objective is an original, technically correct, professional engineering-education visual rather than decorative artwork.

## 2. Figure Numbering and Filenames

Use stable hierarchical numbering tied to the section where the figure is introduced.

Example:

```text
3.2.1 - Pump System Curve.png
```

Store figures in the module's `images/` directory.

## 3. Markdown Insertion Block

Preferred insertion style:

```html
<div align="center">
  <img
    src="./images/3.2.1 - Pump System Curve.png"
    width="850"
    alt="Description of the engineering relationships shown in the figure"
  >
  <p><em>Figure 3.2.1 – Pump and system curves showing the operating point at their intersection.</em></p>
</div>
```

The caption and figure number belong in the Markdown/HTML around the image, not as an overall title embedded inside the artwork.

## 4. Figure Specification

Before generating or drawing a complex figure, define:

- instructional purpose;
- objects/components to show;
- required labels;
- required states/values;
- arrow directions and flow relationships;
- spatial relationships;
- color restrictions if any;
- prohibited or misleading elements;
- intended aspect ratio;
- final caption;
- technical sources used for verification.

Use `templates/figure_specification.md`.

## 5. Technical Correctness

The figure must agree with the lesson text and governing engineering principles.

Check, as applicable:

- flow direction;
- thermodynamic state;
- component order;
- high/low pressure relationships;
- force/moment direction;
- electrical polarity/current path;
- dimensions and units;
- axis labels and scales;
- valve positions;
- instrumentation connections;
- sign conventions;
- safety conditions.

A visually attractive but technically incorrect figure must not be published.

## 6. Visual Style

Default style:

- clean engineering-textbook appearance;
- white or light neutral background;
- restrained color palette;
- legible sans-serif labels;
- consistent line weights;
- simple 2D or restrained isometric presentation;
- adequate whitespace;
- no decorative clutter;
- no watermark;
- no embedded overall figure title when an external caption is used.

## 7. Text in Images

Keep text concise. Long explanations belong in the lesson, not the artwork.

After image generation, inspect every label for spelling, numerical, unit, symbol, and alignment errors. AI-generated text inside images must never be assumed correct.

## 8. Copyright and Originality

Reference images may be consulted to understand the technical concept, but a project figure must not substantially reproduce another source's protected visual expression.

Do not:

- trace a textbook figure;
- preserve a source's distinctive layout while merely changing colors;
- reproduce a commercial chart as an image;
- copy labels/annotations that are creative rather than necessary technical facts;
- remove a watermark or attribution mark.

Instead:

- derive the figure from the engineering relationships;
- choose a fresh composition;
- verify the result against authoritative technical sources;
- record provenance in `source_provenance.md`.

## 9. AI-Assisted Figures

AI assistance may be used when appropriate, but every final image requires human technical review.

When the project chooses to disclose AI-assisted figures, use a consistent note such as:

```html
<p><small><strong>AI-generated instructional figure:</strong> It may contain visual inaccuracies. Use the accompanying lesson text and cited authoritative sources to verify technical details.</small></p>
```

Whether this note is required for every figure is a project-level decision; record that decision in `project_rules.md`.

## 10. Accessibility

Alt text should state the instructional meaning of the image, not merely repeat the caption.

For charts and diagrams containing essential numerical information, also provide the important values or conclusions in surrounding text or a table so that the image is not the only source of information.

## 11. Final Figure QA

Before publication check:

- correct figure number and filename;
- correct path;
- appropriate width;
- caption matches the image;
- alt text is meaningful;
- no cropped labels;
- no invented components;
- no impossible connections;
- no spelling errors;
- no inconsistent units;
- no source-like copied composition;
- legible at typical laptop/tablet width;
- acceptable in print output.
