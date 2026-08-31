# MET406 OER Section Markdown QA Rules

## Purpose

This file summarizes the quality-assurance rules used when drafting, reviewing, and revising MET406 OER section Markdown files.

These rules apply to **section `.md` files**, not to figure-generation QA. Figure QA is handled separately.

The goal is to ensure that each section is technically correct, aligned with the approved outline, appropriate for the MET406 course level, compatible with mdBook, consistent with nearby sections, properly integrated with figures, and suitable for public OER publication.

## 1. Reference Priority

Use sources in this order.

### First reference

Use the **MET406 lecture notes/slides** as the primary source for:

- course scope;
- terminology;
- teaching sequence;
- level of detail;
- examples emphasized in the course.

### Second reference

Use the supplied packaging and PCB reference books for technical verification, terminology cross-check, process clarification, and avoiding oversimplification or technical errors.

Examples include:

- Rao R. Tummala packaging references;
- Clyde Coombs, *Printed Circuits Handbook*;
- other approved project reference books.

### Additional verification

Use reliable online technical sources only when needed for terminology updates, current industry terminology, manufacturer/package-family confirmation, or resolving ambiguity not addressed by the lecture notes or books.

Do not let outside sources replace the course framing.

## 2. Outline Alignment

Before drafting a section:

1. identify the exact section title from the approved Chapter outline;
2. identify the section's instructional purpose;
3. identify the required topics;
4. identify topics intentionally deferred to later chapters;
5. identify the transition from the previous section;
6. identify the transition to the next section.

A section should not introduce major topics that belong elsewhere unless a short recognition-level preview is needed.

## 3. Preserve the Chapter 1 Teaching Progression

Chapter 1 uses a manufacturing and packaging progression.

Preserve distinctions such as:

- semiconductor fabrication -> IC die;
- IC packaging -> packaged component;
- PCB fabrication -> bare PCB;
- PCB assembly -> PCBA;
- system integration -> finished electronic product.

Do not collapse different manufacturing streams into one process.

When multiple streams converge, show clearly **where** they converge.

## 4. Scope Control

Keep each section at the intended course level.

For Chapter 1, the usual level is:

- recognition;
- conceptual understanding;
- manufacturing awareness;
- engineering implications.

Do not drift into detailed design or process optimization that belongs in later chapters.

Examples usually deferred include detailed PCB stack-up design, detailed DFM rules, stencil design, solder-paste rheology, detailed reflow profiles, IPC acceptance criteria, advanced thermal modeling, detailed reliability modeling, and advanced-packaging process recipes.

A short preview may be included if it helps students understand why the topic matters.

## 5. Section Structure

A typical section should contain:

1. a short opening transition from the previous section;
2. a clear statement of the new concept;
3. logically ordered subsections;
4. figures placed near the concept they support;
5. engineering perspective / key distinction callouts where useful;
6. a concise section takeaway;
7. a transition to the next section;
8. authoring / verification notes inside the mdBook exclusion block.

Avoid excessive nested subsections.

## 6. Technical Terminology QA

Check every important technical term for consistency.

Examples:

- die vs wafer vs packaged IC;
- bare PCB vs PCBA;
- package family vs mounting method;
- SMT vs THT;
- wire bond vs flip-chip;
- CSP vs WLCSP;
- plated through hole;
- solder joint;
- inspection vs electrical/functional test.

If two similar terms can be confused, explicitly distinguish them.

Do not use one term in a way that contradicts another subsection.

## 7. Classification QA

Check that categories are not mixed.

Examples:

- **DIP, SOIC, QFP, QFN, BGA** = package families;
- **CSP** = mainly a size/classification concept;
- **SMT, THT** = board-level assembly approaches;
- **wire bond, flip-chip** = die-to-package interconnection methods;
- **wafer-level packaging** = a broader packaging approach.

When a table compares categories, make sure the table headings accurately describe all entries.

## 8. Manufacturing-Sequence QA

For process sections:

- verify that the sequence is physically reasonable;
- identify optional or package-dependent steps;
- show alternatives as branches, not mandatory sequential steps;
- use wording such as `where required`, `commonly`, or `depending on package technology` when appropriate;
- avoid implying one universal manufacturing recipe.

If a process differs by technology, state that clearly.

## 9. Physical-Relationship QA

Check whether the prose correctly describes physical relationships.

Examples:

- SMT terminals remain at the PCB surface;
- THT leads pass through plated through holes;
- flip-chip die is normally face-down;
- wire-bond die is normally face-up;
- a packaged IC is mounted onto a separately fabricated PCB;
- a PCBA contains the bare PCB plus assembled components.

Avoid wording that could imply physically incorrect relationships.

## 10. Engineering-Implication QA

Where useful, connect the concept to practical engineering consequences.

Possible categories:

- electrical performance;
- thermal behavior;
- mechanical support;
- reliability;
- manufacturability;
- inspection;
- test;
- rework;
- routing;
- board area.

Keep these implications concise and relevant to the section.

## 11. Avoid Overstatement

Use qualified wording when behavior is technology-dependent.

Prefer:

- `can`;
- `may`;
- `commonly`;
- `often`;
- `where required`;
- `depending on package technology`.

Avoid universal statements unless they are truly universal.

Examples:

- underfill is not required in every flip-chip package;
- burn-in is not required for every product;
- a PCB can participate in heat spreading, but not equally in every design;
- not every THT component is hand soldered.

