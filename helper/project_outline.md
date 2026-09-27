# Electronic Packaging Applications — Book Outline

> **Book-structure revision note:** The former single Chapter 4 assembly chapter is now split into two applied manufacturing chapters:
>
> - **Chapter 4 - PCB Assembly Processes and Equipment**
> - **Chapter 5 - PCB Assembly Quality, Test, and Manufacturing Engineering**
>
> This split gives PCB assembly the depth appropriate for the intended Engineering Technology audience and allows the book to teach both **how PCBAs are built** and **how assembly production is inspected, tested, controlled, troubleshot, and improved**. The former downstream Chapters 5-8 therefore shift to Chapters **6-9**:
>
> - Chapter 6 - Signal and Power Integrity;
> - Chapter 7 - Thermal Management;
> - Chapter 8 - Mechanical and Thermomechanical Design;
> - Chapter 9 - Reliability, Qualification, and Failure Analysis.
>
> Chapters 2 and 3 remain technically unchanged except for downstream chapter-number references and boundary notes affected by this book-structure revision.
>
> **Chapter-overview convention:** Chapters 1-5 use a numbered `X.0 - Chapter Overview` page before the first instructional section. The overview gives a concise chapter purpose, coverage map, learning objectives, and chapter path. The `X.1` section should begin directly with its own instructional topic and should not repeat the chapter-level introduction or learning objectives.
>
> **Practice-key publishing convention:** Chapter practice problems remain public. The corresponding `Practice Problem Keys` sections remain in the chapter structure, but their solution content is published as instructor-protected content using the project's `INSTRUCTOR-ONLY` markers and access-key workflow.


## Chapter 2 - PCB Structure, Materials, and Fabrication

> **Revision note:** This Chapter 2 plan supersedes the Chapter 2 block in `project_outline(7).md`. The Chapter 3 block added below reflects the latest approved Chapter 3 outline and QA review. Other chapters and book-level rules remain unchanged.

### Chapter Purpose

Use the completed Chapter 1 manufacturing pathway as the transition into the **bare PCB**. Chapter 1 established where the PCB fits in the complete electronic product; Chapter 2 now zooms into the separate PCB-manufacturing stream:

> **PCB materials -> PCB fabrication -> bare PCB**

The chapter should present the bare PCB as a **laminated electrical, mechanical, thermal, and manufacturing structure** and explain how its materials, geometry, stack-up, fabrication process, and quality affect later assembly, electrical performance, thermal behavior, mechanical behavior, and reliability.

The chapter should prepare readers to answer a practical industry question:

> **What is the bare PCB physically, how was it made, what controls its behavior, what can go wrong, and how should engineering information be communicated to the board fabricator?**

The chapter should not become a PCB-layout textbook, a fabrication-chemistry textbook, a detailed HDI/flex design course, or an early substitute for Chapters 3, 4, 5, 6, 7, 8, or 9.

### Learning Objectives

After completing the chapter, readers should be able to:

- explain how Chapter 2 connects to the Chapter 1 manufacturing pathway;
- describe the bare PCB as an electrical interconnection platform, laminated composite, mechanical support structure, thermal path, manufacturing product, and reliability-critical structure;
- identify the major layers and physical features of a PCB;
- distinguish common PCB types and recognize the purpose of a multilayer stack-up;
- explain how material properties such as \(T_g\), \(T_d\), CTE, modulus, moisture absorption, \(D_k\), \(D_f\), thermal conductivity, and copper thickness affect product behavior;
- recognize common copper features and explain why they exist;
- distinguish plated component holes, electrical vias, blind/buried vias, microvias, thermal vias, and non-plated mechanical/tooling holes;
- explain why common surface finishes are used and identify major tradeoffs among them;
- describe the major functional steps used to fabricate a rigid multilayer PCB;
- distinguish physical process limits, fabricator capability, preferred capability, design rules, standards requirements, and customer/product requirements;
- explain how PCB thickness, stack-up symmetry, copper balance, and thermal exposure affect stiffness and warpage;
- explain basic PCB heat-spreading and through-thickness heat-flow behavior;
- recognize representative **bare-board** fabrication/material defects and connect them to likely structures or process stages;
- interpret basic PCB manufacturing documentation and understand what a fabricator needs from the engineering organization;
- recognize the roles of major PCB standards families without reproducing proprietary acceptance criteria.

### 2.0 Chapter Overview

Provide a concise chapter opener that:

- connects the Chapter 1 manufacturing pathway to the **bare PCB**;
- summarizes what Chapter 2 covers and why it matters;
- contains the Chapter 2 learning objectives;
- gives the chapter path from PCB structure/materials through fabrication, behavior, defects, and manufacturing communication;
- does not duplicate the detailed teaching content of Section 2.1.

### 2.1 From Chapter 1 to the Bare PCB: What a PCB Really Is

Begin directly from the Chapter 2 overview and focus on the bare-PCB manufacturing boundary and physical meaning of the PCB.

- Briefly retain the manufacturing distinction:
  - `PCB materials -> PCB fabrication -> bare PCB`.
- Distinguish again, briefly and clearly:
  - semiconductor fabrication;
  - IC packaging;
  - PCB fabrication;
  - PCB assembly.
- A bare PCB is more than a drawing of copper traces.
- A PCB is simultaneously:
  - an electrical interconnection platform;
  - a laminated composite structure;
  - a mechanical support structure;
  - a heat-spreading/conduction path;
  - a manufactured product with tolerances and process limits;
  - a reliability-critical set of materials and interfaces.
- Use Chapter 1 only as orientation; avoid repeating the broader packaging-function discussion already completed there.

**Transition goal:** Chapter 1 provided the product-level map; Chapter 2 now zooms into the physical structure and manufacture of the bare PCB.

### 2.2 Physical Anatomy of a PCB

Introduce the physical cross-section first so later material and process discussions have a concrete reference.

- Core/substrate.
- Prepreg/bonding layers.
- Copper foil and patterned copper.
- Traces.
- Pads/lands.
- Planes and pours.
- Plated through-hole barrel.
- Vias.
- Solder mask.
- Silkscreen/legend.
- Surface finish.
- Board outline.
- Slots/cutouts.
- Mounting holes.
- Tooling/alignment features.
- Distinguish the **bare PCB** from the **PCBA**.

Use an original multilayer PCB cross-section as a central chapter figure.

### 2.3 PCB Types and Layer Stack-Ups

Use the conventional rigid multilayer PCB as the primary teaching platform while giving recognition-level awareness of other board types.

- Single-layer board.
- Two-layer board.
- Multilayer rigid PCB.
- Flex PCB awareness.
- Rigid-flex awareness.
- HDI awareness.
- Metal-core / insulated-metal-substrate awareness.
- Signal layers.
- Power/ground planes.
- Dielectric spacing.
- Stack-up symmetry.
- Copper balance.
- Layer ordering.
- Why a stack-up is both an electrical and physical construction.
- Why layer count alone does **not** determine stiffness, thermal performance, electrical performance, or manufacturability.

**Scope rule:** After recognition-level comparison, use a conventional rigid multilayer PCB as the main structure for the rest of the chapter.

### 2.4 PCB Materials and Property-to-Performance Relationships

Primary focus: FR-4-based rigid boards, with limited context for alternatives.

**Important teaching point:** FR-4 is a material grade/family, not one material with one fixed property set. Actual properties depend on the laminate system, construction, temperature, frequency, resin system, reinforcement, and manufacturer.

Organize the section as:

> **Property -> physical meaning -> packaging consequence**

Key properties:

- thermal conductivity \(k\);
- coefficient of thermal expansion (CTE):
  - in-plane X/Y;
  - through-thickness Z;
- glass-transition temperature \(T_g\);
- decomposition temperature \(T_d\);
- T260/T288 awareness if useful for datasheet literacy;
- elastic/flexural modulus;
- moisture absorption;
- dielectric constant \(D_k\);
- dissipation factor/loss tangent \(D_f\);
- copper thickness/weight;
- resin/reinforcement interaction at a conceptual level.

Applied consequences:

- dimensional stability;
- plated-hole/via reliability;
- warpage;
- thermal expansion mismatch;
- thermal conduction;
- high-frequency electrical behavior;
- soldering/reflow exposure;
- moisture-related process/reliability risk.

**Terminology caution:** Do not define FR-4 by oversimplified wording such as “FR means UL94V-0 and 4 means epoxy-glass.” Treat FR-4 as an industry laminate grade/family and explain that specific flammability, thermal, electrical, and mechanical properties belong to the actual qualified material system.

### 2.5 Common Copper Features

Teach copper geometry as multifunctional PCB structure.

- Traces.
- Pads/lands.
- Planes.
- Copper pours.
- Annular rings.
- Thermal reliefs.
- Copper balancing.
- Copper thieving at conceptual level.
- Copper thickness/weight.
- Why copper geometry affects:
  - electrical resistance;
  - current carrying;
  - heat spreading;
  - manufacturability;
  - local stiffness/warpage;
  - later signal-integrity behavior in Chapter 6.

Avoid detailed routing/DFM rules that belong in Chapters 3 and 5.

### 2.6 Vias, Plated Holes, and Mechanical Holes

Make the hole/via distinction explicit because it is highly practical in manufacturing and troubleshooting.

#### Component holes

- Plated through-holes used for component leads.
- Relationship among finished hole, drill size, plating, lead fit, and annular ring.

#### Electrical vias

- Through via.
- Blind via.
- Buried via.
- Microvia/HDI awareness.
- Via-in-pad concept.
- Filled/capped via awareness.
- Thermal vias.

#### Mechanical/tooling holes

- Non-plated mounting holes.
- Tooling/alignment holes.
- Slots/cutouts.

Applied concepts:

- aspect ratio;
- drill tolerance;
- positional tolerance;
- plating thickness awareness;
- annular ring;
- hole preparation;
- reliability implications of poor hole/plating quality.

**Scope rule:** Teach advanced via structures at recognition/application level only; do not turn the section into an HDI architecture course.

### 2.7 Surface Finishes

Explain why exposed copper normally requires a protective/solderable finish and why finish choice affects downstream assembly.

Primary finishes:

- HASL / lead-free HASL;
- ENIG;
- OSP.

Other finishes may be introduced briefly for awareness.

Discuss:

- oxidation protection;
- solderability;
- surface planarity;
- storage/shelf-life considerations;
- assembly/process compatibility;
- contact/wire-bond compatibility where relevant;
- inspection;
- cost.

**Boundary:** Surface finish is a bridge between bare-board fabrication and Chapter 4 assembly, not a chemistry chapter.

### 2.8 How a Rigid Multilayer PCB Is Fabricated

Present fabrication as a sequence of **functional manufacturing operations** rather than one universal recipe. Exact details vary by fabricator, material system, board construction, and technology.

Typical rigid multilayer sequence:

1. material preparation;
2. inner-layer imaging;
3. inner-layer etching;
4. inner-layer inspection;
5. layup and lamination;
6. drilling;
7. desmear / hole preparation awareness;
8. initial copper deposition and through-hole metallization;
9. outer-layer imaging;
10. electroplating/pattern plating where applicable;
11. outer-layer etching;
12. solder mask application and imaging;
13. surface finish;
14. legend/marking;
15. profiling/routing/depanelization-feature creation;
16. electrical test;
17. final inspection / quality verification.

Use an original process-flow figure.

**Key teaching point:** The exact process sequence depends on board technology, but the underlying functions—patterning conductors, laminating layers, creating and metallizing holes, protecting surfaces, finishing, profiling, and verifying the board—remain recognizable.

### 2.9 Fabrication Capabilities, Tolerances, and Producibility

Shift the emphasis from memorizing fixed numbers to understanding **capability**.

Teach the distinction among:

- physical process limit;
- fabricator minimum capability;
- preferred/recommended capability;
- EDA/design rule;
- industry-standard requirement;
- customer/product requirement.

Topics:

