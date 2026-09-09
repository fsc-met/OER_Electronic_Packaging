# Electronic Packaging Applications — Book Outline

## Chapter 2 - PCB Structure, Materials, and Fabrication

> **Revision note:** This Chapter 2 plan supersedes the Chapter 2 block in `project_outline(7).md`. The Chapter 3 block added below reflects the latest approved Chapter 3 outline and QA review. Other chapters and book-level rules remain unchanged.

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
- a detailed SMT/THT assembly-process chapter;
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

### 3.1 DFM, DFA, DFT, and DFX

Establish the conceptual framework without turning the opening section into a broad DFX survey.

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

**Boundary:** Detailed solder-paste and reflow-process causes/corrections belong in Chapter 4.

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
- Separate manufacturability concerns from high-speed electrical-design concerns that belong in Chapter 5.

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

**Boundary:** Detailed test-equipment design and acceptance criteria are outside Chapter 3.

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

**Boundary:** Do not teach detailed rework procedures, temperatures, nozzle selection, or soldering technique; those are process topics for Chapter 4 or laboratory procedures.

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

**Boundary:** Keep this at design/DFM awareness level. Detailed machine programming, fixture design, and process settings belong outside Chapter 3.

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
- Keep high-speed impedance/routing effects for Chapter 5 except where brief awareness is needed to avoid misleading statements.
- Do not claim that X-ray inspection itself indicates poor DFM; hidden-joint packages may legitimately require X-ray.
- Keep detailed stencil printing, paste deposition, reflow profiles, wave/selective soldering, process optimization, and solder-joint defect troubleshooting in Chapter 4.
- Keep detailed thermal modeling in Chapter 6.
- Keep detailed mechanical, warpage/stress, vibration, and shock analysis in Chapter 7.
- Keep detailed reliability physics and life prediction in Chapter 8.
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
