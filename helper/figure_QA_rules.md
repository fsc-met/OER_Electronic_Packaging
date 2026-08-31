# MET406 OER Figure QA and Iterative Revision Rules

This file summarizes the figure-development and QA rules established during the MET406 OER project. It is intended to be used together with the project's general `image_generation_rules.md`.

The purpose is to ensure that technical figures improve **progressively and predictably** during review, without design drift, technical regression, or unnecessary redesign.

---


## 0. Overarching Goal of Figure QA

The purpose of figure QA is not merely to remove obvious mistakes.

The final accepted figure must simultaneously satisfy **three publication requirements**:

1. **The approved suggested content / figure specification**
   - The figure must fulfill the instructional purpose defined in the corresponding figure-spec Markdown file.
   - Required objects, labels, relationships, sequence, emphasis, caption intent, and prohibited elements must all be respected.
   - QA must verify that the final image still teaches exactly what the section intended.

2. **The MET406 OER image-generation rules**
   - The figure must follow the project's established rules for originality, technical correctness, visual style, labeling, caption placement, accessibility, numbering, and consistency.
   - The figure must not violate project-specific rules such as embedding the figure number/caption inside the artwork when the caption belongs in Markdown.

3. **Public-publishing quality**
   - The figure must be suitable for release in a public open textbook.
   - It must be technically defensible, visually coherent, readable at intended mdBook size, professionally styled, free of text defects, and pedagogically clear.
   - It should look like a finished textbook figure, not a draft, prompt artifact, AI-generated poster, or rough concept sketch.

The acceptance standard is therefore:

> **The final figure must match the approved suggested content, comply with the MET406 image-generation rules, and reach publication-quality standards in content, style, and visual execution.**

A figure is **not finished** if it is merely "better than the previous revision."  
QA continues until the remaining issues are resolved and the figure satisfies the full publication standard.

---

## 1. Core Principle

A technical figure is not accepted simply because it looks polished.

A publication-ready MET406 figure must satisfy all of the following:

1. **Technically correct**
2. **Pedagogically useful**
3. **Faithful to the approved suggested content / figure specification**
4. **Consistent with the surrounding section**
5. **Compliant with the MET406 image-generation rules**
6. **Visually clear at mdBook display size**
7. **Original and copyright-safe**
8. **Consistent with the visual style of the OER**
9. **Free of unnecessary or misleading content**
10. **Stable across QA revisions**
11. **Professional in content, style, and visual execution**
12. **Ready for public publication**

QA must focus first on technical and instructional correctness, then on style, readability, consistency, and publication quality. The process ends only when all three are satisfied: **suggested content, image-generation rules, and publication quality**.

---

## 2. Start from an Approved Figure Specification

Before generating a figure, create or review the corresponding figure-spec Markdown file, for example:

`images/1.8.2.md`

The specification should define:

- instructional purpose;
- filename;
- intended display width;
- recommended aspect ratio;
- required objects;
- required labels;
- required technical relationships;
- spatial relationships;
- color/style guidance;
- prohibited or misleading elements;
- technical verification sources;
- final caption;
- alt-text intent;
- final HTML insertion block.

The generated figure must satisfy the specification.

Do not invent additional teaching goals during image generation unless they are first added to the figure specification.

---

## 3. The Surrounding Section Is Part of the Specification

A figure must also be checked against the current section text.

The figure should:

- appear at the point where it supports the discussion;
- use terminology consistent with the section;
- not introduce concepts that the section has not yet explained unless intentionally used as a preview;
- not contradict earlier figures or definitions;
- support the instructional progression of the chapter.

For example, if the section emphasizes:

`wafer -> repeated fabrication cycles -> completed die -> packaging`

the figure must preserve that sequence and must not imply:

`wafer -> PCB`

or

`IC die = PCB`.

---

## 4. No Embedded Figure Number, Caption, or Oversized Overall Title

The public mdBook caption is placed outside the image in the HTML block.

Therefore, the figure artwork should normally **not include**:

- `Figure 1.x.x`;
- the external figure caption;
- a large duplicate overall title.

Panel headings and process-step labels are allowed and often necessary.

Example of an acceptable internal heading:

`4  Selective Processing`

Example of content that should normally remain outside the image:

`Figure 1.8.2 – Many IC structures are created through repeated pattern-transfer cycles...`