- trace/space capability;
- drill diameter and tolerance;
- drill positional tolerance;
- annular ring;
- copper-to-edge clearance;
- solder-mask registration;
- minimum mask web/dam;
- via aspect ratio;
- board thickness and thickness tolerance;
- copper thickness tolerance awareness;
- bow and twist;
- hole-to-hole and layer registration;
- producibility, yield, and cost tradeoffs.

**Key rule:** Typical numerical values may be used as documented examples, but never as universal IPC limits or universal manufacturer capabilities.

Where useful, provide a clearly labeled **typical mainstream rigid-board capability/tolerance summary** so readers develop a realistic sense of engineering scale. Distinguish common minimum, preferred, and tighter/advanced capability where useful, and state clearly that the values are not universal IPC limits or a substitute for the selected fabricator's current capability table.

**Planned figures:**

- Figure 2.9.1 - Different Sources of PCB Manufacturing Limits and Requirements.
- Figure 2.9.2 - Nominal Annular Ring and Manufacturing Variation.
- Figure 2.9.3 - Where Typical PCB Fabrication Capabilities and Tolerances Act.

### 2.10 PCB Thickness, Flexural Stiffness, and Warpage

Keep this section because it strongly supports the book’s MET audience.

- PCB thickness and bending stiffness.
- First-order rectangular-section relationship:

\[
I=\frac{bt^3}{12}
\]

- Use the \(t^3\) trend to show why thickness has a strong first-order influence on bending resistance.
- Clearly state that a real PCB is a layered, anisotropic composite.
- Actual flexural rigidity also depends on:
  - laminate properties;
  - copper distribution;
  - layer locations;
  - orientation;
  - cutouts;
  - local component/support geometry.
- Stack-up symmetry.
- Copper balance.
- Resin/copper thermal mismatch.
- Lamination and assembly thermal exposure.
- Bow/twist.
- Why warpage affects:
  - assembly;
  - connector alignment;
  - solder-joint loading;
  - inspection;
  - system integration;
  - reliability.

**Boundary:** Keep full laminate-composite and structural analysis for Chapter 8.

### 2.11 PCB Thermal Behavior

Use this section as a bridge to Chapter 7 rather than a complete thermal-design treatment.

- Copper versus FR-4 thermal conductivity.
- In-plane heat spreading.
- Through-thickness thermal bottlenecks.
- Copper planes and pours.
- Thermal vias.
- Exposed-pad-to-board heat path awareness.
- Stack-up influence on heat flow.
- Board anisotropy.
- Interaction among electrical current, copper geometry, and heating.

**Important caution:** More layers do not automatically mean better cooling.

**Boundary:** Thermal-resistance networks, convection, heat sinks, fans, and system cooling belong in Chapter 7.

### 2.12 Bare-Board Defects and Fabrication/Material Failure Modes

Refocus this section on defects and failure mechanisms associated primarily with the **bare PCB** rather than later PCBA assembly/reliability issues.

Representative defects/failure modes:

- open conductor;
- short circuit;
- over-etched / under-etched conductor;
- conductor width/spacing nonconformance;
- annular-ring breakout;
- hole registration error;
- plating void;
- insufficient/thin hole plating awareness;
- cracked hole/barrel plating awareness;
- lifted land/pad;
- delamination;
- blistering;
- measling/crazing awareness;
- bow/twist;
- solder-mask registration/coverage defect;
- surface-finish defect;
- moisture-related laminate damage awareness;
- conductive anodic filament (CAF) awareness.

Use the recurring troubleshooting model:

> **Observation -> Structure/Process Mechanism -> Likely Causes -> Evidence -> Corrective Action**

Defer assembly-process defects to Chapter 4, manufacturing-quality/test/rework topics to Chapter 5, mechanical failure analysis to Chapter 8, and broader field reliability to Chapter 9.

### 2.13 PCB Manufacturing Data, Quality Verification, and Supplier Communication

Strengthen this section because it is directly relevant to manufacturing, product, supplier, and quality engineering work.

Readers should recognize the purpose of:

- fabrication drawing;
- stack-up drawing;
- copper/layer artwork or equivalent manufacturing data;
- drill data;
- rout/profile data;
- netlist / electrical-test data;
- controlled requirements/notes;
- surface-finish callout;
- material callout;
- controlled-impedance callout awareness;
- revision control;
- fabrication notes;
- test coupons and microsection/cross-section verification awareness;
- final inspection/quality documentation awareness;
- Gerber concept;
- intelligent digital manufacturing-data exchange such as IPC-2581 awareness;
- supplier capability review;
- engineering-to-fabricator communication;
- resolving questions, deviations, and manufacturability concerns.

Applied question:

> **What does the board fabricator actually need from the engineering organization to build and verify the intended board?**

#### Standards Awareness box

Introduce the role—not the proprietary acceptance details—of major PCB standards families:

- IPC-2221 / IPC-2222: generic and rigid-board design context;
- IPC-4101: laminate and prepreg materials;
- IPC-6012: rigid-board qualification/performance;
- IPC-A-600: bare-board acceptability;
- IPC-SM-840: permanent solder-mask qualification/performance;
- IPC-455x family: surface finishes;
- IPC-TM-650: test methods;
- IPC-2581: intelligent design/manufacturing-data communication.

**Rule:** Explain when a standards family becomes relevant; do not reproduce copyrighted acceptance tables or numerical criteria.

### 2.14 Chapter Summary

Summarize the complete Chapter 2 learning sequence:

> **Chapter 1 manufacturing map -> bare PCB structure -> materials -> stack-up -> copper features -> holes/vias -> surface finish -> rigid multilayer fabrication -> capability/tolerances -> stiffness/warpage -> thermal behavior -> bare-board defects -> manufacturing data and supplier communication**

The summary should consolidate:

- the distinction between PCB and PCBA;
- why the PCB is a multiphysics structure;
- how material and stack-up choices affect later assembly/performance/reliability;
- why fabrication capability must be treated as process- and supplier-dependent;
- how observable board defects connect to materials/processes;
- what information is needed for board fabrication and verification.

### 2.15 Practice Problems

Provide deterministic Chapter 2 practice problems covering:

- Chapter 1-to-Chapter 2 manufacturing-flow interpretation;
- PCB anatomy;
- PCB-type/stack-up recognition;
- material property-to-performance matching;
- copper-feature identification;
- plated-hole/via/mechanical-hole classification;
- surface-finish selection using bounded criteria;
- fabrication-process sequencing;
- capability/tolerance interpretation using supplied example data;
- stiffness comparison using the \(t^3\) relationship;
- simple one-dimensional PCB heat-flow estimate;
- bare-board defect recognition;
- manufacturing-document/data interpretation;
- standards-family role matching.

Numerical questions should clearly identify all assumptions and any fabrication capability/tolerance data supplied for the problem.

### 2.16 Practice Problem Keys

Provide the synchronized deterministic answer key for Section 2.15 using identical problem numbering and titles.

The keys should:

- give one unambiguous answer or answer set for each published problem;
- include concise explanation where useful;
- be revised in the same update whenever the practice set changes.

### Applied Chapter Elements

- **Opening transition figure:** Chapter 1 manufacturing pathway with the PCB branch highlighted:
  - `PCB materials -> PCB fabrication -> bare PCB`.
- **Original figure:** Multilayer PCB cross-section with electrical, thermal, mechanical, and manufacturing roles labeled.
- **Original figure:** Rigid, flex, rigid-flex, HDI, and metal-core recognition-level comparison.
- **Original figure:** Via / plated-hole / non-plated-hole comparison.
- **Original figure:** Rigid multilayer PCB fabrication flow.
- **Worked example:** Compare bending stiffness of two PCB thicknesses using the \(t^3\) relationship.
- **Worked example:** Estimate one-dimensional heat conduction through a PCB region.
- **Engineering decision:** Compare material/stack-up priorities for a low-cost controller versus a higher-temperature or higher-speed product.
- **Quality case:** Identify likely fabrication/process origins of representative bare-board defects.
- **Communication activity:** Interpret a simplified fabrication drawing/stack-up and identify missing information required before release.

### Authoring/Verification Cautions

- Use Chapter 1 as the transition but do not repeat its broader packaging overview.
- Maintain the explicit manufacturing distinction:
  - semiconductor fabrication -> IC die;
  - IC packaging -> packaged component;
  - PCB fabrication -> bare PCB;
  - components + bare PCB -> PCB assembly -> PCBA.
- Keep rigid multilayer PCB as the main teaching platform while introducing flex, rigid-flex, HDI, and metal-core constructions only at recognition level.
- FR-4 is a material family/grade with variable properties; do not present one fixed property set as universal.
- Verify material-property values against current qualified laminate data and state conditions/ranges where appropriate.
- Do not oversimplify FR-4 terminology or equate the grade designation itself with one universal UL flammability rating.
- Do not describe solder mask as an airtight, waterproof, or hermetic environmental seal.
- Distinguish plated component holes, vias, and non-plated mechanical/tooling holes.
- Do not turn via/microvia discussion into an advanced HDI design course.
- Do not make surface-finish chemistry the focus; emphasize function and tradeoffs.
- Present PCB fabrication as a representative functional sequence, not one immutable universal recipe.
- Treat process limits, fabricator capability, preferred capability, design rules, standards requirements, and customer requirements as different concepts.
- Use numerical manufacturing limits only as sourced examples, not universal IPC rules.
- Qualify the use of \(I=bt^3/12\): it is a first-order homogeneous-section model; a real PCB is a layered anisotropic composite.
- Do not claim that increasing layer count automatically improves stiffness or cooling.
- Keep Chapter 2 thermal content to PCB heat-flow awareness; detailed thermal design belongs in Chapter 7.
- Keep Chapter 2 defects focused on bare-board fabrication/material issues; defer PCB-assembly process defects to Chapter 4, manufacturing-quality/test/rework topics to Chapter 5, and field-life failures to Chapter 9.
- Explain standards by role and relevance; do not reproduce proprietary acceptance criteria or tables.
- Preserve the practical MET emphasis: structure, fabrication, quality, supplier communication, troubleshooting, and engineering decision-making.

### Primary Reference Anchors

- Completed Chapter 1 OER and the Chapter 1 manufacturing pathway, used to establish the Chapter 1 -> Chapter 2 transition.
- Earlier Chapter 2 instructional materials, used as the primary teaching-emphasis reference but technically rechecked.
- Tummala, *Fundamentals of Microsystems Packaging*, especially system-level PWB/materials/fabrication chapters.
- Tummala, *Fundamentals of Device and Systems Packaging*, for device-to-board/system context.
- Coombs, *Printed Circuits Handbook*, especially materials, PCB engineering/design, drilling, imaging, multilayer processing, plating, fabrication, and testing sections.
- Blackwell, *The Electronic Packaging Handbook*, especially circuit-board, design/manufacturing/test, and concurrent-engineering context.
- Current industry standards/official resources during authoring:
  - IPC-2221 / IPC-2222;
  - IPC-4101;
  - IPC-6012;
  - IPC-A-600;
  - IPC-SM-840;
  - IPC-455x surface-finish family;
  - IPC-TM-650;
  - IPC-2581.
- Current laminate-manufacturer technical data for representative FR-4 material-property examples.

---

## Chapter 3 - Design for Manufacturability (DFM) in PCB and Electronic Packaging

> **Revision note:** This Chapter 3 plan reflects the latest outline review and project-purpose QA. It supersedes the earlier Chapter 3 outline. DFM remains the central subject; related DFA, DFT, and broader DFX concepts are included only where they help explain practical pre-release design decisions.

### Chapter Purpose

Use the completed Chapter 2 discussion of **PCB fabrication capability, tolerance, producibility, manufacturing data, and supplier communication** as the transition into design decisions that must be made **before a PCB/PCBA is released for manufacturing**.

Chapter 2 established that a design must respect real materials, process variation, supplier capability, and verification requirements. Chapter 3 now asks:

> **How should the PCB/PCBA design be arranged so that it can be fabricated, assembled, inspected, tested, reworked, handled, and released consistently at acceptable cost and yield?**

