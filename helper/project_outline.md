# Electronic Packaging Applications — Book Outline

## Chapter 2 - PCB Structure, Materials, and Fabrication

> **Revision note:** This Chapter 2 plan supersedes the Chapter 2 block in `project_outline(7).md`. All other chapters and book-level rules remain unchanged.

### Chapter Purpose

Use the completed Chapter 1 manufacturing pathway as the transition into the **bare PCB**. Chapter 1 established where the PCB fits in the complete electronic product; Chapter 2 now zooms into the separate PCB-manufacturing stream:

> **PCB materials -> PCB fabrication -> bare PCB**

The chapter should present the bare PCB as a **laminated electrical, mechanical, thermal, and manufacturing structure** and explain how its materials, geometry, stack-up, fabrication process, and quality affect later assembly, electrical performance, thermal behavior, mechanical behavior, and reliability.

The chapter should prepare readers to answer a practical industry question:

> **What is the bare PCB physically, how was it made, what controls its behavior, what can go wrong, and how should engineering information be communicated to the board fabricator?**

The chapter should not become a PCB-layout textbook, a fabrication-chemistry textbook, a detailed HDI/flex design course, or an early substitute for Chapters 3, 5, 6, 7, or 8.

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

### 2.1 From Chapter 1 to the Bare PCB: What a PCB Really Is

Use the completed Chapter 1 manufacturing map as the opening transition.

- Chapter 1 followed the full path from semiconductor devices to a finished electronic product.
- One manufacturing branch is now opened in detail:
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
  - later signal-integrity behavior.

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

Where useful, provide a clearly labeled **example fabricator capability table** for worked problems.

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

**Boundary:** Keep full laminate-composite and structural analysis for Chapter 7.

### 2.11 PCB Thermal Behavior

Use this section as a bridge to Chapter 6 rather than a complete thermal-design treatment.

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

**Boundary:** Thermal-resistance networks, convection, heat sinks, fans, and system cooling belong in Chapter 6.

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

Defer solder-joint fatigue, component cracking, assembly defects, and broader field reliability to Chapters 4, 7, and 8.

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

Numerical questions should clearly identify all assumptions and any example fabricator capability table being used.

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
- Keep Chapter 2 thermal content to PCB heat-flow awareness; detailed thermal design belongs in Chapter 6.
- Keep Chapter 2 defects focused on bare-board fabrication/material issues; defer solder-joint/assembly and field-life failures to later chapters.
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