The external Markdown/HTML block is the authoritative location for the figure number and caption.

---

## 5. Progressive QA: Freeze the Visual Baseline

Once a promising revision is selected as the baseline, **freeze its visual language**.

The following should remain unchanged unless a specific QA defect requires modification:

- overall layout;
- aspect ratio;
- panel organization;
- typography style;
- color palette;
- illustration style;
- border treatment;
- line-weight style;
- visual hierarchy;
- relative scale of major objects;
- general spacing.

QA revisions should be **targeted edits**, not new designs.

### Correct QA behavior

1. Select a baseline revision.
2. Identify specific defects.
3. Fix only those defects.
4. Compare the revision with the baseline.
5. Confirm that no unrelated content changed.
6. Repeat only for remaining defects.

### Incorrect QA behavior

Do not repeatedly regenerate the entire figure from scratch while asking for "improvements."

That approach can unintentionally change:

- layout;
- colors;
- labels;
- technical meaning;
- object geometry;
- visual style;
- instructional emphasis.

This is considered **design drift**.

---

## 6. Redesign Only When the Concept Is Wrong

A full redesign is justified only when the baseline has a structural problem such as:

- wrong instructional concept;
- fundamentally misleading physical representation;
- unusable layout;
- incorrect information architecture;
- wrong number or order of process stages;
- visual organization that cannot be repaired locally.

If the concept is correct, revisions should remain progressive.

---

## 7. Technical QA Must Be Panel-by-Panel

For multi-panel technical figures, review every panel independently.

For each panel, ask:

### 7.1 Does the drawing represent the stated process or object?

Check that the picture actually shows what the label claims.

Examples:

- deposition should visually add a layer;
- etching should visually remove material;
- doping should modify semiconductor regions rather than look like metal deposition;
- photoresist should be temporary process material;
- wafer probe should show temporary contact while dies remain on the wafer.

### 7.2 Are all connections physically meaningful?

Check:

- traces;
- wires;
- vias;
- contacts;
- device terminals;
- arrows;
- probe points;
- pads.

No floating or impossible connections should remain.

### 7.3 Are material relationships plausible?

Check whether:

- a layer sits on the correct underlying structure;
- doped regions appear inside semiconductor material;
- metal/vias are separated by dielectric;
- passivation sits above the completed interconnect structure;
- PCB features are not incorrectly used inside an IC die.

### 7.4 Are arrows correct?

Verify:

- direction;
- origin;
- endpoint;
- meaning;
- consistency.

An arrow should not point to the wrong layer, object, or process result.

### 7.5 Are labels attached to the correct objects?

Every label should be visually unambiguous.

Avoid:

- crossing leader lines;
- labels pointing between two possible targets;
- text floating too far from its object;
- duplicated labels with inconsistent terminology.

---

## 8. Process Figures Must Distinguish Sequence from Alternatives

When a process figure contains alternatives, do not accidentally present them as sequential mandatory steps.

For example:

`Etch OR Dope / Implant`

means that the patterned resist may be used to guide different selective processes depending on the fabrication step.

The figure should not imply:

`Etch -> Implant`

unless that specific sequence is intentionally being taught.

Use clear terms such as:

- `OR`;
- split branches;
- separate subpanels;
- concise explanatory notes.

---

## 9. Repeated Processes Must Look Repeated

For semiconductor fabrication, students must understand that processes such as:

- deposition;
- lithography;
- etching;
- doping;
- cleaning;
- inspection;
- planarization;

are repeated many times.

Do not create a figure that accidentally looks like one universal one-pass recipe.

A repeated-cycle figure should include a clear return arrow or other loop indication such as:

`Repeat for the next feature or layer`

The loop should reinforce the concept without dominating the figure.

---

## 10. Keep the Figure at the Intended Course Level

MET406 is an applied Engineering Technology course.

Figures should be:

- technically correct;
- physically meaningful;
- simplified enough for first exposure;
- detailed enough to support engineering reasoning.

Avoid unnecessary process-node-level detail unless required by the section.

Do not introduce:

- detailed fab chemistry;
- numerical implant conditions;
- proprietary device geometries;
- excessive mask/process terminology;
- manufacturer-specific equipment;

unless the instructional purpose specifically requires them.

---