The chapter should teach DFM as a practical engineering decision process rather than as a list of universal spacing numbers.

The chapter should emphasize:

- physical geometry;
- manufacturing variation;
- assembly access;
- inspection and test access;
- rework/service access;
- panel/tooling considerations;
- supplier/process capability;
- design-rule interpretation;
- release review and feedback.

The chapter should prepare readers to perform an applied DFM review similar to an industry pre-release PCB/PCBA review and to the Chapter 3 laboratory activity.

The chapter should **not** become:

- a complete PCB-layout-design textbook;
- a detailed SMT/THT assembly-process/equipment chapter;
- a stencil-printing or reflow-process chapter;
- a detailed signal-integrity/power-integrity course;
- a thermal-design chapter;
- a mechanical-stress/vibration chapter;
- a reliability-physics chapter;
- a standards-reproduction chapter.

### Learning Objectives

After completing the chapter, readers should be able to:

- explain the purpose of DFM and distinguish it from related DFA, DFT, and broader DFX concepts;
- explain where DFM review fits between design/layout and manufacturing release;
- distinguish governing requirements, standards guidance, supplier/process capability, preferred DFM targets, EDA design rules, and instructional/example values;
- explain why finite manufacturing and placement accuracy require intentional design margin;
- evaluate component placement and orientation for manufacturability, inspection, and rework;
- evaluate major component, pad, copper, and board-edge spacing/clearance relationships;
- explain how land-pattern geometry affects assembly robustness and manufacturability;
- evaluate basic hole, annular-ring, and via relationships from a DFM perspective;
- identify manufacturability concerns associated with via-in-pad, very small vias, and poor annular-ring margin;
- evaluate representative trace/copper geometry for producibility without treating historical rules as timeless absolutes;
- explain how solder-mask registration, openings, dams/webs, slivers, and tenting affect manufacturability;
- evaluate silkscreen and marking placement for assembly, inspection, troubleshooting, and service;
- explain why inspection/test access and rework access should be considered during layout rather than after assembly;
- recognize the design significance of panelization, fiducials, tooling/handling features, and depanelization keep-outs;
- distinguish EDA DRC from a broader DFM/DFA review;
- interpret a supplier/fabricator/assembler DFM finding and identify an appropriate corrective design action;
- perform a structured pre-release DFM review using an applied checklist.

### Chapter-Level Numerical Rule

Numerical DFM values must be handled using the hierarchy established in Chapter 2.

Throughout Chapter 3, distinguish:

> **Governing requirement -> supplier/process capability -> preferred/routine DFM target -> EDA design rule -> instructional/example value**

A value used in the lecture, laboratory, worked example, or practice problem may be useful for instruction but must **not** automatically be presented as:

- a universal IPC requirement;
- a universal PCB-fabricator capability;
- a universal assembly-process limit;
- a universal acceptance criterion.

Where deterministic numerical examples are needed, use a clearly labeled **representative instructional DFM rule set** or a supplied supplier-capability table.

### 3.0 Chapter Overview

Provide a concise chapter opener that:

- transitions from Chapter 2 manufacturing capability and supplier communication to **pre-release DFM decisions**;
- summarizes the Chapter 3 scope and practical purpose;
- contains the Chapter 3 learning objectives;
- gives the chapter path from rule sources and layout decisions through access, DFM review, and controlled release;
- does not duplicate the detailed DFM/DFA/DFT/DFX teaching in Section 3.1.

### 3.1 DFM, DFA, DFT, and DFX

Begin directly from the Chapter 3 overview and establish the conceptual framework without turning the section into a broad DFX survey.

- Define **Design for Manufacturability (DFM)** as the main chapter focus.
- Introduce related concepts:
  - Design for Assembly (DFA);
  - Design for Test (DFT);
  - broader Design for X (DFX) thinking.
- Explain that a design can be electrically correct yet difficult or expensive to manufacture.
- Connect design decisions to:
  - fabrication;
  - assembly;
  - inspection;
  - test;
  - rework;
  - service;
  - yield;
  - cost;
  - schedule;
  - reliability.
- Emphasize that manufacturability is considered during design, not added after the layout is complete.

**Scope rule:** DFM remains the organizing concept. DFA/DFT/DFX are framing concepts only where they support the chapter's practical design decisions.

### 3.2 Where DFM Fits in the Product Workflow

Show DFM as a pre-release engineering activity.

Recommended workflow:

> **Design intent -> PCB layout -> design-rule checks -> DFM/DFA review -> supplier review -> prototype/build feedback -> design revision -> production release**

Discuss:

- why DFM should begin before final layout release;
- why DRC alone is not enough;
- why fabrication and assembly feedback should be resolved before production;
- why prototype results may reveal design/process interactions not captured by static rules;
- why late DFM corrections increase cost, schedule risk, and redesign effort;
- why revision control matters during release.

Use Chapter 2 supplier-communication concepts as background without repeating the Chapter 2 manufacturing-data discussion in detail.

### 3.3 Design Rules, Manufacturing Capabilities, and Requirements

Make this the key conceptual foundation for all later numerical decisions.

Distinguish among:

- governing product/customer/safety requirements;
- applicable standards or standards guidance;
- PCB-fabricator capability;
- assembly-process capability;
- inspection/test capability;
- preferred/routine manufacturing targets;
- EDA design rules;
- internal company DFM rules;
- instructional/example values.

Explain:

- minimum capability versus preferred capability;
- capability versus acceptance requirement;
- why tighter geometry may increase cost and reduce process margin;
- why the selected supplier/process matters;
- why the same board may require different rules at different manufacturers;
- why a DRC rule is only as meaningful as the requirement/capability behind it.

**Key teaching point:** A number has engineering meaning only when its source, purpose, and applicable process are understood.

### 3.4 Component Placement and Orientation

Combine placement and orientation into one integrated DFM topic.

#### Placement fundamentals

- Pick-and-place uses:
  - X-Y location;
  - component center/centroid;
  - rotation;
  - package/footprint definition.
- Placement accuracy is finite.
- Footprints and pad geometry must be correct.
- Component bodies and terminals must fit the intended land pattern.
- Placement density should preserve:
  - manufacturability;
  - inspection visibility;
  - test access where needed;
  - rework access.

#### Orientation

- Similar components should use consistent orientation where practical.
- Polarized components require clear and consistent polarity/orientation marking.
- Pin-1 orientation should be easy to identify.
- Avoid orientations that unnecessarily complicate placement, inspection, or rework.
- Where process direction matters, explain the concept without making one universal orientation rule.

#### Height and edge considerations

- Tall versus short components.
- AOI shadowing awareness.
- Rework-tool access.
- Heating/thermal-shadowing awareness at recognition level.
- Components near board edges.
- Depanelization/handling risk.
- Connector and heavy-component considerations.

#### Tombstoning awareness

Introduce tombstoning only as a DFM example showing interaction among:

- placement;
- pad symmetry;
- solder-paste volume;
- copper/thermal balance;
- heating.

**Boundary:** Detailed solder-paste, placement, and reflow-process causes/corrections belong in Chapter 4; cross-process quality analytics and corrective-action systems belong in Chapter 5.

### 3.5 Spacing and Clearance Rules

Give spacing/clearance its own section because it is one of the most important practical Chapter 3 skills.

Explain that clearance is intentional space used to accommodate:

- fabrication variation;
- placement tolerance;
- solder behavior;
- assembly-tool access;
- inspection access;
- test access;
- rework access;
- board handling;
- electrical isolation/safety where applicable.

Cover major relationships:

- component-to-component;
- component-to-board-edge;
- pad-to-pad;
- trace-to-trace;
- trace-to-pad;
- copper-to-board-edge;
- component-to-hole/slot/cutout where relevant;
- clearance around connectors and tall components;
- clearance for assembly and rework tools.

For each relationship, teach:

> **What is being separated -> why the spacing exists -> what can go wrong if margin is inadequate -> what source should control the final value**

Do not reduce the section to memorizing one table of universal numbers.

### 3.6 Pads and Land Patterns

Teach the land pattern as the physical interface between the component termination and the PCB.

Discuss:

- component termination geometry versus PCB land geometry;
- solderable land area;
- pad length and width at an applied level;
- placement tolerance and solder-joint formation;
- symmetry;
- pad-to-copper thermal balance where relevant;
- tombstoning risk awareness;
- package-manufacturer recommended land patterns;
- density and manufacturability tradeoffs;
- fine-pitch awareness;
- BGA/QFN land-pattern awareness;
- solder-mask-defined (SMD) versus non-solder-mask-defined (NSMD) concepts where useful.

**Boundary:** Do not turn the section into a complete footprint-design standard or detailed solder-joint acceptance chapter.

### 3.7 Holes, Annular Rings, and Vias

Build directly on Chapter 2's hole/via definitions, but shift from **what the feature is** to **how it should be designed for manufacturing margin**.

#### THT holes

- Lead diameter versus finished-hole size.
- Insertion/fit allowance.
- Drill and plating variation.
- Solder-fill awareness.

#### Annular rings

- Pad diameter, hole diameter, and annular-ring relationship:

\[
\text{Pad diameter}=\text{Hole diameter}+2(\text{Annular ring})
\]

- Nominal versus realized annular ring.
- Drill positional variation.
- Registration variation.
- Breakout risk.
- Why preferred design margin can exceed minimum capability.

#### Vias

- Via drill/finished-hole awareness.
- Smaller-via cost and process-margin consequences.
- Aspect-ratio awareness.
- Via-to-pad/copper relationships.
- Current/thermal implications only at recognition level.

#### Via-in-pad

- Solder-wicking risk for open/unfilled via-in-pad structures.
- Filled/capped via awareness.
- When via-in-pad is an intentional advanced process rather than automatically a defect.

**Boundary:** Detailed HDI/microvia architecture and reliability analysis remain outside the chapter.

### 3.8 Trace and Copper Geometry

Focus this section on copper shape and producibility rather than repeating spacing rules from Section 3.5.

Topics:

- trace-width manufacturability where relevant;
- very narrow necks;
- copper slivers;
- pad-entry geometry;
- abrupt width transitions;
- copper neck-downs;
- acute interior copper geometry;
- teardrops where useful/appropriate;
- copper around pads, vias, cutouts, and board edges;
- etching/registration effects at an applied level.

#### Historical "acid trap" rule

Present the traditional acid-trap concept with modern-process nuance.

- Explain why sharp/acute copper geometry was historically associated with etching/manufacturing concern.
- Avoid stating that every right-angle trace is automatically a modern fabrication defect.
- Prefer geometry that is robust and consistent with the selected fabricator/process.
- Separate manufacturability concerns from high-speed electrical-design concerns that belong in Chapter 6.

### 3.9 Solder Mask

Build on Chapter 2's physical definition of solder mask and focus on design-for-manufacturing consequences.

Discuss:

- solder-mask registration is finite;
- mask openings relative to copper pads;
- mask expansion/clearance;
- mask overlap risk;
- minimum mask web/dam concepts;
- fragile mask slivers;
- mask openings between fine-pitch pads;
- via tenting awareness;
- plugged/filled/capped via distinction where needed;
- solder-mask-defined versus non-solder-mask-defined pad concepts where relevant.

Explain the design logic:

> **Copper geometry + mask registration capability + required exposed solderable area -> mask opening decision**

**Boundary:** Detailed solder-process behavior and solder-joint acceptance belong in Chapter 4.

### 3.10 Silkscreen and Markings

Treat legend/marking as a practical manufacturing, inspection, troubleshooting, and service feature.

Topics:

- reference designators;
- polarity marks;
- pin-1 indicators;
- connector orientation labels;
- test-point identification where appropriate;
- text/line readability;
- legend registration tolerance;
- silkscreen-to-pad/solderable-area clearance;
- avoiding markings beneath components where they provide no useful information;
- readability after assembly;
- avoiding interference with inspection and rework.

**Key teaching point:** Markings should help humans and manufacturing systems interpret the assembly without contaminating or obscuring solderable features.

### 3.11 Design for Inspection and Test Access