## 12. Writing Style

Public prose should be concise, direct, technically precise, student-friendly, and suitable for undergraduate MET students.

Prefer short paragraphs and clear lists.

Avoid excessive jargon, unnecessary historical detail, overlong definitions, marketing language, copied textbook phrasing, unsupported claims, and unnecessary em dashes.

Use bold emphasis selectively for important terms.

## 13. Redundancy QA

Check the section against nearby sections.

Avoid repeating large blocks of content already explained.

Repeat only when needed to reinforce a critical distinction, create a transition, or connect a new topic to prior knowledge.

If a later chapter will explain a topic in detail, mention that and keep the current treatment brief.

## 14. Figure Integration QA

For each public figure:

- place it immediately after or near the concept it supports;
- use the approved image filename;
- use width `900` unless another width is intentionally selected;
- include accurate alt text;
- include the approved caption;
- ensure the prose and figure use consistent terminology.

Use the standard HTML block:

```html
<div align="center">
  <img
    src="./images/FILENAME.png"
    width="900"
    alt="Accurate descriptive alt text."
  >
  <p><em>Figure X.X.X – Caption text.</em></p>
</div>
```

Do not rely on figure comments alone. The actual HTML image block must be present in the section Markdown.

## 15. Figure/Prose Consistency QA

After a figure is finalized, recheck the section prose.

Confirm that:

- figure labels match the section terminology;
- captions match the accepted figure;
- alt text describes the accepted figure;
- the figure does not imply something contradicted by the text;
- the text does not describe features no longer present in the accepted figure.

If the figure changes materially, update the section file.

## 16. Section Takeaway QA

The `Section Takeaway` should summarize only the major ideas, avoid introducing new concepts, reinforce the section's main distinctions, and prepare the transition to the next section.

The takeaway should be shorter than the main section.

## 17. Transition QA

The final paragraph should make the Chapter progression explicit.

A good transition should state:

- what has just been completed;
- what physical/manufacturing level comes next;
- why the next section follows logically.

Avoid abrupt topic changes.

## 18. Authoring Notes

Use:

```html
<!-- MDBOOK-EXCLUDE-START -->
...
<!-- MDBOOK-EXCLUDE-END -->
```

for internal authoring notes that should not appear in the public book.

Typical authoring-note sections:

- section purpose;
- scope control;
- technical distinctions to preserve;
- public figures;
- verification sources;
- final QA checklist;
- provenance action.

Do not leave outdated draft history in the canonical section file unless it has continuing authoring value.

## 19. Final QA Checklist

Before accepting a section, verify:

- [ ] section title matches the approved outline;
- [ ] filename matches the approved naming pattern;
- [ ] opening transition from the previous section is clear;
- [ ] all required outline topics are covered;
- [ ] deferred topics remain deferred;
- [ ] technical terminology is consistent;
- [ ] classifications are correct;
- [ ] manufacturing sequences are physically reasonable;
- [ ] alternatives are shown as alternatives;
- [ ] qualified wording is used where needed;
- [ ] no major technical overstatement remains;
- [ ] prose matches MET406 course level;
- [ ] redundant content has been minimized;
- [ ] figures are placed correctly;
- [ ] figure filenames are correct;
- [ ] captions match accepted figures;
- [ ] alt text matches accepted figures;
- [ ] Markdown/HTML is mdBook-compatible;
- [ ] section takeaway introduces no new material;
- [ ] transition to the next section is explicit;
- [ ] authoring notes are current;
- [ ] provenance action is identified.

## 20. Revision Workflow

Use a cyclic revision process.

### Step 1 - Draft

Create a first section draft based on the outline, lecture notes, approved references, and nearby sections.

### Step 2 - Technical QA

Review terminology, classifications, manufacturing sequence, physical relationships, and scope.

### Step 3 - Pedagogical QA

Review teaching sequence, clarity, redundancy, transitions, and course level.

### Step 4 - Figure integration QA

Review figure placement, captions, alt text, and terminology consistency.

### Step 5 - Final publication QA

Check filename, mdBook compatibility, authoring notes, takeaway, and next-section transition.

Avoid unnecessary rewrites after the structure is working.

Prefer **targeted corrections** over broad redesign.

## 21. Revision File Naming

Never overwrite a reviewed revision when a new revision is requested.

Use a different filename for each meaningful revision.

Example:

- `1.10 - From Components and Bare PCB to PCBA - Rev1 Draft.md`
- `1.10 - From Components and Bare PCB to PCBA - Rev2 QA Final.md`
- `1.10 - From Components and Bare PCB to PCBA - Rev3 Publication Ready.md`

This avoids cached-file confusion and preserves revision history.

Once a version is accepted, it may be copied into the canonical project filename.

## 22. Acceptance Rule

A section is ready for acceptance only when all three conditions are satisfied:

1. **Outline compliance**  
   The section covers the approved instructional content and stays within scope.

2. **Technical correctness**  
   Terminology, classification, manufacturing sequence, and physical relationships are correct.

3. **Publication quality**  
   Writing, figures, captions, alt text, Markdown structure, transitions, and authoring notes are clean and consistent.

If one of these fails, revise the section before freezing it.

## Recommended Use

Use this file as a checklist when creating Sections 1.11 and later.

For every new section:

> **outline -> draft -> technical QA -> pedagogical QA -> figure integration QA -> publication QA -> accepted revision**