## 11. Conceptual Simplification Must Be Explicit When Needed

A simplified technical drawing is acceptable if the simplification does not create a false concept.

Where useful, include a short internal note such as:

`Conceptual view`

or place a clarification in the surrounding text/caption.

Do not use simplification as a reason to draw physically impossible structures.

---

## 12. Avoid Extra Poster Material

Technical figures should remain focused.

Avoid adding unrelated or redundant content such as:

- large introductory paragraphs inside the artwork;
- oversized "Key Points" boxes;
- legends that repeat obvious labels;
- long explanatory notes;
- embedded captions;
- marketing-style slogans;
- decorative icons;
- unrelated later-process content.

If information is already explained clearly in the section text, it usually does not need to be repeated inside the figure.

Use the figure for **visual information that prose alone cannot communicate as effectively**.

---

## 13. Text QA Is Mandatory

Every revision must be checked for:

- spelling;
- grammar;
- capitalization;
- terminology;
- abbreviations;
- symbol consistency;
- unit consistency;
- duplicated text;
- truncated text;
- awkward line breaks.

Image-generation text errors are common and must not be accepted merely because the graphic looks good.

For technical figures, incorrect text is a technical defect.

---

## 14. Use Consistent Terminology

Terminology must match the book.

For example, use one approved term consistently:

- `photoresist`, not alternating randomly with `photo resist`;
- `wafer probe`, if that is the selected course term;
- `die` / `bare die` with the same meaning used in the section;
- `on-die metal interconnect`, not `PCB trace` inside a semiconductor die.

If two terms are valid, choose the one already established in the chapter unless there is a reason to teach both.

---

## 15. Maintain Visual Consistency Across the OER

Figures in the same chapter should feel like they belong to one book.

Prefer:

- white or very light backgrounds;
- restrained engineering colors;
- consistent sans-serif typography;
- readable labels;
- moderate abstraction;
- consistent line weights;
- minimal decorative effects.

Avoid sudden shifts between:

- photorealistic rendering;
- cartoon style;
- poster style;
- highly glossy 3D;
- flat textbook schematic;

unless the instructional purpose requires a different representation.

---

## 16. Check Readability at Final mdBook Size

A figure can look excellent at full generation resolution but fail when displayed at 900 px or smaller.

Before acceptance, check:

- smallest label size;
- line thickness;
- arrow visibility;
- leader-line clarity;
- spacing;
- panel density;
- contrast.

If students must zoom in to understand the basic message, the figure is too dense.

---

## 17. Color Must Not Carry the Meaning Alone

Figures should remain understandable:

- in grayscale;
- for readers with common color-vision differences;
- when printed.

Use:

- labels;
- patterns;
- shapes;
- positioning;
- symbols;

in addition to color.

For pass/fail states, for example, use symbols such as:

- check mark;
- X;
- outlined box;

instead of relying only on green/red.

---

## 18. Originality and Copyright QA

Every figure must use an original composition.

Do not:

- trace textbook figures;
- closely redraw lecture-slide figures;
- reproduce manufacturer graphics;
- preserve distinctive layouts from web sources.

Reference images and books may be used to understand the engineering, but the OER figure must be independently composed.

The QA reviewer should verify both:

1. **technical correctness**; and
2. **visual originality**.

---

## 19. Check for Unintended Manufacturing Implications

Because MET406 emphasizes packaging and manufacturing flow, figures must not accidentally imply incorrect process convergence.

Preserve these separate streams:

### Semiconductor stream

`semiconductor fabrication -> IC die -> IC packaging -> packaged component`

### PCB stream

`PCB materials -> PCB fabrication -> bare PCB`

### Assembly convergence

`packaged/discrete components + bare PCB -> PCB assembly -> PCBA`

Never imply:

- IC fabrication produces a PCB;
- a semiconductor die is a miniature PCB;
- dicing directly produces a board-mountable packaged IC;
- PCB fabrication is part of semiconductor wafer fabrication.

---

## 20. Perform a Final Publication QA

Before marking a figure final, verify that it satisfies the **approved suggested content**, the **MET406 image-generation rules**, and **public-publishing quality**. Then check all of the following.

### Technical