Make inspection/test access an explicit design responsibility.

#### Optical/manual inspection

- line of sight;
- tall-component shadowing;
- blocked solder joints;
- component orientation and visibility;
- access for manual inspection.

#### AOI awareness

- what AOI can see;
- why geometry/height/orientation can reduce visibility;
- why design should support effective inspection where optical inspection is expected.

#### X-ray awareness

- hidden solder joints in BGA/QFN and similar packages;
- why X-ray may be a legitimate process requirement;
- do **not** treat the need for X-ray itself as proof of poor DFM.

#### Test access

- test points;
- probe access;
- connector access;
- ICT awareness;
- flying-probe awareness;
- boundary-scan awareness only if useful;
- electrical access versus physical access.

**Boundary:** Detailed inspection/test equipment, test strategy, and acceptance/workmanship treatment belong in Chapter 5.

### 3.12 Design for Rework and Service Access

Teach rework/serviceability as something influenced by layout before the board is built.

Discuss:

- hot-air tool clearance;
- soldering-iron/probe access;
- component removal/replacement space;
- neighboring-component thermal exposure;
- risk of collateral damage;
- dense placement versus repair time/cost;
- connectors and frequently handled/replaced parts;
- access to screws, fasteners, or board-retention features where relevant;
- parts likely to require adjustment, replacement, or service;
- when serviceability may legitimately be low priority for a sealed/disposable/high-density product.

**Boundary:** Do not teach detailed rework procedures, temperatures, nozzle selection, or soldering technique; those are manufacturing-quality/rework topics for Chapter 5 or laboratory procedures.

### 3.13 Panelization, Fiducials, and Assembly Tooling Considerations

Introduce the board not only as an individual PCB, but also as something that must often be handled in a manufacturing panel or production fixture.

Topics:

- why panelization is used;
- panel rails/handling edges;
- breakaway tabs;
- routing;
- V-score awareness;
- mouse-bite/tab-routing awareness where useful;
- depanelization keep-outs;
- component/copper distance from break regions;
- global fiducials;
- local fiducials where needed;
- tooling/alignment holes;
- conveyor/edge-clearance awareness;
- board-support/fixture access;
- panel orientation and repeated-board arrangement awareness.

**Boundary:** Keep this at design/DFM awareness level. Detailed assembly-machine programming and process settings belong in Chapter 4; inspection/test fixtures and production-quality systems belong in Chapter 5.

### 3.14 DFM Review, Tools, and Design Release

Distinguish automated design-rule checking from the broader engineering review needed before manufacturing.

#### DRC versus DFM

- EDA DRC checks encoded geometric/electrical rules.
- DFM review considers:
  - supplier capability;
  - assembly process;
  - inspection/test access;
  - rework;
  - tooling/panelization;
  - yield/cost;
  - documentation consistency.
- A board can pass DRC and still have DFM problems.

#### Supplier/manufacturer review

- PCB-fabricator DFM findings.
- Assembly-house DFM/DFA findings.
- Engineering response to supplier questions.
- Disposition:
  - accept;
  - revise;
  - clarify;
  - request deviation/exception where appropriate.

#### Release consistency

Confirm that the released design information is mutually consistent.

Awareness-level inputs may include:

- fabrication data;
- assembly data;
- BOM;
- centroid/pick-and-place data;
- paste/stencil data where relevant;
- drawings/notes;
- revision identifiers.

Do not repeat Chapter 2.13's detailed manufacturing-data-format discussion.

#### Release workflow

Recommended sequence:

> **Run checks -> perform DFM/DFA review -> review supplier findings -> revise -> recheck -> confirm revision consistency -> release**

### 3.15 Applied DFM Checklist

Provide a practical synthesis that students can use for laboratory work and real pre-release review.

Organize the checklist by engineering function rather than by arbitrary numerical rules.

#### Fabrication

- trace/space within selected capability;
- hole/via geometry within capability;
- annular-ring margin;
- copper-to-edge margin;
- solder-mask geometry;
- no fragile/unproducible copper/mask features.

#### Assembly

- correct footprints;
- correct centroid/orientation;
- polarity/pin-1 clarity;
- placement clearance;
- component-height/edge considerations;
- land-pattern suitability.

#### Inspection and Test

- critical joints visible where optical inspection is expected;
- hidden-joint inspection method recognized where necessary;
- test/probe access provided where required;
- markings support inspection/troubleshooting.

#### Rework and Service

- tool access;
- replaceable-part access;
- neighboring-component protection;
- connector/fastener access where needed.

#### Tooling and Handling

- fiducials;
- panel/rail considerations;
- tooling holes/fixtures where required;
- depanelization keep-outs;
- edge clearances.

#### Release

- DRC complete;
- DFM/DFA review complete;
- supplier findings resolved;
- revision consistency verified;
- release package ready.

The checklist should emphasize:

> **Check the design against the actual selected manufacturing and product requirements, not only against a generic rule-of-thumb table.**

### 3.16 Chapter Summary

Summarize the complete Chapter 3 engineering sequence:

> **Understand the rule source -> place/orient components -> provide spacing and manufacturing margin -> design robust lands/holes/vias/copper/mask/markings -> provide inspection/test/rework access -> consider panel/tooling needs -> perform DFM review -> release**

Reinforce:

- DFM is a pre-release design activity;
- DRC and DFM are related but not identical;
- manufacturing variation requires design margin;
- preferred capability is often more robust than minimum capability;
- the correct numerical rule depends on its source and process;
- good DFM considers fabrication, assembly, inspection, test, rework, and handling together;
- the goal is repeatable manufacturing at acceptable cost, yield, quality, and reliability.

### 3.17 Practice Problems

Provide deterministic Chapter 3 practice problems covering:

- DFM/DFA/DFT/DFX concept matching;
- placement/orientation review;
- component/pad/trace/edge clearance evaluation;
- interpretation of a supplied DFM-rule table;
- pad/land-pattern reasoning;
- annular-ring calculation;
- THT hole allowance using supplied design rules;
- via-in-pad risk identification;
- trace/copper geometry review;
- solder-mask opening/web evaluation;
- silkscreen/marking review;
- AOI/X-ray/test-access reasoning;
- rework-access review;
- panelization/fiducial/tooling awareness;
- DRC-versus-DFM classification;
- supplier DFM finding and corrective-action selection;
- final checklist review of a simplified PCB/PCBA layout.

Any numerical problem should provide the governing rule set or supplier capability data needed for one deterministic answer.

### 3.18 Practice Problem Keys

Provide the synchronized deterministic answer key for Section 3.17 using identical problem numbering and titles.

The keys should:

- provide one unambiguous answer or bounded answer set;
- identify the controlling rule/data where relevant;
- include concise reasoning for DFM decisions;
- be revised in the same update whenever the practice set changes.

### Applied Chapter Elements

Use applied elements that reinforce the chapter's pre-release engineering focus.

- **Opening workflow figure:** design/layout -> DRC -> DFM/DFA review -> supplier review -> prototype feedback -> revision -> production release.
- **Original comparison figure:** minimum capability versus preferred/routine DFM target versus governing requirement.
- **Original placement figure:** component placement/orientation examples showing edge, height, polarity, inspection, and rework considerations.
- **Original clearance figure:** major component/pad/trace/copper/edge spacing relationships.
- **Original land-pattern figure:** component termination, land geometry, placement tolerance, and solderable area.
- **Worked example:** evaluate a simplified layout against a supplied instructional/supplier DFM rule table.
- **Worked example:** calculate pad diameter from drill/hole diameter and required annular ring.
- **Original via figure:** conventional via versus unfilled via-in-pad versus filled/capped via-in-pad.
- **Original solder-mask figure:** pad, mask opening, registration shift, mask web/dam, and sliver concepts.
- **Inspection case:** determine whether AOI, X-ray, manual inspection, and/or electrical test access is appropriate for representative features.
- **Rework case:** compare two component-placement layouts for tool access and collateral-damage risk.
- **Panelization/tooling figure:** board, rail, fiducials, tooling holes, breakaway features, and depanelization keep-out.
- **Final DFM activity:** use the Section 3.15 checklist to review a simplified PCB/PCBA before release.

### Authoring/Verification Cautions

- Keep Chapter 3 centered on **design decisions before manufacturing release**.
- Use the MET406 Chapter 3 lecture and Lab #1 to preserve scope and applied teaching emphasis, but technically recheck all numerical and standards-related claims.
- Build directly on Chapter 2's distinction among:
  - process limit;
  - supplier capability;
  - preferred capability;
  - design rule;
  - standards requirement;
  - customer/product requirement.
- Do not present lecture/lab rule-of-thumb values as universal IPC requirements.
- When deterministic values are needed for exercises, label them as a supplied or representative instructional DFM rule set.
- Do not imply that passing EDA DRC means the design is manufacturable.
- Keep placement/orientation rules physically motivated rather than absolute where process/product context matters.
- Do not make one universal component-to-edge or component-to-component clearance rule.
- Do not make one universal pad-size percentage rule.
- Distinguish component land geometry from solder-mask geometry.
- Do not state that via-in-pad is universally unacceptable; explain the process distinction between open/unfilled vias and intentional filled/capped via-in-pad constructions.
- Do not present the historical "acid trap" explanation as an absolute modern fabrication rule.
- Do not claim that right-angle traces are automatically manufacturing failures.
- Keep high-speed impedance/routing effects for Chapter 6 except where brief awareness is needed to avoid misleading statements.
- Do not claim that X-ray inspection itself indicates poor DFM; hidden-joint packages may legitimately require X-ray.
- Keep detailed stencil printing, paste deposition, placement, reflow profiles, wave/selective soldering, and process-specific defect troubleshooting in Chapter 4.
- Keep detailed inspection/test systems, rework/repair, SPC, traceability/MES, production-quality analytics, root-cause/corrective-action methods, and manufacturing change control in Chapter 5.
- Keep detailed thermal modeling in Chapter 7.
- Keep detailed mechanical, warpage/stress, vibration, and shock analysis in Chapter 8.
- Keep detailed reliability physics and life prediction in Chapter 9.
- Do not repeat Chapter 2.13's detailed manufacturing-data-format discussion in Section 3.14.
- Explain standards by role and relevance; do not reproduce proprietary tables or acceptance criteria.
- Preserve the practical MET emphasis:
  - identify the geometry;
  - explain the manufacturing reason;
  - identify what can go wrong;
  - determine what evidence/rule controls;
  - choose a corrective design action.

### Primary Reference Anchors

- Completed Chapter 2 OER, especially fabrication capabilities/tolerances, holes/vias, solder mask, copper geometry, manufacturing-data quality, and supplier communication, used to establish the Chapter 2 -> Chapter 3 transition.
- MET406 Chapter 3 instructional materials, used as the primary teaching-scope and applied-emphasis reference but technically rechecked.
- MET406 Lab #1, used to verify the practical DFM-review skills students are expected to apply.
- Coombs, *Printed Circuits Handbook*, especially PCB design/manufacturability, land-pattern, fabrication, assembly-interface, panelization, tooling, inspection, and testability topics.
- Blackwell, *The Electronic Packaging Handbook*, especially concurrent engineering, design for manufacturability, surface-mount design, panelization, tooling/fiducials, inspection, and design-for-test context.
- Tummala, *Fundamentals of Microsystems Packaging*, for package-to-board interfaces, assembly/manufacturing interactions, and system-level packaging context.
- Tummala, *Fundamentals of Device and Systems Packaging*, for device/package/board/system manufacturability context.
- Current PCB-fabricator capability documentation and current electronics-assembly capability/DFM guidance when numerical examples are used.
- Current manufacturer component/package land-pattern recommendations where footprint examples are used.
- Current applicable standards/official resources during authoring, used by role and without reproducing proprietary acceptance tables.

---

## Chapter 4 - PCB Assembly Processes and Equipment

> **Pedagogical redesign note (2026-09-22):** Chapters 4 and 5 were redesigned together for readers who are new to electronics manufacturing. The previous outline followed the factory's administrative/production chronology too closely and introduced NPI, configuration control, material-control systems, and manufacturing-engineering terminology before students had a strong physical picture of PCB assembly. The revised sequence teaches the **physical process first**, then the machines and observable evidence, and only afterward introduces the documentation and controls used to prepare and release production. The goal is **entry-level job readiness**, not expert-level process-engineering mastery.

### Chapter Purpose

Use the completed Chapter 3 DFM/release workflow as the transition from a manufacturable design to the physical process of building a PCBA.

Chapter 4 should first answer the beginner's questions:

> **What happens to a bare PCB on the factory floor? What are the major machines? What does each process physically do? What can go wrong, and what would an entry-level technician or engineer check next?**

Only after students understand the physical manufacturing flow should the chapter introduce the job package, material verification, changeover, and first-board/production-readiness controls that support that flow.

The learning sequence is intentionally different from the factory's administrative chronology. In a real factory, job release and kitting occur before printing and placement. In this textbook, students first learn **what the processes are**, then learn **how those processes are prepared and controlled**.

A useful chapter-level physical pathway is:

> **bare PCB -> solder paste -> component placement -> reflow -> THT/secondary operations as required -> completed PCBA**

The chapter should function as a **virtual factory-floor introduction** for readers who may never have seen industrial SMT/THT equipment.

### MET Entry-Level Job-Readiness Depth Rule

Chapter 4 is not intended to make students expert SMT/process engineers.

Use four depth levels:

1. **Must understand**
   - what the process/equipment does;
   - the major physical mechanism;
   - the main inputs and outputs;
   - the most common process evidence;
   - common failure modes at recognition level;
   - the next reasonable engineering check/action.

2. **Must recognize / use at a basic level**
   - common machine subsystems;
   - basic setup data;
   - representative process values/ranges when they are pedagogically useful;
   - basic profile/SPI/placement data;
   - common production files and material identifiers.

3. **Awareness only**
   - advanced machine optimization;
   - detailed NPI governance;
   - advanced feeder/nozzle optimization;
   - process qualification systems;
   - enterprise manufacturing systems;
   - specialist materials/process analysis.

4. **Defer**
   - expert process development;
   - advanced metallurgy;
   - advanced machine programming;
   - proprietary acceptance criteria;
   - detailed supplier/vendor procedures normally learned through job experience, vendor training, standards, or advanced study.

### Learning-Sequence Rule

When possible, introduce topics in this order:

> **physical object/process -> machine/equipment -> observable evidence -> basic troubleshooting judgment -> documentation/control**

Do not front-load professional manufacturing-management vocabulary before students understand the process being managed.

### Learning Objectives

After completing the chapter, readers should be able to:

- distinguish **PCB assembly** from the **PCBA product** and describe the bare-PCB-to-PCBA transformation;
- recognize the major areas and equipment in a representative SMT/THT factory;
- distinguish SMT, THT, and mixed-technology assembly at a practical recognition level;
- explain the basic roles of solder, flux, wetting, solderability, solder paste, and thermal input;
- describe how solder paste is printed and how SPI provides evidence about the print;
- recognize common component supply formats, feeders, nozzles, and the basic operation of a pick-and-place machine;
- interpret basic placement data, fiducials, vision/alignment concepts, and common placement problems;
- explain how a reflow oven heats a board and interpret a basic measured thermal profile;
- connect common SMT defects to possible print, placement, material, and reflow causes without assuming one universal cause;
- explain the basic purpose and operation of THT insertion, wave soldering, selective soldering, and hand soldering;
- plan a reasonable mixed SMT/THT or double-sided process route from supplied product constraints;
- recognize common post-solder operations such as depanelization, secondary assembly, cleaning, and protection;
- recognize the basic job package, material-verification, changeover, and first-board controls used to prepare the processes they have already learned;
- use a simple **observation -> evidence -> likely mechanism -> next action** troubleshooting approach.

### Chapter-Level Practical-Data Rule

Use real engineering scale where it helps students understand the process, but do not overload beginners with parameter tables.

For each numerical value, identify its role:

> **material/property value -> representative industrial scale -> supplier recommendation -> qualified product/process window -> acceptance requirement**

Prefer a few well-chosen numbers, plots, and worked examples over long lists of machine settings.

### Virtual Factory / Job-Readiness Rule

For major process/equipment sections, answer:

> **What is it? -> What goes in? -> What physically happens? -> What does the operator/technician set up? -> What evidence can we observe? -> What can go wrong? -> What should we check next?**

Useful recurring boxes may include:

- **What You Would See on the Factory Floor**
- **Why This Process Matters**
- **Typical Process Evidence**
- **What Can Go Wrong**
- **What Would You Check Next?**
- **Representative Industrial Scale**

Avoid turning the chapter into a machine-vendor manual.

### 4.0 Chapter Overview

Provide a concise chapter opener that:

- transitions from the Chapter 3 released design to the physical process of building a PCBA;
- summarizes the Chapter 4 factory-floor sequence and practical purpose;
- contains the Chapter 4 learning objectives;
- gives the chapter path from factory/process recognition through SMT, THT/secondary operations, production readiness, and troubleshooting;
- does not duplicate the detailed released-design-to-PCBA teaching in Section 4.1.

### 4.1 From Released PCB Design to PCBA

Begin the first instructional section with a simple manufacturing handoff from the overview.

Teach:

- PCB assembly = manufacturing process;
- PCBA = assembled product;
- bare PCB versus assembled PCBA;
- PCB fabrication, PCB assembly, and system final assembly as different stages;
- basic physical transformation:
  - bare PCB;
  - joining material;
  - components;
  - assembly processes;
  - PCBA.

Keep production-control terminology light.

Use the section primarily to answer:

> **What physically changes when a bare PCB becomes a PCBA?**

Retain only brief awareness that correct information, material, equipment, and setup are required. Detailed readiness controls move to Sections 4.23-4.25.

**Revision action for existing draft:** simplify the current 4.1 by reducing the production-readiness checklist and professional control vocabulary while preserving the process/product distinction and manufacturing boundaries.

### 4.2 Anatomy of a Modern PCB Assembly Factory

Make this the chapter's main orientation section.

Start early with a **follow-one-board** walk-through so students can picture the line before learning individual machines.

Representative route:

> **bare PCB/panel -> paste printing -> SPI -> placement -> reflow -> post-reflow inspection -> THT/secondary operations as required -> downstream verification**

Introduce at recognition level:

- receiving/material-preparation area;
- loader/conveyor/buffer/unloader;
- stencil printer;
- SPI;
- pick-and-place machine;
- reflow oven;
- AOI/X-ray awareness;
- THT work area;
- wave/selective/hand-soldering areas;
- rework/test-area awareness.

Introduce common factory roles only briefly:

- operator;
- technician;
- process/manufacturing engineer;
- quality/test engineer;
- maintenance/equipment support.

Use one original factory-floor process map as the visual anchor.

**Revision action for existing draft:** keep the current factory map and board walk-through; move the applied "follow one board" example earlier and shorten the role/flow-management material that is not essential to first exposure.

### 4.3 Recognizing SMT, THT, and Mixed-Technology Assembly

Give students a simple physical classification before process details.

Teach:

- SMT:
  - components placed on surface pads;
  - paste + reflow as the common assembly route;
- THT:
  - leads/pins pass through holes;
  - insertion + wave/selective/hand soldering as common routes;
- mixed technology:
  - SMT and THT on the same product;
- double-sided SMT awareness;
- press-fit/non-soldered attachment awareness.

Use clear side-by-side board/component examples.

Focus on:

- what each approach looks like;
- why a product might use it;
- basic manufacturing consequences.

Do not perform detailed process-route optimization here. Section 4.20 owns applied mixed-process planning.

### 4.4 Soldering Fundamentals and Solderability

Teach the basic physical mechanism before teaching paste printers and reflow ovens.

Topics:

- solder joint as electrical + mechanical interconnection;
- solder versus base metal;
- flux purpose;
- oxidation/contamination;
- wetting versus non-wetting/dewetting awareness;
- surface tension;
- solderability;
- heat transfer to the joint;
- basic intermetallic-layer awareness without metallurgy depth;
- why too little/too much heat or poor surface condition causes problems.

Use:

- good/poor wetting sketches;
- simple flux/wetting sequence;
- practical hand-solder/reflow examples.

**Boundary:** no advanced metallurgy, phase diagrams, or reliability-life analysis.

### 4.5 ESD Control and Moisture-Sensitive Device Handling Basics

Teach highly job-relevant handling before students work through the detailed SMT flow.

#### ESD basics

- ESD-sensitive device awareness;
- ESD protected area (EPA) concept;
- grounding/equipotential concept;
- wrist strap / work-surface / packaging awareness;
- correct handling behavior;
- invisible latent-damage awareness.

#### Moisture sensitivity basics

- moisture-sensitive package concept;
- MSL labeling awareness;
- moisture-barrier bag/desiccant/HIC recognition;
- floor-life concept;
- dry storage awareness;
- bake awareness;
- why trapped moisture + reflow can damage packages.

Keep calculations and detailed J-STD-033 procedures at awareness/basic-use level.

Practical goal:

> **Recognize when a component requires protected handling and know not to continue when status is unknown.**

### 4.6 Solder Paste: What It Is and Why It Matters

Introduce solder paste as a process material students will physically see in SMT.

Topics:

- alloy powder + flux vehicle;
- paste versus wire/bar solder;
- tack;
- viscosity/rheology awareness;
- powder-size awareness;
- storage/conditioning awareness;
- stencil life/open time as product-dependent concepts;
- separation/drying/contamination concerns;
- basic paste-to-reflow relationship.

Use a simple composition/process-behavior figure.

Do not teach one universal storage life or temperature rule.

### 4.7 Stencils and Paste Printing Basics

Teach the physical printing concept before detailed printer controls.

Topics:

- stencil purpose;
- aperture;
- stencil thickness;
- pad/aperture relationship;
- squeegee concept;
- board support;
- aperture release;
- paste volume;
- area-ratio concept at applied level;
- too much/too little/misaligned paste;
- stencil cleanliness.

Include one simple area-ratio calculation and one good/bad print comparison.

### 4.8 Solder-Paste Printer: Hardware, Setup, and Basic Process Controls

Combine the former printer-hardware, setup, and parameter sections into one beginner-friendly machine section.

Recognize:

- stencil frame;
- squeegees;
- board support;
- clamping;
- vision/alignment;
- understencil cleaning;
- paste bead;
- conveyor/board handling.

Basic setup sequence:

> **load product/stencil -> verify board support -> align -> establish basic recipe -> print first board -> inspect -> adjust only with evidence**

Introduce only the most important adjustable variables:

- squeegee speed;
- pressure/force;
- separation;
- board support;
- cleaning frequency.

Use representative scales only when technically useful.

### 4.9 Print Quality and Solder Paste Inspection (SPI)

Combine print-defect recognition and SPI feedback.

Teach:

- what good paste deposits look like;
- insufficient/excess paste;
- offset/misalignment;
- bridging/smearing;
- clogged aperture awareness;
- SPI measurements:
  - height;
  - area;
  - volume;
  - offset;
- 3D SPI awareness;
- trend/map interpretation;
- false-call/threshold awareness;
- SPI as process evidence, not an automatic root-cause answer.

Applied task:

> Given a simple SPI map or deposit data, identify what looks abnormal and what print-related item should be checked next.

### 4.10 Component Supply Formats, Feeders, and Nozzles

Teach the physical supply side of placement.

Recognize:

- tape-and-reel;
- trays;
- tubes/sticks;
- bulk awareness;
- feeders;
- feeder indexing;
- pickup location;
- nozzle;
- vacuum pickup;
- component size/shape constraints;
- feeder/nozzle compatibility.

Keep detailed setup optimization for later job experience.

### 4.11 Pick-and-Place Machine: How It Works

Teach a simplified machine architecture.

Recognize:

- board conveyor/support;
- feeder bank;
- placement head;
- nozzles;
- vacuum;
- component camera;
- board camera;
- X-Y motion;
- rotation;
- fiducials.