- [ ] Every object is physically meaningful.
- [ ] Every connection is correct.
- [ ] Every arrow is correct.
- [ ] Every label points to the intended object.
- [ ] Process order is correct.
- [ ] Alternatives are not shown as mandatory sequences.
- [ ] No misleading manufacturing implication remains.
- [ ] Simplifications are appropriate for MET406.

### Text

- [ ] No spelling errors.
- [ ] No grammar errors.
- [ ] No incorrect symbols.
- [ ] No inconsistent terminology.
- [ ] No truncated text.
- [ ] No unnecessary wording.

### Visual

- [ ] Layout is balanced.
- [ ] Visual style matches the baseline/OER.
- [ ] Labels are readable at final display size.
- [ ] No overlapping labels or arrows.
- [ ] No unnecessary title or caption inside the image.
- [ ] Colors remain restrained and accessible.
- [ ] Figure is not overcrowded.

### Project integration

- [ ] Filename matches the figure specification.
- [ ] Caption in the section matches the accepted figure.
- [ ] Alt text matches the final content.
- [ ] HTML insertion block uses the correct filename.
- [ ] Figure number remains in the Markdown caption, not inside the artwork.
- [ ] Provenance record can be updated.

---

## 21. Revision File Rules

Every generated revision must use a **different filename**.

Example:

- `1.8.2 - ... - Rev1.png`
- `1.8.2 - ... - Rev2.png`
- `1.8.2 - ... - Rev3 QA.png`
- `1.8.2 - ... - Rev4 Final.png`

Do not overwrite or reuse an earlier filename.

This prevents the system from returning a cached older file and preserves the revision history.

---

## 22. Show the User All Revision Versions

When the user requests iterative figure QA, preserve all meaningful generated revisions.

At the end:

1. provide links to every revision;
2. identify the progression;
3. state which revision is recommended;
4. let the user choose the accepted version.

Do not silently discard earlier revisions.

A revision-history contact sheet may also be created when many versions exist, but it does not replace the individual files.

---

## 23. Recommended QA Workflow

Use this workflow for future MET406 figures.

### Stage A – Figure specification

1. Review the section.
2. Review the figure-spec Markdown.
3. Verify the technical content.
4. Generate the initial draft.

### Stage B – Draft QA

5. Check instructional purpose.
6. Check technical accuracy panel by panel.
7. Check all labels and arrows.
8. Check visual readability.
9. Identify concrete defects.

### Stage C – Progressive revision

10. Freeze the best current baseline.
11. Make only targeted corrections.
12. Preserve style and layout.
13. Save using a new revision filename.
14. Re-QA the revised image.
15. Repeat only if a real defect remains.

### Stage D – Final acceptance

16. Perform the publication checklist.
17. Show all revision versions.
18. Recommend the strongest version.
19. User selects the accepted figure.
20. Copy/rename the accepted figure to the canonical project filename only after acceptance.
21. Update the section, figure spec, and provenance record as needed.

---


## 24. Final Acceptance Gate

A figure may be labeled **Final** only when all of the following are true:

- [ ] The figure fulfills the instructional purpose in the approved suggested-content file.
- [ ] Every required object, relationship, label, and process step is present and correct.
- [ ] No prohibited or misleading element from the figure specification remains.
- [ ] The surrounding section and the figure tell the same technical story.
- [ ] The figure follows the MET406 image-generation rules.
- [ ] No figure number or external caption is embedded inside the artwork unless specifically approved.
- [ ] The visual style is consistent with the OER.
- [ ] The figure is readable at intended mdBook display size.
- [ ] Text, labels, arrows, symbols, and terminology are error-free.
- [ ] The image is original and publication-safe.
- [ ] The visual execution looks professional and finished.
- [ ] No known QA issue remains unresolved.

If any item fails, the figure remains a **draft/revision**, even if it looks visually polished.

> **Final acceptance standard:** content correctness + suggested-content compliance + image-generation-rule compliance + publication-quality style and execution.

---

## 25. Guiding Rule

> **QA means correcting defects while preserving what is already correct. It does not mean redesigning the figure at every iteration.**

For MET406 OER figures, the preferred progression is:

> **Draft -> identify specific issues -> targeted correction -> recheck -> targeted correction -> publication-ready final**

not:

> **Draft -> redesign -> redesign again -> redesign again**

The final figure should look like a refined version of the selected baseline, not like an unrelated new figure.