Basic operating sequence:

> **identify board -> identify component -> pick -> inspect/center -> move -> rotate -> place**

Use a clear machine-anatomy figure.

### 4.12 Placement Data, Vision, Fiducials, and Basic Alignment

Introduce only the data needed to understand how the machine knows where to place a part.

Topics:

- reference designator;
- X/Y coordinates;
- rotation;
- board side;
- component package/library awareness;
- CAD/centroid/PnP data;
- coordinate origin;
- board fiducials;
- local fiducials awareness;
- camera alignment;
- board shift/rotation correction.

Use one small representative placement-data table and one fiducial-correction figure.

Do not teach advanced machine programming.

### 4.13 Placement Setup, Changeover, and Common Placement Problems

Bring placement concepts together at the machine level.

Teach:

- load correct program;
- verify feeders/components;
- nozzle/tool selection;
- board support;
- first-board/setup check;
- feeder replenishment/changeover awareness;
- accuracy versus repeatability;
- rated throughput versus actual production throughput awareness.

Common problems:

- missing component;
- wrong component;
- wrong polarity/orientation;
- shifted component;
- dropped component;
- pickup failure;
- nozzle/feeder issue awareness.

Keep line-balancing and advanced optimization at awareness level.

### 4.14 Reflow Oven and Thermal Profile Basics

Introduce the machine and the physical heating process together.

Recognize:

- conveyor;
- heating zones;
- convection;
- cooling zone;
- exhaust/atmosphere awareness;
- board transport.

Teach the basic profile concepts:

- ramp/preheat;
- soak awareness;
- time above liquidus;
- peak temperature;
- cooling;
- board/component thermal differences.

Use a simple temperature-versus-time profile before introducing profiling hardware.

### 4.15 Measuring and Verifying a Reflow Profile

Teach the job-ready profiling workflow at basic level.

Topics:

- thermocouples;
- thermocouple attachment;
- profiling board;
- multiple measurement locations;
- oven recipe versus actual board temperature;
- hot/cold component locations;
- comparing measured data with the applicable paste/component/process requirements;
- basic recipe adjustment logic;
- rerun/verify.

Use a worked multi-thermocouple example with supplied process limits.

Do not turn this into advanced thermal modeling.

### 4.16 Common SMT Defects Across Print, Place, and Reflow

Integrate the three major SMT stages after students know all of them.

Representative defects:

- insufficient solder;
- bridging;
- solder balls;
- tombstoning;
- skew/shift;
- opens;
- non-wetting/poor wetting;
- lifted or misplaced components;
- BGA/hidden-joint defect awareness.

For each case, emphasize multiple possible sources:

- design/land pattern;
- paste printing;
- placement;
- component/board condition;
- reflow profile;
- handling/material status.

Use the recurring model:

> **Observation -> evidence -> likely mechanism -> check the upstream process -> next action**

Do not blame every solder defect on reflow.

### 4.17 Through-Hole Components and Insertion

Introduce THT physically before wave/selective soldering.

Topics:

- common THT components;
- lead/pin through plated hole;
- manual versus automated insertion awareness;
- lead forming/cutting;
- polarity/orientation;
- component seating;
- clinching/retention awareness;
- connector/transformer examples;
- press-fit awareness.

Connect to Chapter 3 hole/clearance knowledge without reteaching it.

### 4.18 Wave Soldering: Equipment, Process, and Common Problems

Combine hardware, setup, process control, and basic troubleshooting.

Recognize:

- fluxer;
- preheat;
- solder pot;
- pump/wave;
- conveyor;
- pallet/fixture awareness;
- cooling/exit.

Teach the sequence:

> **flux -> preheat -> wave contact -> drain/separate -> cool**

Introduce only the process variables students need to recognize:

- conveyor speed;
- preheat;
- solder-pot temperature;
- board angle/contact/dwell awareness;
- flux application.

Common issues:

- bridging;
- insufficient hole fill;
- icicles/excess solder;
- poor wetting;
- skips;
- shadowing.

### 4.19 Selective and Hand Soldering: When and How They Are Used

Treat selective and hand soldering at job-ready recognition/basic-use level.

#### Selective soldering

- why selective soldering is used;
- fluxing;
- localized preheat;
- mini-wave/nozzle;
- programmed path;
- keep-out/access;
- fixture awareness;
- basic defect causes.

#### Hand soldering

- iron/station;
- tip;
- temperature-control awareness;
- flux;
- solder wire;
- joint heating;
- component/PCB damage risk;
- when hand soldering is appropriate.

Do not attempt to certify soldering workmanship through the textbook.

### 4.20 Planning Mixed SMT/THT and Double-Sided Assembly

Now that students understand the processes, ask them to plan a route.

Representative cases:

- single-sided SMT;
- double-sided SMT;
- SMT + THT;
- SMT + selective solder;
- SMT + wave;
- pin-in-paste awareness;
- limited hand-soldered special components.

Decision factors:

- component side;
- package type;
- thermal exposure;
- gravity/retention;
- wave compatibility;
- access;
- fixture/pallet need;
- throughput/volume/mix;
- inspection/test sequence;
- rework implications.

Include one bounded process-planning case.

### 4.21 Depanelization and Secondary Assembly

Teach common physical operations after primary soldering.

#### Depanelization

Recognize:

- V-score;
- routed tabs/mouse bites;
- router depanelization;
- manual break-off only where intended;
- board support;
- bending/torsion risk;
- component/solder-joint risk near break areas.

#### Secondary assembly

Awareness of:

- press-fit connectors;
- odd-form components;
- shields/cans;
- brackets/standoffs/screws;
- heat-sink/TIM hardware awareness;
- labels;
- daughterboards/modules;
- staking/adhesives.

Keep detailed mechanical design in Chapter 8.

### 4.22 Cleaning and Protection Processes

Teach physical post-solder operations at recognition/application level.

#### Cleaning

- why some products/processes require cleaning;
- no-clean awareness;
- wash/rinse/dry sequence;
- aqueous/solvent/semi-aqueous awareness;
- drying/trapped-moisture risk;
- component/material compatibility.

#### Protection

- conformal coating purpose;
- masking/keep-outs;
- application-method awareness;
- cure;
- underfill awareness;
- potting/encapsulation awareness;
- rework/service/access tradeoffs.

Chapter 5 owns verification/acceptance evidence for these operations.

### 4.23 NPI and Manufacturing Job Package Basics

Introduce professional manufacturing documentation **after** students understand the processes it controls.

Keep this section shorter and recognition-oriented.

Students should recognize the purpose of:

- BOM;
- approved manufacturer/alternate information;
- assembly drawing;
- placement/PnP data;
- PCB/panel identity;
- stencil/paste information;
- work instructions;
- traveler/router;
- machine program/recipe;
- revision identifiers;
- inspection/test-plan awareness.

Introduce only the basic meaning of:

- NPI;
- prototype/pilot/staged build;
- engineering change;
- first-board/first-article awareness;
- process approval/qualification awareness.

Central question:

> **What information must the factory have to set up the processes we already learned?**

**Reuse plan:** relocate and simplify the strongest beginner-level content from the current Section 4.3 draft rather than discarding it.

### 4.24 Material Kitting and Line-Side Verification

Introduce material control after students understand reels, feeders, paste, boards, and MSL/ESD concepts.

Teach at basic job-readiness level:

- internal PN versus manufacturer PN;
- reel/tray/tube identity;
- quantity verification;
- lot/date-code awareness;
- barcode/2D verification;
- feeder ID/location;
- approved alternate awareness;
- solder-paste identity/status;
- moisture-status awareness;
- bare-PCB revision/lot;
- return-to-stock identity/status.

Keep one simple quantity calculation and one feeder/material verification example.

Central rule:

> **Correct material, correct identity, correct condition, correct location, correct job.**

**Reuse plan:** relocate and significantly simplify the current Section 4.4 draft.

### 4.25 Changeover, First-Board Verification, and Production Readiness

Bring process, machine, documents, and materials together.

Teach a practical startup/changeover checklist:

- correct product/revision;
- correct board;
- correct materials;
- correct stencil/tooling;
- correct machine programs/recipes;
- correct feeders/nozzles;
- correct board orientation;
- first print/SPI check;
- first placement check;
- first reflow/profile/inspection awareness;
- reaction/hold condition.

Distinguish:

- local machine setup check;
- first-board/first-article awareness;
- broader production release.

Keep advanced NPI/process-qualification systems at awareness level.

### 4.26 Integrated Factory-Floor Case: Plan, Build, and Troubleshoot

Use one chapter-level applied case to reinforce job readiness.

Provide a simplified product containing:

- SMT passives;
- one or two IC packages;
- one hidden-joint package awareness item;
- one THT connector;
- supplied BOM/placement/material information;
- supplied SPI/profile/inspection evidence.

Ask students to:

1. choose a reasonable process route;
2. identify the major machines;
3. identify key setup inputs;
4. interpret one print/placement/reflow problem;
5. select the next evidence/check;
6. recognize one production-readiness issue.

The case should emphasize engineering judgment, not expert optimization.

### 4.27 Chapter Summary

Summarize the learning path:

> **see the factory -> understand soldering -> print paste -> place components -> reflow -> complete THT/secondary operations -> prepare/control the job**

Reinforce:

- major equipment;
- physical process mechanisms;
- basic process evidence;
- common defects;
- material/handling awareness;
- mixed-technology planning;
- entry-level troubleshooting;
- job-readiness documentation/control awareness.

### 4.28 Practice Problems

Provide job-oriented problems covering:

- process/equipment recognition;
- SMT/THT/mixed route recognition;
- soldering/wetting;
- stencil area ratio/basic paste-volume reasoning;
- print/SPI interpretation;
- feeder/nozzle/component-supply recognition;
- placement coordinate/fiducial interpretation;
- reflow-profile interpretation;
- SMT defect evidence;
- THT/wave/selective/hand-process recognition;
- mixed-process planning;
- depanelization/secondary-process awareness;
- job-package/material-verification basics;
- first-board/readiness decisions.

Where values are product/equipment dependent, provide the controlling data in the problem.

### 4.29 Practice Problem Keys

Provide the synchronized deterministic answer key for Section 4.28 using identical problem numbering and titles.

### Applied Chapter Elements

Recommended chapter-level elements:

- factory-floor map + follow-one-board route;
- SMT/THT/mixed-technology recognition figure;
- solder wetting/flux figure;
- ESD/MSL handling figure;
- solder-paste composition/behavior figure;
- stencil/aperture/area-ratio worked example;
- printer anatomy/setup figure;
- SPI map/deposit example;
- feeder/nozzle/component-supply figure;
- pick-and-place anatomy figure;
- placement-data/fiducial example;
- reflow-oven + thermal-profile figures;
- SMT cross-process troubleshooting case;
- THT insertion figure;
- wave-solder process figure;
- selective/hand-solder comparison;
- mixed-technology planning case;
- depanelization/secondary-assembly example;
- cleaning/protection process awareness figure;
- concise job-package example;
- material/feeder verification example;
- first-board/readiness checklist;
- integrated factory-floor case.

### Authoring/Verification Cautions

- Preserve the MET406 lecture's **introductory applied level** as the pedagogical baseline.
- Do not expand reference-book depth automatically into public teaching depth.
- Keep the chapter centered on **how the PCBA is physically built**.
- Teach the physical process before professional control systems.
- Keep NPI/job-package/material-control content concise and job-recognition oriented.
- Do not attempt to make students expert process engineers.
- Prefer one useful worked example or troubleshooting case over several pages of terminology.
- Use representative values when they teach engineering scale, but identify their source/context.
- Do not present one universal stencil, printer, placement, reflow, wave, or selective-solder recipe.
- Do not teach advanced machine programming or advanced metallurgy.
- Do not blame every defect on the last process step; preserve cross-process reasoning.
- Keep detailed inspection/test strategy, acceptance, quality systems, SPC, root cause, genealogy/MES, maintenance/calibration, and formal change control in Chapter 5.
- Keep signal/power integrity in Chapter 6.
- Keep detailed thermal design in Chapter 7.
- Keep mechanical/thermomechanical design in Chapter 8.
- Keep reliability/life physics in Chapter 9.
- Explain standards by role; do not reproduce proprietary acceptance criteria.

### Primary Reference Anchors

- Completed Chapters 1-3, especially Chapter 3 release/DFM content.
- MET406 Chapter 4 instructional material as the **primary scope/level/sequence baseline**, technically rechecked.
- MET406 assembly laboratories:
  - Lab #2 SMT Assembly Troubleshooting;
  - Lab #3 THT Assembly Troubleshooting;
  - Lab #4 Mixed SMT/THT Assembly Planning and SPC Troubleshooting.
- Tummala, *Fundamentals of Microsystems Packaging*, for verification and process clarification.
- Tummala, *Fundamentals of Device and Systems Packaging*, for package-to-board manufacturing context.
- Coombs, *Printed Circuits Handbook*, for assembly-process/equipment verification.
- Blackwell, *The Electronic Packaging Handbook*, for electronics-manufacturing/process context.
- Current material/equipment/component documentation when representative process values are used.
- Current official standards/resources by role, without reproducing proprietary criteria.

---

## Chapter 5 - PCB Assembly Quality, Test, and Manufacturing Engineering

> **Pedagogical redesign note (2026-09-22):** Chapter 5 is redesigned for entry-level Engineering Technology readers. The previous outline contained appropriate professional topics but risked becoming a compressed quality-engineering/manufacturing-engineering course. The revised sequence begins with **evidence students can see and interpret**, then moves to inspection and test, then to basic production metrics and process variation, and only afterward introduces higher-level quality/manufacturing systems at awareness level.

### Chapter Purpose

Chapter 4 answers:

> **How is the PCBA physically built?**

Chapter 5 asks:

> **How do we know whether the board/process looks normal, what evidence can we collect, what should we do when something does not pass, and how do engineers use basic manufacturing data to improve the process?**

The goal is not to make students expert quality engineers, test engineers, SPC specialists, or MES specialists.

The goal is to make an entry-level MET graduate able to:

- recognize common inspection/test methods;
- understand what each method can and cannot tell them;
- interpret basic manufacturing evidence;
- recognize abnormal conditions;
- calculate a few important production metrics;
- understand basic process variation;
- use simple prioritization/root-cause tools;
- know when to stop/hold/escalate;
- recognize the professional systems they will learn more deeply on the job.

### MET Entry-Level Job-Readiness Depth Rule

Use the same four depth levels as Chapter 4.

#### Must understand

- inspection versus test versus process monitoring versus acceptance;
- manual/AOI/X-ray basic capabilities;
- electrical/functional test purpose;
- hold/nonconformance/rework basics;
- yield/FPY/defect/rework-rate meaning;
- process variation basics;
- control limits versus specification limits;
- Pareto and evidence-based root-cause thinking;
- containment versus corrective action.

#### Must recognize / use at a basic level

- ICT/flying probe;
- boundary scan/programming awareness;
- I-MR chart interpretation;
- basic Cp/Cpk meaning with supplied data;
- measurement-system awareness;
- traceability/product genealogy;
- basic maintenance/calibration/change-control concepts.

#### Awareness only

- Xbar-R and attribute charts beyond basic recognition;
- detailed Gage R&R studies;
- advanced test coverage/economics;
- formal MRB/CAPA systems;
- MES/connected-factory systems;
- formal validation/revalidation systems;
- advanced quality standards/application details.

#### Defer

- advanced SPC/statistics;
- advanced AOI/X-ray algorithms;
- detailed ICT fixture/test development;
- advanced digital test theory;
- formal quality-system auditing;
- enterprise MES/PLM architecture;
- specialist failure analysis and reliability physics.

### Learning-Sequence Rule

Teach Chapter 5 in the following progression:

> **see the evidence -> choose inspection/test -> respond to a problem -> summarize production data -> understand variation -> investigate causes -> recognize factory control systems**

This should feel like a natural extension of Chapter 4 rather than a separate graduate-level quality course.

### Learning Objectives

After completing the chapter, readers should be able to:

- distinguish inspection, test, process monitoring, workmanship/acceptance, and troubleshooting;
- explain what manual/visual inspection, AOI, and X-ray can and cannot reveal;
- distinguish major PCBA electrical-test methods and select a reasonable method for a supplied case;
- explain why a failed inspection/test result should lead to controlled hold/evaluation rather than an undocumented fix;
- describe basic rework/repair/modification control and the need for post-work verification;
- calculate and interpret yield, FPY, defect rate, and rework rate from supplied production data;
- use a Pareto chart to identify the largest contributors to a manufacturing problem;
- explain common-cause versus special-cause variation and interpret a basic I-MR chart;
- distinguish control limits from product/specification limits;
- explain the basic meaning of process capability (Cp/Cpk) using supplied stable-process data;
- use evidence, 5-Why, and fishbone/Ishikawa at an introductory level to organize a root-cause investigation;
- distinguish containment, corrective action, and effectiveness verification;
- recognize traceability, MES, maintenance, calibration, process-change control, safety, and standards as professional manufacturing systems without needing expert-level mastery.

### Chapter 4 / Chapter 5 Boundary Rule

> **Chapter 4 builds the PCBA. Chapter 5 observes, inspects, tests, interprets evidence, responds to abnormal conditions, and controls/improves the process.**

Do not reteach machine operation unless a brief process reminder is required to interpret evidence.

### Evidence and Acceptance Rule

Throughout Chapter 5 distinguish:

> **observation/measurement -> process-monitoring rule -> engineering/product requirement -> workmanship/acceptance criterion**

Do not imply:

- machine alarm = product defect;
- inspection pass = stable process;
- stable process = within specification;
- test pass = every manufacturing feature is defect free;
- control limit = specification limit;
- rework automatically restores product without verification.

### Practical Troubleshooting Rule

Use a beginner-friendly recurring model:

> **Observation -> Evidence -> Likely Process/Mechanism -> Next Check -> Contain/Escalate if Needed**

Only later sections should extend this to formal corrective action.

### 5.0 Chapter Overview

Provide a concise chapter opener that:

- transitions from Chapter 4's completed PCBA to manufacturing evidence, inspection, test, and process improvement;
- summarizes the Chapter 5 scope and practical purpose;
- contains the Chapter 5 learning objectives;
- gives the chapter path from evidence and inspection/test through response, production data, variation, root cause, and manufacturing-control systems;
- preserves the Chapter 4/Chapter 5 boundary and does not duplicate the detailed evidence framework of Section 5.1.

### 5.1 From Built PCBA to Manufacturing Evidence

Begin directly from the Chapter 5 overview and focus on the first evidence questions.

Introduce the basic questions:

- What does the board look like?
- What can we measure?
- What can inspection see?
- What can electrical test prove?
- What evidence tells us a process may be drifting?
- What happens if something does not pass?

Distinguish at recognition level:

- inspection;
- test;
- process monitoring;
- acceptance;
- troubleshooting.

Use one simple evidence-flow diagram.

### 5.2 Inspection, Test, Workmanship, and Acceptance: Different Questions

Establish the framework before individual methods.

Teach:

- process evidence versus product evidence;
- visible feature versus hidden feature;
- structural versus electrical versus functional evidence;
- workmanship/acceptance criteria;
- customer/product requirement;
- standards by role.

Introduce only the most important standards roles:

- J-STD-001;
- IPC-A-610;
- product/customer requirements.

Keep the large standards catalog for Section 5.29 awareness.

Central question:

> **What are we trying to know, and what evidence can answer that question?**

### 5.3 Incoming Material Quality and Solderability Awareness

Keep this short and practical.

Recognition-level incoming checks:

- correct part/PCB identity;
- packaging condition;
- visible damage/contamination;
- bare-board finish condition;
- solder-paste/flux/alloy identity/status;
- MSL packaging/status awareness;
- suspect/counterfeit escalation awareness;
- supplier deviation/change awareness.

Introduce solderability as:

> **Can the intended metal surface be wetted by the soldering process under the applicable conditions?**

Awareness only:

- component-lead/termination solderability;
- PCB land/PTH solderability;
- J-STD-002 / J-STD-003 roles;
- wetting-balance/dip-and-look awareness.

Do not teach detailed incoming-quality systems.

### 5.4 Manual and Visual Inspection

Teach what a technician/engineer can see directly.

Look for:

- component presence;
- wrong orientation/polarity;
- obvious misplacement;
- visible solder-joint condition;
- bridging;
- contamination/residue;
- mechanical damage;
- label/marking issues.

Teach:

- lighting;
- magnification;
- line-of-sight limits;
- hidden-joint limits;
- human consistency limits.

Use good/bad examples with carefully controlled acceptance language.

### 5.5 Automated Optical Inspection (AOI)

Teach the machine at practical recognition level.

Recognize:

- cameras;
- lighting;
- 2D/3D awareness;
- CAD/library/program inputs;
- component presence/orientation;
- visible solder/lead features;
- height/shadowing;
- false calls;
- escapes;
- review station.

Applied task:

> Given an AOI result/map, decide what the system is flagging and what a human should check next.

Do not teach AOI algorithms.

### 5.6 X-Ray / AXI and Hidden-Joint Inspection

Teach why X-ray exists.

Examples:

- BGA;
- QFN/BTC;
- hidden solder joints.

Recognize:

- 2D X-ray;
- angled/oblique awareness;
- CT/3D awareness;
- voiding;
- bridges;
- alignment;
- missing/insufficient connection awareness;
- head-in-pillow awareness.

Emphasize interpretation limits.

### 5.7 Comparing Inspection Methods and Destructive Analysis Awareness

Bring visual, AOI, and X-ray together.

Use a simple comparison:

| Method | What it can see | What it cannot prove | Typical use |

Introduce:

- cross-section/microsection awareness;
- destructive nature;
- when deeper physical evidence is needed.

Keep detailed failure analysis in Chapter 9.

### 5.8 Electrical Test Basics and Strategy

Before individual test systems, answer:

> **What can electrical test tell us that visual inspection cannot?**

Distinguish:

- bare-board electrical test;
- assembled-board structural test;
- ICT;
- flying probe;
- boundary scan;
- programming;
- functional test.

Basic selection factors:

- fault type;
- access;
- product volume;
- fixture cost;
- test time;
- diagnostic information.

### 5.9 In-Circuit Test (ICT) and Flying Probe

Compare the two structural electrical-test methods in one beginner-friendly section.

#### ICT

- bed-of-nails;
- test points;
- opens/shorts/component-measurement awareness;
- high fixture cost;
- fast test;
- high-volume usefulness.

#### Flying probe

- moving probes;
- low dedicated-fixture cost;
- slower;
- NPI/low-volume usefulness.

Teach the tradeoff, not detailed circuit-test theory.

### 5.10 Boundary Scan, Programming, and Digital-Test Awareness

Recognition-level topics:

- JTAG/boundary-scan concept;
- structural digital access;
- programming of programmable devices;
- connector/fixture access;
- limitations/product dependence.

Keep digital-test theory minimal.

### 5.11 Functional Test

Teach:

- power-up;
- firmware/software;
- communication;
- inputs/outputs;
- sensors/actuators awareness;
- voltage/current checks;
- fixtures/cabling;
- safety;
- cycle-time awareness.

Key distinction:

> **A product can pass functional test without proving that every manufacturing feature is defect free.**

Include one simple test-method selection case across Sections 5.8-5.11.

### 5.12 When a Board Does Not Pass: Hold, Nonconformance, and Escalation

Teach the first job-ready reaction before formal quality-system details.

Simple workflow:

> **detect -> identify -> stop/hold -> segregate if needed -> document -> notify/escalate -> authorized disposition**

Introduce at awareness level:

- nonconformance;
- hold/quarantine;
- NCR awareness;
- MRB awareness;
- use-as-is/rework/repair/scrap/return awareness.

Key rule:

> **Detection of a problem does not automatically authorize a fix.**

### 5.13 Rework, Repair, and Modification

Distinguish:

- rework;
- repair;
- modification.

Teach:

- authorization;
- controlled instruction;
- hand solder/hot air awareness;
- component removal/replacement;
- thermal damage;
- pad/trace damage;
- repeated heating;
- post-work inspection/test;
- documentation/traceability.

Use IPC-7711/21 by role only.

### 5.14 Cleanliness and Coating Verification Awareness

Build on Chapter 4's physical cleaning/protection processes.

#### Cleanliness

- visible residue/particulates;
- ionic/process-residue test awareness;
- drying/moisture evidence;
- product/process-specific limits.

#### Coating/protection

- coverage;
- masking/keep-outs;
- cure-status awareness;
- obvious bubbles/voids/missed areas;
- connector/test-point concerns.

Keep chemistry and formal qualification depth out.

### 5.15 Yield, FPY, Defect Rate, and Rework Rate

Introduce production metrics **before** SPC.

Teach and calculate:

- yield;
- first-pass yield (FPY);
- defect count/rate;
- rework rate;
- basic DPMO awareness only if useful.

Use one small production-data table.

Emphasize:

> **A metric summarizes what happened; it does not explain why.**

### 5.16 Production Throughput and Bottlenecks

Teach practical line-performance basics.

Topics:

- cycle time;
- throughput;
- station bottleneck;
- downtime awareness;
- rated machine speed versus actual line output;
- changeover/mix effects.

Use a simple line example.

Do not teach advanced operations-research/line-balancing methods.

### 5.17 Pareto Analysis for PCB Assembly Problems

Teach one of the most useful entry-level data tools.

Topics:

- count defects by category;
- sort largest to smallest;
- cumulative contribution awareness;
- focus on the largest contributors;
- avoid assuming largest category = root cause.

Use a defect Pareto example.

### 5.18 Measurement Basics and Gage R&R Awareness

Keep this concise.

Teach:

- measurement variation exists;
- repeatability versus reproducibility at recognition level;
- why bad measurement systems create misleading process conclusions;
- calibration versus measurement-system capability.

Gage R&R is **awareness/basic interpretation**, not a full statistical study.

### 5.19 Process Variation and Control-Chart Fundamentals

Introduce SPC conceptually.

Teach:

- variation is normal;
- common-cause versus special-cause;
- center line;
- control limits;
- points/patterns/trends;
- reaction plan concept.

Use intuitive manufacturing examples before formulas.

### 5.20 I-MR Charts: A First Applied Control Chart

Make I-MR the primary control chart students actually use.

Teach:

- individual measurements;
- moving range;
- center line;
- supplied control limits;
- out-of-control point/pattern recognition;
- basic interpretation.

Use supplied limits or a simple worked calculation depending on chapter scope.

### 5.21 Xbar-R and Attribute Charts: Awareness and When Used

Do not teach these with the same depth as I-MR.

Recognize:

- Xbar-R for subgrouped continuous measurements;
- p-chart for proportion defective;
- c-chart for counts under appropriate conditions.

Focus on:

- what kind of data each chart uses;
- why the chart type changes.

Avoid advanced derivations.

### 5.22 Control Limits versus Specification Limits

This distinction is essential.

Teach:

- control limits = process behavior;
- specification/engineering limits = product requirement;
- a stable process can be off-target/out of spec;
- an unstable process can sometimes produce parts within spec temporarily.

Use one clear four-case graphic.

### 5.23 Process Capability: Cp/Cpk Basics

Teach only after stability/control-limit concepts.

At basic level:

- process spread versus specification width;
- centering awareness;
- Cp versus Cpk;
- higher is generally better only under appropriate stable-process assumptions;
- capability index is not a substitute for process understanding.

Use supplied mean/standard deviation/specification data for a simple example.

Do not turn this into an advanced capability/statistics section.

### 5.24 Root-Cause Analysis: Evidence, 5-Why, and Fishbone

Use a practical troubleshooting model.

Start with:

> **Observation -> Evidence -> Possible Mechanisms -> Competing Causes -> Next Check**

Then introduce:

- 5-Why as a questioning tool;
- fishbone/Ishikawa as a cause-organizing tool;
- people/machine/material/method/measurement/environment categories where useful.

Important cautions:

- do not force exactly five whys;
- do not accept the first plausible cause;
- do not treat a fishbone list as proof.

Use a PCB assembly case.

### 5.25 Containment, Corrective Action, and Verification

Teach the difference among:

- containment;
- correction;
- corrective action;
- verification of effectiveness.

Simple sequence:

> **protect product/customer -> correct immediate issue -> remove verified cause -> verify improvement -> update controlled process/information**

Keep formal CAPA/8D systems at awareness level.

### 5.26 Traceability and Product Genealogy Basics

Teach why manufacturing records matter.

Recognize links among:

- product serial/lot;
- PCB lot;
- component/material lot;
- machine/program/recipe;
- operator/station;
- inspection/test result;
- rework/repair record;
- revision.

Keep the focus on answering:

> **What happened to this board, and what other boards may be affected?**

### 5.27 MES and Connected Production Awareness

Awareness-level introduction only.

Explain that MES/connected-line systems can help:

- identify jobs/products;
- collect machine/process data;
- maintain genealogy;
- coordinate status;
- support dashboards/alarms;
- exchange data among equipment.

Introduce IPC-CFX/HERMES by role only.

Do not teach enterprise architecture.

### 5.28 Keeping the Process Trustworthy: Maintenance, Calibration, and Change Control

Combine three professional systems at awareness/basic-use level.

#### Maintenance

- preventive maintenance;
- cleaning/lubrication/consumables awareness;
- equipment condition;
- failure versus scheduled maintenance.

#### Calibration

- measurement reference;
- due date/status;
- out-of-calibration awareness;
- traceability.

#### Process change control

- recipe/program/tool/material changes;
- review/approval;
- re-verification/revalidation awareness;
- controlled documentation.

Central message:

> **Process evidence is trustworthy only when equipment, measurement, and changes are controlled.**

### 5.29 Safety, Environmental, and Standards Awareness

Keep this concise and workplace-oriented.

Safety/environment:

- heat;
- moving equipment;
- compressed air/vacuum awareness;
- flux/fumes/chemicals;
- solder/lead-handling awareness where applicable;
- ESD;
- PPE/local rules;
- waste/environmental awareness;
- RoHS context awareness.

Standards by role:

- J-STD-001;
- IPC-A-610;
- IPC-7711/21;
- J-STD-020/J-STD-033;
- IPC-1602;
- J-STD-002/J-STD-003;
- ANSI/ESD S20.20 / IEC 61340-5-1;
- IPC-1782;
- IPC-CFX/HERMES awareness.

Do not reproduce proprietary acceptance criteria or attempt standards certification.

### 5.30 Integrated Manufacturing-Engineering Case Study

Use one final job-ready case combining Chapter 4 and Chapter 5 knowledge.

Provide:

- product/process route;
- one or two inspection images/results;
- electrical/functional test result;
- basic production metrics;
- short control-chart or trend data;
- traceability information;
- one process/material/setup change clue.

Ask students to:

1. identify the abnormal evidence;
2. decide whether product should be held;
3. choose the next inspection/test/data check;
4. identify plausible upstream process mechanisms;
5. use Pareto/control-chart/root-cause logic where appropriate;
6. recommend containment and a bounded corrective action;
7. state how effectiveness should be verified.

The case should reward sound entry-level reasoning, not expert-level diagnosis.

### 5.31 Chapter Summary

Summarize the learning path:

> **inspect/test -> respond -> summarize data -> understand variation -> investigate cause -> control the manufacturing system**

Reinforce:

- evidence limitations;
- method selection;
- controlled reaction;
- basic metrics;
- basic SPC;
- root-cause thinking;
- traceability;
- professional systems awareness.

### 5.32 Practice Problems

Provide deterministic, job-oriented problems covering:

- inspection/test method selection;
- visible versus hidden-joint evidence;
- AOI/X-ray interpretation;
- ICT/flying-probe/functional-test comparison;
- hold/nonconformance decisions;
- rework/repair distinctions;
- yield/FPY/defect/rework-rate calculations;
- throughput/bottleneck reasoning;
- Pareto analysis;
- measurement-system awareness;
- I-MR interpretation;
- chart-type recognition;
- control limits versus specifications;
- basic Cp/Cpk interpretation using supplied stable-process data;
- root-cause tool use;
- containment/corrective-action distinction;
- traceability/genealogy;
- maintenance/calibration/change-control awareness.

### 5.33 Practice Problem Keys

Provide the synchronized deterministic answer key for Section 5.32 using identical problem numbering and titles.

### Applied Chapter Elements

Recommended chapter-level elements:

- evidence-flow diagram;
- manual/AOI/X-ray comparison figures;
- representative AOI map/result;
- representative X-ray image;
- inspection-method comparison table;
- electrical-test method comparison;
- hold/nonconformance workflow;
- rework/repair distinction figure;
- production-metric worked example;
- throughput/bottleneck example;
- defect Pareto chart;
- measurement-system awareness example;
- I-MR chart worked example;
- Xbar-R/p/c chart recognition table;
- control-limit versus specification-limit figure;
- simple Cp/Cpk worked example;
- root-cause evidence case;
- containment/corrective-action workflow;
- traceability/genealogy record example;
- MES/connected-production awareness figure;
- maintenance/calibration/change-control comparison;
- integrated manufacturing-engineering case.

### Authoring/Verification Cautions

- Preserve the MET406 lecture/lab **introductory applied level**.
- Do not turn Chapter 5 into a full quality-engineering, SPC, test-engineering, or MES course.
- Start from evidence students can see and interpret.
- Teach I-MR more deeply than Xbar-R/p/c.
- Treat Gage R&R, MES, formal MRB/CAPA, connected-factory systems, and advanced capability analysis mainly as awareness/basic-use topics.
- Use equations only when they improve entry-level engineering judgment.
- Prefer supplied limits/data over long statistical derivations.
- Keep inspection/test method strengths and limitations practical.
- Do not imply one method proves all aspects of product quality.
- Explain standards by role, not proprietary criteria.
- Keep reliability/failure physics and qualification in Chapter 9.
- Keep Chapter 4 machine/process operation out of Chapter 5 except as short reminders needed to interpret evidence.

### Primary Reference Anchors

- Completed Chapter 4 process/equipment content.
- MET406 Chapter 4 instructional materials, especially inspection, test, rework, SPC, safety/environmental, and standards awareness, as the primary pedagogical baseline.
- MET406 assembly laboratories:
  - SMT troubleshooting;
  - THT troubleshooting;
  - mixed SMT/THT planning and SPC troubleshooting.
- Coombs, *Printed Circuits Handbook*, for inspection/test/process-control verification.
- Blackwell, *The Electronic Packaging Handbook*, for electronics-manufacturing quality/test context.
- Tummala, *Fundamentals of Microsystems Packaging*, for board-assembly manufacturing/inspection/test context.
- O'Connor and Kleyner only where basic statistics/reliability context is needed without displacing Chapter 9.
- NIST/SEMATECH or equivalent authoritative statistical resources for basic SPC/capability verification.
- Current equipment/manufacturer technical documentation for AOI/X-ray/test examples.
- Current official standards/resources by role, without reproducing proprietary criteria.

---

## Downstream Chapter Numbering After the Assembly-Chapter Split

The previous single Chapter 4 assembly chapter is now Chapters 4 and 5. The remaining planned book chapters therefore shift by one:

- **Chapter 6 - Signal and Power Integrity**
- **Chapter 7 - Thermal Management**
- **Chapter 8 - Mechanical and Thermomechanical Design**
- **Chapter 9 - Reliability, Qualification, and Failure Analysis**

When these downstream chapter outline blocks are next revised, use the new numbering consistently in:

- section numbers;
- cross-chapter references;
- figure numbers;
- practice-problem sections;
- image filenames;
- source-provenance entries;
- README/revision-history status text.
