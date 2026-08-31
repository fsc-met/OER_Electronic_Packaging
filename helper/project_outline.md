# Electronic Packaging Applications — Book Outline

## Working Title

**Electronic Packaging Applications: An Applied Introduction**

> **Project theme:** An applied OER for engineering technology and related applied-engineering readers who may have limited electrical-engineering background and want practical electronic-packaging knowledge for work in electronics manufacturing, packaging, product engineering, quality, thermal/mechanical design, and reliability.

**Status:** Working master outline. Chapters 1-6 are based primarily on revised instructional materials and current labs. Chapters 7-8 use earlier legacy materials as starting points and will be substantially redesigned. The outline is also informed by the uploaded reference library, current industry standards, professional-society resources, and benchmark university packaging courses.

**Research checkpoint:** August 29, 2026. Standards and industry references must be rechecked during chapter authoring because revisions continue to change.

---

# 1. Book Purpose, Audience, and Scope

## 1.1 Purpose

The book should help readers move from **seeing an electronic circuit as a schematic** to understanding the real engineered product that must be fabricated, assembled, powered, cooled, protected, tested, and kept reliable.

The central idea is:

> **Electronic packaging is the engineering that allows an electronic circuit to physically exist, be manufactured, survive its environment, and operate reliably.**

The book should develop the ability to recognize and solve practical packaging problems rather than reproduce advanced theory.

## 1.2 Intended Audience and Assumed Background

The intended reader comes from engineering technology or a related applied-engineering background and may have:

- basic engineering mathematics;
- introductory mechanics and strength of materials;
- basic materials knowledge;
- CAD experience;
- introductory thermodynamics/heat transfer;
- only limited circuit/electrical background;
- little or no prior exposure to PCB fabrication, electronics assembly, signal integrity, power integrity, or reliability engineering.

Relevant backgrounds include manufacturing, mechatronics, industrial, mechanical, electrical/electronics, product, quality, reliability, and other engineering technology or applied-engineering fields.

## 1.3 Career-Oriented Outcome

After completing the book, a reader should be prepared to contribute to work involving:

- PCB/PCBA manufacturing support;
- manufacturing/process engineering;
- DFM/DFA review;
- electronics assembly and soldering processes;
- quality and inspection;
- failure troubleshooting and root-cause analysis;
- PCB electrical-layout review at an introductory level;
- thermal design and simulation;
- mechanical packaging and vibration/shock assessment;
- reliability qualification and test planning;
- communication with electrical, manufacturing, mechanical, thermal, quality, and reliability engineers.

## 1.4 Applied Depth Rule

For every topic, the book should answer:

1. **What is it?**
2. **Why does it matter in an electronic product?**
3. **What can go wrong?**
4. **How can an engineer recognize or measure the problem?**
5. **What can the engineer change to improve the design or process?**

Equations should be included when they help make an engineering estimate or decision. Extended theory should be omitted or moved into optional sections.

## 1.5 Deliberate Scope Boundaries

The book is **not** intended to become:

- a semiconductor-device physics textbook;
- an IC fabrication textbook;
- a full circuit-analysis textbook;
- an electromagnetics textbook;
- an RF/microwave design textbook;
- an advanced CFD or FEA textbook;
- an advanced structural dynamics textbook;
- a mathematical statistics textbook;
- a specialist advanced-packaging/chiplet design textbook.

Advanced topics such as wafer-level packaging, fan-out, chiplets, 2.5D/3D integration, heterogeneous integration, liquid cooling, and advanced package substrates should be introduced as **industry context and future directions**, not treated at specialist depth.

---

# 2. Source and Technical-Verification Strategy

## 2.1 Source Priority During OER Development

Use sources in the following order:

1. **Earlier instructional materials and labs** - first reference for intended applied emphasis, pedagogy, terminology, and teaching sequence.
2. **Uploaded core reference books** - cross-check scope, physical explanations, equations, terminology, and established engineering practice.
3. **Current standards and official industry resources** - verify acceptance criteria, terminology, test practices, and current industry usage.
4. **Manufacturer application notes and technical documentation** - verify practical implementation, package data, thermal metrics, process behavior, and realistic examples.
5. **Peer-reviewed literature and professional-society resources** - verify specialized or evolving topics.

Earlier instructional materials are development starting points, **not unquestioned authorities**. Any questionable numerical value, equation, causal claim, or universal design rule should be verified before it is placed in the OER. Where an earlier source sequence differs from this master outline, the current eight-chapter book structure governs.

## 2.2 Core Reference Library Available to the Project

- Rao R. Tummala, *Fundamentals of Device and Systems Packaging: Technologies and Applications*, 2nd ed.
- Rao R. Tummala, *Fundamentals of Microsystems Packaging*.
- Ali Jamnia, *Practical Guide for the Reliable Packaging of Electronics: Thermal and Mechanical Design and Analysis*, 4th ed.
- Clyde F. Coombs Jr., *Printed Circuits Handbook*, 6th ed. (uploaded edition).
- Eric Bogatin, *Signal and Power Integrity - Simplified*, 3rd ed.
- Glenn R. Blackwell, ed., *The Electronic Packaging Handbook*.
- Dave S. Steinberg, *Vibration Analysis for Electronic Equipment*, 3rd ed.
- Patrick D. T. O'Connor and Andre Kleyner, *Practical Reliability Engineering*, 5th ed. (uploaded edition).
- Rao R. Tummala and Madhavan Swaminathan, *Introduction to System-on-Package (SOP)*.

These references are for technical study and verification. OER prose, figures, examples, problems, and labs must remain independently authored.

## 2.3 Important Current Standards/Industry Sources to Consult

The OER should introduce standards as **industry awareness**, not reproduce copyrighted requirements. Standards should be presented by role (design, fabrication, process, acceptance, test, qualification) so readers understand which type of document to consult.

### PCB design and fabrication

- IPC-2221 - generic printed-board design requirements
- IPC-2222 - sectional design standard for rigid printed boards
- IPC-6012 - qualification/performance specification for rigid printed boards
- IPC-A-600 - acceptability of printed boards
- IPC-2152 - current-carrying capacity of printed-board conductors
- IPC-TM-650 - printed-board/material test methods
- IPC-7352 - generic land-pattern design guidance
- IPC-2231 - DFX framework/guidelines for fabrication, assembly, testability, cost, reliability, environment, and reuse

### Assembly and workmanship

- IPC J-STD-001 - requirements for soldered electrical/electronic assemblies
- IPC-A-610 - acceptability of electronic assemblies
- IPC J-STD-005 - solder-paste requirements
- IPC-7527 - solder-paste application/stencil guidance
- IPC-7711/7721 - rework, modification, and repair
- IPC/JEDEC J-STD-033 - moisture/reflow-sensitive device handling
- ANSI/ESD S20.20 / IEC 61340-5-1 - ESD control programs

### Thermal characterization

- JEDEC JESD51 family - thermal characterization and thermal metrics
- manufacturer thermal-metric application notes (for example, TI guidance on \(\theta_{JA}\), \(\theta_{JC}\), and \(\Psi_{JT}\))

### Mechanical/environmental reliability

- IPC/JEDEC-9704 family - printed-circuit assembly strain-gage testing (verify current maintained revision/successor during authoring)
- IPC-9701 - thermal-cycling reliability of surface-mount solder attachments
- IEC 60068 family - vibration, shock, and environmental testing
- MIL-STD-810 - environmental engineering/testing framework when relevant to harsh environments

### Reliability qualification

- JEDEC JESD22 family - environmental/stress test methods
- JEDEC JESD47 - stress-test-driven qualification concepts
- applicable IPC, IEC, automotive, aerospace, or customer-specific requirements depending on product class

**Authoring rule:** Standards status above was researched during outline development (August 2026). Always check the current revision/status again before giving revision-specific information in the final OER.

---

# 3. Book-Level Learning Outcomes

After completing the book, readers should be able to:

1. Explain the purpose, hierarchy, and multidisciplinary functions of electronic packaging.
2. Describe how a PCB is constructed and how its materials and fabrication processes affect electrical, thermal, mechanical, and manufacturing performance.
3. Perform a practical DFM review and distinguish design rules, manufacturer capabilities, assembly constraints, and inspection/rework requirements.
4. Explain SMT, THT, mixed-technology assembly, soldering, inspection, testing, process control, and common assembly defects.
5. Apply basic electrical concepts to PCB interconnects and recognize common SI, PI, crosstalk, return-path, and EMI layout problems without requiring advanced EE theory.
6. Build and use simple thermal-resistance models; identify heat paths; compare cooling methods; and interpret thermal simulation results.
7. Explain major mechanical and thermomechanical failure mechanisms and evaluate basic PCB vibration, random vibration, shock, and mounting issues.
8. Explain practical reliability concepts, interpret basic life/reliability data, select appropriate accelerated tests, and connect failure mechanisms to qualification and design improvement.
9. Use an engineering workflow that links **design -> manufacturing -> inspection/test -> field environment -> failure mechanism -> corrective action**.
10. Communicate packaging findings using concise engineering tables, plots, drawings, calculations, and recommendations.

---

# 4. Overall Book Architecture

| Chapter | Title | Main Engineering Question |
|---|---|---|
| 1 | Introduction to Electronic Packaging | How do electronic devices become circuits, integrated circuits, packaged components, PCB assemblies, and finished products, and what role does packaging play at each level? |
| 2 | PCB Structure, Materials, and Fabrication | What is a PCB physically, how is it manufactured, and how do materials/stack-up choices affect performance and reliability? |
| 3 | Design for Manufacturability in Electronic Packaging | Can the PCB/product design be fabricated, assembled, inspected, tested, and reworked consistently at acceptable cost and yield? |
| 4 | Electronic Assembly Technologies | How are electronic components attached to PCBs, how are assembly processes controlled, and how are defects detected and corrected? |
| 5 | Electrical Design Considerations | How does physical PCB/package geometry affect signals, power delivery, noise, and EMI? |
| 6 | Thermal Design Considerations | Where does heat go, how hot will components become, and what packaging changes can control temperature? |
| 7 | Mechanical Design Considerations | How do boards, components, solder joints, and enclosures survive thermal strain, bending, vibration, and shock? |
| 8 | Reliability of Electronic Packaging | How do we connect mission profile, failure mechanisms, life data, qualification tests, and design improvements to product reliability? |

The progression is intentionally practical:

> **Understand it -> build it -> assemble it -> make it electrically behave -> keep it cool -> keep it mechanically intact -> make it last.**

---

# 5. Standard Chapter Pattern

Each chapter should normally contain:

1. **Why This Matters in Industry**
2. **Learning Objectives**
3. **Key Terms**
4. **Core Concepts**
5. **Engineering Decisions / Design Rules**
6. **Failure or Troubleshooting Examples**
7. **Worked Example(s)**
8. **Engineering Practice / Standards Awareness**
9. **Applied Activity or Lab Connection**
10. **Practical Checklist**
11. **Chapter Summary**
12. **Practice Problems**
13. **Practice Problem Keys**
14. **Further Reading / References**

### Standard Chapter-End Structure

Beginning with Chapter 1 and continuing through every later chapter, the public chapter ending should use three separate numbered sections:

> **Chapter Summary -> Practice Problems -> Practice Problem Keys**

The **Practice Problems** section should use deterministic questions wherever practical so that each published problem has one unambiguous answer or answer set. Appropriate formats include matching, classification, sequencing, calculation, truth tables, interpretation of supplied data, and tightly bounded engineering decisions.

The **Practice Problem Keys** section should:

- use exactly the same problem numbering and titles as the corresponding Practice Problems section;
- provide the deterministic answer and a concise explanation where useful;
- be revised in the same update whenever a problem is added, removed, renumbered, or changed in a way that affects the answer.

Open-ended applied activities, design exercises, labs, troubleshooting cases, and product-identification tasks may still appear elsewhere in the chapter, but they should not be mixed into the deterministic keyed practice set unless a unique grading answer is intentionally defined.

Recurring applied boxes should include:

- **Engineering Decision** - what variable should be changed and why?
- **Troubleshooting** - symptom -> mechanism -> causes -> corrective action.
- **Industry Practice** - how the concept appears in a real factory/design workflow.
- **Common Mistake** - common misunderstanding or misuse of a rule/equation.
- **Standards Awareness** - where industry standards become relevant without reproducing proprietary criteria.

## 5.1 Content-Level Labels

To keep the book applied and prevent scope growth, content can be marked during authoring as:

- **Core** - expected knowledge for every reader;
- **Applied Awareness** - important industry context that readers should recognize but not analyze in depth;
- **Optional Enrichment** - deeper theory, derivations, or specialized technology that may be omitted without breaking the main learning path.

## 5.2 Front Matter

The finished OER should include:

- preface and intended audience;
- book theme and learning philosophy;
- how to use the book for guided study or self-study;
- assumed prerequisite knowledge;
- unit convention (SI primary; common industry imperial units where useful);
- safety and standards-use note;
- notation and acronym conventions.

## 5.3 Back Matter

The finished OER should include:

- glossary and acronym list;
- quick-reference engineering equations;
- unit conversion/reference tables;
- standards and professional-organization index;
- lab/applied-activity index;
- references and figure/data attributions;
- revision history, author/credits, license, and OER reuse information.

---

# 6. Detailed Chapter Outline

## Chapter 1 - Introduction to Electronic Packaging

### Chapter Purpose

Establish electronic packaging as the multidisciplinary engineering bridge between semiconductor devices and usable electronic products. The chapter intentionally follows the physical and functional progression from **electrical/semiconductor foundations -> devices -> circuits -> integrated circuits -> IC fabrication -> IC packaging -> PCB assembly -> finished product**.

The chapter provides enough electrical, semiconductor, and circuit background to understand the packaging topics that follow without turning Chapter 1 into a semiconductor-physics, circuit-analysis, or IC-fabrication textbook.

### Learning Objectives

After completing the chapter, readers should be able to:

- define electronic packaging in practical terms;
- distinguish circuit function from physical packaging and product realization;
- explain why packaging affects cost, manufacturability, performance, and reliability;
- describe basic semiconductor behavior at an introductory applied level;
- recognize BJTs and MOSFETs as active semiconductor devices and explain their basic control behavior;
- distinguish active semiconductor devices from integrated passive devices such as resistors, capacitors, and inductors;
- explain how devices are interconnected to create analog, digital, and mixed-signal circuits;
- explain how simple logic functions can be combined into larger functional circuits;
- distinguish a discrete-component circuit from a monolithic integrated circuit;
- describe the major IC-fabrication steps at a conceptual level;
- explain why a bare IC die must be interconnected, protected, and packaged;
- distinguish **IC fabrication**, **IC packaging**, **PCB fabrication**, and **PCB assembly** as different manufacturing processes;
- describe the progression from packaged components and a bare PCB to a PCBA and then to a finished electronic product;
- describe the major packaging hierarchy from die to package, board, module, enclosure, and system;
- identify major packaging functions: electrical interconnection, thermal management, mechanical support/protection, environmental protection, and manufacturability;
- describe the multidisciplinary nature of electronic packaging and identify representative engineering technology roles;
- recognize how product environment changes packaging priorities;
- recognize major current trends such as SiP, chiplets, heterogeneous integration, and advanced cooling at a survey level.

### 1.1 What Is Electronic Packaging?

- Packaging as the engineering that allows an electronic circuit to physically exist, be manufactured, survive its environment, and operate reliably.
- Electronic packaging versus circuit/electronic design.
- Physical product view: IC die, package, PCB, PCBA, connectors, enclosure, and cooling hardware.
- Why a correct schematic can still produce an unreliable or unmanufacturable product.
- Packaging as the bridge between intended electrical function and a real engineered product.

### 1.2 Why Packaging Matters in Industry

- Electrical and functional performance.
- Reliability and product life.
- Manufacturability and yield.
- Cost and time-to-market.
- Serviceability and repair.
- Safety and environmental exposure.
- Packaging tradeoffs involving size, weight, power, cost, cooling, ruggedness, and manufacturability.

### 1.3 Electrical and Semiconductor Foundations

Provide only the electrical and semiconductor background needed for the rest of Chapter 1.

- Electrical conductors, insulators, and semiconductors.
- Silicon as a common semiconductor material.
- Electrical current, voltage, and controlled conduction at a recognition level.
- Intrinsic versus doped semiconductor material.
- Brief introduction to **N-type** and **P-type** semiconductor regions.
- PN-junction concept and diode behavior at an introductory level.
- Why semiconductor properties allow useful electronic devices to be fabricated inside a silicon wafer.

**Scope limit:** Keep semiconductor physics applied and visual. Do not expand into detailed band theory, carrier-statistics derivations, or semiconductor-device equations.

### 1.4 Semiconductor Devices: BJT and MOSFET

Introduce active devices as controllable semiconductor elements that can switch or amplify.

- Basic electronic-device schematic symbols as needed for later circuit discussion.
- BJT families: NPN and PNP.
- Basic BJT structure: emitter, thin base, and collector.
- How a small base current controls a larger collector-emitter current.
- MOSFET families: NMOS and PMOS.
- Gate, dielectric, source, drain, and semiconductor body.
- Electric-field control of channel formation.
- NMOS operation as the primary worked example.
- PMOS as the complementary device with opposite gate-polarity behavior.
- Why MOSFETs dominate modern high-density digital ICs.
- Continued importance of BJTs in analog, RF, precision, interface, and specialized circuits.
- Packaging implications of active devices: terminals, interconnection, switching current, heat, parasitics, and protection.

**Scope limit:** No transistor sizing, detailed I-V derivations, device-model parameters, or semiconductor process integration in this section.

### 1.5 Integrated Passive Devices: Resistors, Capacitors, and Inductors

Show that passive functions can also be fabricated on a semiconductor die.

#### Integrated resistors

- Common configurations: diffused, polysilicon, thin-film, and process-specific structures.
- Representative example: diffused resistor.
- Resistance from material resistivity and geometry.
- Uses and limitations, including die-area and tolerance considerations.

#### Integrated capacitors

- Common configurations: MOS, MIM, junction, and process-specific structures.
- Representative example: MOS capacitor.
- Capacitance from conductive regions separated by a dielectric.
- Uses and limitations, including why large capacitance is often provided off-chip.

#### Integrated inductors

- Common configurations: planar spiral, multilayer/stacked spiral, and other patterned-metal loops.
- Representative example: planar spiral metal inductor.
- Magnetic-field storage created by current through a looped conductor.
- RF applications and practical limitations such as area, resistance, parasitics, and quality factor.

#### Integration tradeoffs

- Why not every passive component should be integrated on the die.
- Die area, achievable value, tolerance, parasitics, performance, and cost.
- On-die passive devices versus discrete passive components mounted on a PCB.

### 1.6 From Transistors to Electronic Circuits

Move upward in abstraction from individual devices to useful circuit functions.

#### From devices to circuits

- Devices acquire useful function through electrical interconnection.
- Schematics describe intended electrical relationships rather than physical geometry.
- Device behavior -> circuit behavior -> functional blocks.

#### Analog, digital, and mixed-signal circuits

- Analog circuits process continuously varying electrical quantities.
- Digital circuits interpret voltage ranges as logic states.
- Mixed-signal circuits combine analog and digital functions.

#### CMOS inverter

- Complementary NMOS and PMOS switching behavior.
- PMOS pull-up and NMOS pull-down.
- Logic-low input -> logic-high output.
- Logic-high input -> logic-low output.
- Simplified logic-state rule:
  - NMOS: logic 0 -> OFF, logic 1 -> ON;
  - PMOS: logic 0 -> ON, logic 1 -> OFF.

#### Common logic-gate functions

- NOT, AND, OR, NAND, NOR, XOR.
- Boolean-logic notation at an introductory level:
  - \(A+B\) means OR;
  - \(A\cdot B\) means AND;
  - \(\overline{A}\) means NOT;
  - \(A\oplus B\) means XOR.
- Logic-gate symbols as functional abstractions.

#### CMOS pull-up and pull-down networks

- Series transistor paths require all devices in the path to conduct.
- Parallel networks provide alternate conducting paths.
- Two-input CMOS NAND: parallel PMOS + series NMOS.
- Two-input CMOS NOR: series PMOS + parallel NMOS.
- AND as NAND followed by inversion.
- OR as NOR followed by inversion.
- XOR kept at the functional level rather than detailed transistor implementation.

#### From logic gates to a half-adder

- Half-adder as a simple example of hierarchical circuit construction.
- XOR produces SUM.
- AND produces CARRY.
- Half-adder -> full-adder concept -> larger arithmetic circuits.
- Main teaching goal:

> **devices -> logic gates -> functional circuits -> larger functional blocks**

**Scope limit:** Do not turn this section into a digital-logic design course. No Karnaugh maps, HDL, transistor sizing, detailed XOR transistor design, or timing analysis.

### 1.7 From Discrete Components to Integrated Circuits

Explain the difference between assembling a circuit from separate components and fabricating many circuit elements together on one semiconductor die.

- Discrete components connected by PCB traces and other interconnects.
- Integrated devices and interconnections fabricated together on one die.
- Analog, digital, and mixed-signal functions inside ICs.
- Functional blocks inside a larger integrated circuit.
- Benefits of integration:
  - smaller size;
  - shorter internal interconnections;
  - high device count;
  - lower manufacturing cost per function at volume;
  - repeatability.
- Practical tradeoffs:
  - heat concentration;
  - limited integrated passive values;
  - power/current limitations;
  - need for external components and interfaces.
- A packaged IC is still only one part of a larger PCB assembly and system.

**Key distinction:** An integrated circuit is a circuit fabricated on a semiconductor die. It is **not** a PCB and does not become a PCB.

### 1.8 How Integrated Circuits Are Fabricated

Provide a conceptual process overview showing how many devices and interconnections are created on a wafer.

- Starting semiconductor wafer.
- Repeated pattern-transfer and material-processing cycles.
- Oxidation and dielectric formation.
- Material deposition.
- Photolithography.
- Etching.
- Doping by implantation/diffusion at a conceptual level.
- Formation of active and passive device regions.
- Metal-interconnect formation.
- Multiple interconnect layers.
- Passivation.
- Wafer-level electrical test/probe awareness.
- Dicing/separation into individual IC dies.

Use an original high-level process-flow figure.

**Scope limit:** Do not teach fabrication recipes, process chemistry, device-process integration, mask design, or detailed lithography physics.

**Critical teaching point:** Semiconductor fabrication produces an **IC die**. Packaging of that die is the next manufacturing stage; PCB fabrication is a separate process.

### 1.9 IC Packaging: From Bare Die to Packaged Component

Explain why a fabricated IC die normally cannot be used directly in a PCB assembly.

- Bare-die fragility and very small on-die connection features.
- Need for electrical fan-out/interconnection.
- Need for mechanical support and protection.
- Need for thermal paths.
- Die attach.
- Package substrate or leadframe.
- Wire bonding as a common interconnect method.
- Flip-chip/bump interconnection as another major method.
- Encapsulation, molding, or lid.
- External leads, pads, or solder balls.
- Package inspection/test awareness.

#### Common package families

Applied recognition rather than package-design detail:

- DIP;
- SOIC and related leaded packages;
- QFP;
- QFN/leadless packages;
- BGA;
- CSP;
- discrete semiconductor packages;
- connectors and sockets as related board-level interconnect hardware.

Discuss why package selection affects:

- assembly process;
- thermal path;
- electrical parasitics;
- mechanical robustness;
- inspection;
- rework;
- board area and routing.

### 1.10 From Components and Bare PCB to PCBA

Show the convergence of two different manufacturing streams.

#### Component stream

> **semiconductor fabrication -> IC die -> IC packaging -> packaged IC/component**

#### PCB stream

> **PCB materials -> PCB fabrication -> bare PCB**

#### Assembly

> **packaged components + discrete components + connectors + bare PCB -> PCB assembly -> PCBA**

- SMT and THT concepts at a recognition level.
- Solder joints as electrical and mechanical connections.
- Placement, soldering, inspection, and test at a high level.
- Detailed PCB fabrication belongs in Chapter 2.
- DFM belongs in Chapter 3.
- Detailed SMT/THT assembly belongs in Chapter 4.

**Critical teaching point:** Do not imply that an IC die, IC package, or IC fabrication process becomes the PCB. The IC/component and bare PCB are manufactured separately and later converge during assembly.

### 1.11 From PCBA to Finished Electronic Product

- One PCBA may be only one subsystem within a product.
- Additional system elements may include:
  - enclosure/chassis;
  - connectors and cabling;
  - displays and controls;
  - power supplies and batteries;
  - fans, heat sinks, spreaders, or cold plates;
  - sensors and actuators;
  - structural mounting hardware.
- System integration.
- Functional test.
- Environmental/reliability qualification.
- Production and field feedback.
- Packaging continues beyond the board level.

### 1.12 Packaging Hierarchy

Organize the product into physical levels:

- wafer/device level;
- bare-die level;
- IC/package level;
- PCB/PCBA level;
- module/motherboard level;
- enclosure/system level;
- system-to-system or cluster/rack level where useful.

Use the hierarchy to show that electrical, thermal, mechanical, manufacturing, and reliability problems appear at different physical scales.

### 1.13 Major Functions of Electronic Packaging

- Electrical interconnection and power delivery.
- Mechanical support and load transfer.
- Thermal path and temperature control.
- Environmental protection.
- Assembly/manufacturing compatibility.
- Inspection and test.
- Maintenance, rework, and service.
- Reliability over the intended mission profile.

### 1.14 Electronic Packaging as a Multidisciplinary Field

- Electrical.
- Mechanical.
- Thermal.
- Materials.
- Manufacturing/process.
- Quality/reliability.
- Systems/concurrent engineering.

Introduce the idea that packaging decisions are coupled: changing a material, component position, interconnect, PCB stack-up, package, or enclosure can simultaneously affect electrical, thermal, mechanical, manufacturing, and reliability behavior.

### 1.15 Engineering Technology Roles in Electronic Packaging

Representative roles and tasks:

- manufacturing/process engineering or technologist support;
- PCBA/SMT process support;
- PCB/PCBA DFM review;
- quality and inspection support;
- product/test engineering;
- thermal/mechanical packaging analysis;
- failure-analysis/reliability support;
- supplier/manufacturing engineering;
- CAD, documentation, and engineering-change support.

Focus on skills and responsibilities rather than promising specific job titles.

### 1.16 Packaging Across Product Environments

Compare packaging priorities for:

- consumer electronics;
- industrial controls;
- automotive electronics;
- aerospace/defense;
- medical electronics;
- data-center/high-power electronics.

Show how mission profile changes priorities involving:

- temperature;
- vibration/shock;
- humidity/contamination;
- size and weight;
- power density;
- cost;
- service life;
- inspection/serviceability;
- regulatory and qualification requirements.

### 1.17 Industry Trends: What Is Changing?

Brief survey only:

- miniaturization and higher power density;
- BGA/CSP and high-density interconnect;
- SiP and heterogeneous integration;
- chiplets;
- 2.5D/3D packaging;
- advanced substrates and interposers;
- advanced thermal solutions;
- increased automation and inspection;
- data-driven manufacturing;
- increased reliability challenges under high power density and harsh environments.

Keep this section as **Applied Awareness**, not specialist design instruction.

### 1.18 Chapter Summary

Close the instructional portion of Chapter 1 with a concise summary of the complete learning sequence:

> **semiconductor material -> device -> circuit -> integrated circuit -> fabricated IC die -> packaged component**

and the separate board-manufacturing stream:

> **PCB materials -> PCB fabrication -> bare PCB**

followed by convergence and system integration:

> **packaged/discrete components + bare PCB -> PCB assembly -> PCBA -> system integration -> finished electronic product**

The summary should also consolidate:

- key manufacturing distinctions;
- packaging hierarchy and functions;
- multidisciplinary/engineering technology roles;
- mission-profile dependence;
- major Chapter 1 terminology;
- standards/professional-organization awareness;
- current industry trends at the intended applied-awareness level.

### 1.19 Practice Problems

Provide a separate Chapter 1 practice section using deterministic problems that review the full sequence from Sections 1.1 through 1.17.

The problem set should:

- cover the major Chapter 1 learning objectives rather than overemphasize one topic;
- use questions with one unambiguous answer or answer set;
- use formats such as matching, classification, sequencing, calculation, truth tables, terminology recognition, process-flow interpretation, and bounded engineering interpretation;
- preserve the separation among semiconductor fabrication, IC packaging, PCB fabrication, PCB assembly, and system integration;
- avoid open-ended product-design questions whose answers depend primarily on subjective judgment.

### 1.20 Practice Problem Keys

Provide a separate answer-key section synchronized exactly with Section 1.19.

The keys should:

- use the same problem numbering and titles as Section 1.19;
- give the deterministic answer for every published problem;
- include a concise explanation where it improves understanding;
- be updated in the same revision whenever the corresponding problem set changes.

### Applied Chapter Elements

- **Original figure:** conductor/insulator/semiconductor and simple semiconductor-device bridge.
- **Original figures:** BJT and MOSFET structure/operation.
- **Original figures:** representative integrated resistor, capacitor, and inductor.
- **Original figures:** CMOS inverter, NAND, NOR, AND, OR, and half-adder examples.
- **Original figure:** discrete circuit versus integrated circuit.
- **Original figure:** high-level IC-fabrication process flow.
- **Original figure:** bare die -> IC package.
- **Original figure:** two manufacturing streams converging at PCB assembly.
- **Original figure:** die/package/board/system packaging hierarchy.
- **Engineering case:** Compare packaging priorities for a smartphone, industrial controller, and automotive module.
- **Applied task:** Identify packaging functions and hierarchy levels in an everyday electronic product.

### Authoring/Verification Cautions

- Keep electrical, semiconductor, and circuit material at the **minimum applied depth needed to understand packaging**.
- Do not turn Sections 1.3-1.8 into an EE, semiconductor-device, digital-logic, or wafer-fabrication textbook.
- Verify all semiconductor-device diagrams, current-direction conventions, MOSFET control statements, logic equations, and gate truth tables.
- Preserve the manufacturing sequence explicitly:
  - semiconductor fabrication -> IC die;
  - IC packaging -> packaged component;
  - PCB fabrication -> bare PCB;
  - components + bare PCB -> PCBA;
  - PCBA + system hardware -> finished product.
- Never imply that an IC becomes a PCB.
- Distinguish **on-die integrated passive devices** from the discrete passive components mounted on a PCB.
- Logic-gate and functional-block symbols are abstractions, not miniature packaged components placed physically inside the die.
- Do not present simplified public product-failure stories as confirmed root causes unless supported by strong sources.
- Keep advanced packaging as context, not the center of Chapter 1.

### Primary Reference Anchors

- Revised Chapter 1 instructional materials and current Chapter 1 OER drafts.
- Legacy/detailed Chapter 1 material as a secondary source for semiconductor and fabrication concepts.
- Tummala, *Fundamentals of Device and Systems Packaging*, introductory, semiconductor-to-system, and packaging-fundamentals chapters.
- Tummala, *Fundamentals of Microsystems Packaging*, introductory device, packaging, and system-hierarchy chapters.
- Blackwell, *The Electronic Packaging Handbook*, design-process and package/system overview.
- Tummala and Swaminathan, *Introduction to System-on-Package*, for integration context.
- IEEE Electronics Packaging Society, JEDEC, SEMI, and current manufacturer resources for terminology and advanced-packaging context.

---

## Chapter 2 - PCB Structure, Materials, and Fabrication

### Chapter Purpose

Present a PCB as a **laminated electrical, mechanical, thermal, and manufacturing structure**, not merely as a drawing of copper traces.

### Learning Objectives

After completing the chapter, readers should be able to:

- identify the layers and features of a PCB;
- distinguish core, prepreg, copper, solder mask, silkscreen, surface finish, pads, traces, and vias;
- explain common stack-ups and the importance of symmetry/copper balance;
- describe key PCB material properties and why they matter;
- explain the major steps of rigid PCB fabrication;
- recognize common fabrication constraints and defects;
- explain how PCB structure affects stiffness, warpage, heat spreading, and electrical behavior;
- read a basic PCB fabrication drawing/stack-up and communicate with a board fabricator.

### 2.1 What a PCB Really Is

- Electrical interconnect platform.
- Mechanical support structure.
- Thermal spreading/conduction path.
- Manufacturing substrate.
- Reliability-critical composite structure.

### 2.2 Physical Anatomy of a PCB

- Substrate/core.
- Prepreg/bonding layers.
- Copper foil and patterned copper.
- Pads and traces.
- Plated through-holes.
- Vias.
- Solder mask.
- Silkscreen/legend.
- Surface finish.
- Board outline, slots, mounting holes, tooling features.

### 2.3 PCB Types and Layer Stack-Ups

- Single-layer and two-layer boards.
- Multilayer rigid PCBs.
- Brief introduction to flex and rigid-flex.
- Signal layers and power/ground planes.
- Stack-up symmetry.
- Copper balance.
- Dielectric spacing.
- Why layer count alone does not determine stiffness or thermal performance.

### 2.4 PCB Base Materials and Properties

Primary focus: FR-4, with context for alternatives.

Properties to understand include:

- thermal conductivity \(k\);
- coefficient of thermal expansion (CTE), including z-axis importance;
- glass-transition temperature \(T_g\);
- decomposition temperature \(T_d\) at awareness level;
- elastic modulus/stiffness;
- moisture absorption;
- dielectric constant \(D_k\) and loss tangent \(D_f\) only to the extent needed for Chapter 5;
- copper thickness/weight.

### 2.5 Common Copper Features

- Traces.
- Pads/lands.
- Planes and pours.
- Thermal relief.
- Annular rings.
- Copper thieving/balancing at conceptual level.

### 2.6 Via and Hole Structures

- Plated through-hole.
- Through via.
- Blind/buried via.
- Microvia/HDI awareness.
- Via-in-pad concept and why filling/capping may be required.
- Thermal vias.
- Drill tolerance, plating, annular ring, aspect ratio at an applied level.

### 2.7 Surface Finishes

Introduce common choices and why they matter:

- HASL/lead-free HASL;
- ENIG;
- OSP;
- other finishes only briefly.

Discuss solderability, planarity, oxidation protection, cost, and process compatibility without becoming a chemistry chapter.

### 2.8 How a Rigid Multilayer PCB Is Fabricated

Applied process sequence:

1. material preparation;
2. inner-layer imaging and etching;
3. inspection;
4. lamination;
5. drilling;
6. hole preparation and copper plating;
7. outer-layer imaging/plating/etching;
8. solder mask;
9. surface finish;
10. legend;
11. profiling/depanelization features;
12. electrical test and final inspection.

Use an original process-flow figure.

### 2.9 Fabrication Constraints and Tolerances

- Minimum trace/space capability.
- Drill diameter and positional tolerance.
- Annular ring.
- Copper-to-edge clearance.
- Solder-mask registration and minimum web.
- Via structures and aspect ratio.
- Board thickness and thickness tolerance.
- Bow and twist/warpage.
- Fabricator capability varies with technology, cost, yield target, and producibility level.

**Key rule:** Typical values are examples, not universal IPC limits or universal manufacturer capabilities.

### 2.10 PCB Stiffness, Bending, and Warpage

- Why thickness strongly affects bending stiffness.
- Applied use of \(I=bt^3/12\) and the \(t^3\) trend.
- Copper distribution and stack-up symmetry.
- Thermal exposure during fabrication/reflow.
- Why warpage creates assembly and reliability problems.

### 2.11 PCB Thermal Behavior

- FR-4 versus copper thermal conductivity.
- Lateral heat spreading in copper.
- Through-thickness bottlenecks.
- Copper planes and thermal vias.
- Link to Chapter 6.

### 2.12 Common PCB-Level Fabrication/Material Failures

- Open/short circuits.
- Annular-ring breakout.
- Plating voids.
- Delamination/blistering.
- Warpage/bow/twist.
- Pad lifting.
- Conductive anodic filament (CAF) awareness.
- Moisture/reflow damage awareness.

### 2.13 PCB Manufacturing Data and Communication

At awareness level:

- fabrication drawing;
- stack-up drawing;
- copper/layer files;
- drill files;
- netlist/electrical test data;
- Gerber/modern digital manufacturing data concepts;
- revision control and notes.

### 2.14 Chapter Summary

Summarize the physical structure, materials, stack-up concepts, fabrication sequence, common board features, fabrication constraints, thermal/mechanical behavior, manufacturing data, and major PCB failure/quality issues introduced in Chapter 2.

### 2.15 Practice Problems

Provide deterministic Chapter 2 practice problems covering PCB anatomy, materials/properties, stack-ups, vias/holes, surface finishes, fabrication sequence, tolerances/capabilities, stiffness/warpage, basic thermal behavior, failure recognition, and manufacturing-data interpretation.

### 2.16 Practice Problem Keys

Provide the synchronized deterministic answer key for Section 2.15 using identical problem numbering and titles.

### Applied Chapter Elements

- **Worked example:** Compare bending stiffness of two PCB thicknesses.
- **Worked example:** Estimate one-dimensional heat conduction through a PCB region.
- **Engineering decision:** Choose a basic stack-up/material strategy for a low-cost controller versus a higher-speed/high-temperature board.
- **Original figure:** Multilayer PCB cross-section with mechanical, thermal, electrical roles labeled.

### Authoring/Verification Cautions

- Avoid oversimplifying solder mask as an airtight or waterproof environmental seal.
- FR-4 properties vary widely by laminate system and temperature; give representative ranges with conditions.
- Increasing layer count does not automatically improve thermal performance or stiffness.
- Avoid treating one fabricator's minimum feature size as a universal design rule.

### Primary Reference Anchors

- Earlier Chapter 2 instructional materials.
- Tummala, system-level PWB chapters.
- Coombs, *Printed Circuits Handbook*, materials, design, fabrication, and testing sections.
- IPC-2221/2222, IPC-6012, IPC-A-600, IPC-TM-650 for standards awareness.

---

## Chapter 3 - Design for Manufacturability in Electronic Packaging

### Chapter Purpose

Teach DFM as the process of converting design intent into a board and assembly that real factories can build repeatedly, inspect, test, repair, and scale economically.

### Learning Objectives

After completing the chapter, readers should be able to:

- distinguish DFM, DFA, DFT, and broader DFX concepts;
- explain why DFM must occur before manufacturing release;
- identify common PCB fabrication and assembly risks from layout images;
- evaluate placement, spacing, edge, pad, hole, via, solder-mask, and silkscreen decisions;
- use manufacturer capability information rather than memorized universal numbers;
- explain inspection and rework access as design requirements;
- distinguish design-rule checking (DRC) from manufacturing DFM review;
- communicate a concise DFM finding and corrective action.

### 3.1 DFM, DFA, DFT, and DFX

- Design for Manufacturability (fabrication + manufacturability).
- Design for Assembly.
- Design for Test/Inspection.
- Design for Reliability link.
- Why the boundaries overlap in electronics.

### 3.2 Where DFM Fits in the Product Workflow

- Schematic/layout.
- DRC.
- DFM/DFA review.
- Fabricator/assembler review.
- Prototype build.
- feedback and revision.
- release to production.

### 3.3 Design Rules, Capabilities, and Requirements

The chapter must distinguish:

- **EDA design rule**;
- **manufacturer capability**;
- **preferred design guideline**;
- **standard requirement**;
- **customer/product-class requirement**.

Explain why a design that is technically manufacturable may still have poor yield or high cost.

### 3.4 Component Placement

- Functional grouping.
- Placement accuracy/tolerance.
- Component spacing.
- Board-edge clearance.
- Tall versus short components.
- Heavy components and connectors.
- Thermal-sensitive placement.
- Placement density versus rework access.

### 3.5 Component Orientation

- Consistent orientation for assembly and inspection.
- Polarity and pin-1 marking.
- Process-flow considerations.
- Thermal symmetry where relevant.
- Avoid turning orientation rules into rigid rules when machine capability makes rotation trivial; explain the real reasons behind any recommendation.

### 3.6 Pads and Land Patterns

- Pad geometry matched to package/lead geometry.
- Solderable area and fillet formation.
- Symmetry for small chip components.
- Solder-mask-defined versus non-solder-mask-defined concepts at awareness level.
- BGA/QFN land-pattern awareness.
- Manufacturer/package recommendations and IPC-7352 awareness.

### 3.7 Holes, Annular Rings, and Vias

- Lead-to-hole allowance for THT insertion.
- Drill/plating tolerances.
- Annular-ring robustness.
- Via-to-pad relationships.
- Via-in-pad and solder wicking.
- Thermal relief and manufacturability.

### 3.8 Trace, Copper, and Edge Geometry

- Trace/space capability.
- Trace-to-pad clearance.
- Copper-to-edge clearance.
- Copper slivers and narrow necks.
- Trace entry to pads and teardrops where appropriate.
- Acute copper geometries/"acid traps" presented with modern-process nuance rather than as an absolute rule.

### 3.9 Solder Mask

- Opening registration.
- Solder-mask web/dam.
- Tenting vias when appropriate.
- Bridging risk.
- Solder-mask-defined geometry awareness.

### 3.10 Silkscreen and Markings

- Keep legend away from solderable surfaces.
- Reference designators and polarity marks.
- Readability after assembly.
- Avoid clutter that harms inspection/rework.

### 3.11 Inspection and Test Access

- AOI line-of-sight and shadowing.
- Hidden joints and why X-ray may be inherently required for BGA/QFN structures rather than automatically being a DFM failure.
- Test points.
- ICT/flying-probe access awareness.
- Connector access.

### 3.12 Rework and Serviceability

- Tool access.
- Thermal exposure to neighboring components.
- Replaceable/high-risk parts.
- Mechanical access and fasteners.

### 3.13 Panelization, Fiducials, and Assembly Tooling

- Why boards are commonly assembled in panels.
- Global/local fiducials for machine alignment.
- Tooling holes and conveyor/edge-clearance needs.
- Breakaway tabs, V-score, routing, and depanelization awareness.
- Component keep-out near depanelization features.
- How panel design affects assembly yield, handling, and board strain.

### 3.14 DFM Tools and Design Release Review

- EDA DRC versus DFM software.
- Fabricator/assembler DFM reports.
- Manufacturability checklist.
- Revision control.
- Fabrication/assembly data package awareness: BOM, centroid/pick-and-place data, drawings, stencil/paste information, and revision consistency.
- Communication and disposition of findings.

### 3.15 Applied DFM Checklist

A final table organized by:

- fabrication;
- assembly;
- inspection/test;
- rework/service;
- thermal/mechanical risk;
- documentation.

### 3.16 Chapter Summary

Summarize the practical DFM/DFA/DFT/DFX workflow, manufacturer capability versus design rule distinction, placement, pads, vias, copper geometry, solder mask, markings, inspection/test access, rework, panelization/tooling, and design-release review.

### 3.17 Practice Problems

Provide deterministic Chapter 3 practice problems using supplied layouts, dimensions, capability tables, checklists, and bounded DFM decisions. Numerical questions should clearly identify the example capability or rule set being applied.

### 3.18 Practice Problem Keys

Provide the synchronized deterministic answer key for Section 3.17 using identical problem numbering and titles.

### Integrated Lab

**Existing Lab #1 - PCB Design for Manufacturability (DFM)**

- Visual issue identification.
- Quantitative spacing/clearance evaluation.
- OER revision: numerical thresholds should be presented as a documented example rule set or vendor capability set, not universal industry limits.

### Applied Chapter Elements

- **DFM case:** Release review of a small mixed SMT/THT board.
- **Original figure set:** good/bad placement, mask web, via-in-pad, edge clearance, AOI shadowing.
- **Decision exercise:** Decide which DFM issues are must-fix versus cost/yield tradeoffs.

### Authoring/Verification Cautions

- Many DFM numerical limits are vendor/process specific.
- Modern PCB etching reduces the importance of the historical "acid trap" rule; discuss it as a geometry/manufacturability consideration with context.
- X-ray inspection is normal and often unavoidable for hidden-joint packages; do not characterize its use itself as poor DFM.
- Pick-and-place accuracy varies strongly with equipment, package type, and speed.

### Primary Reference Anchors

- Earlier Chapter 3 instructional materials and Lab #1.
- Coombs, PCB design/manufacturing sections.
- Blackwell, concurrent engineering/DFM and SMT design sections.
- IPC-2221/2222, IPC-7352, IPC-2231, IPC-6012, and the IPC-A-610/J-STD-001 relationship.
- Current fabricator/assembler capability documentation when creating numerical examples.

---

## Chapter 4 - Electronic Assembly Technologies

### Chapter Purpose

Explain how a fabricated PCB becomes a PCBA, how SMT/THT processes work physically, what process variables control quality, how defects form, and how manufacturing engineers monitor and troubleshoot the line.

### Learning Objectives

After completing the chapter, readers should be able to:

- describe a complete SMT line and THT/mixed-technology flow;
- explain solder paste printing, SPI, component placement, reflow, wave, selective, and hand soldering;
- explain solder wetting and joint formation at an applied level;
- identify common SMT and THT defects and connect them to physical mechanisms and process causes;
- explain AOI, X-ray, ICT/flying probe, and functional test at an introductory level;
- explain why ESD and moisture-sensitive-device handling matter;
- interpret basic SPC charts and propose a reaction plan;
- distinguish process control from final acceptance inspection.

### 4.1 What Is a PCBA?

- PCB versus PCBA.
- Mechanical + electrical attachment.
- Where assembly sits in the manufacturing flow.
- Why assembly process control strongly influences yield and field reliability.

### 4.2 Component-Mounting Technologies

- SMT.
- THT.
- Mixed SMT/THT.
- Press-fit/socket/connector awareness.
- Why one board may use multiple joining methods.

### 4.3 Solder as an Electrical and Mechanical Interconnect

- Solder's two roles.
- Lead-free solder context (SAC family).
- Solidus/liquidus at conceptual level.
- Wetting and surface tension.
- Flux role.
- Intermetallic formation at a qualitative level.
- Why too little heat, too much heat, contamination, or imbalance can create defects.

### 4.4 Solder Paste

- Metal powder + flux vehicle.
- Storage/handling awareness.
- Rheology at a practical level.
- Paste volume as a critical input.
- Lead-free/RoHS context.

### 4.5 Stencil Printing

- Stencil and aperture function.
- Squeegee motion/pressure/speed.
- Alignment.
- Release from aperture.
- Area-ratio concept at awareness level.
- Common print defects.

### 4.6 Solder Paste Inspection (SPI)

- Height, area, volume, offset.
- Why SPI catches defects before expensive downstream steps.
- Feedback to the printing process.
- Process-data interpretation.

### 4.7 Pick-and-Place

- Feeder systems.
- Nozzles and vacuum pick-up.
- Vision alignment.
- X-Y-theta placement.
- Placement force/height.
- Centroid data and component orientation.
- Common placement errors.

### 4.8 Reflow Soldering

- Preheat, soak, reflow, cooling zones.
- Ramp rate.
- Time above liquidus.
- Peak temperature.
- Thermal mass and temperature nonuniformity.
- Profile measurement with thermocouples.
- Package/material limits.
- Why the correct profile is product- and solder-paste-specific.

### 4.9 Common SMT Defects and Physical Mechanisms

Organize as **symptom -> mechanism -> likely process causes -> corrective action**:

- tombstoning;
- solder bridging;
- insufficient solder/open joint;
- solder balls/beading;
- component shift/skew;
- non-wetting/dewetting;
- voiding awareness;
- BGA/QFN hidden-joint defects at awareness level.

### 4.10 Through-Hole Assembly

- Component insertion.
- Lead/hole fit.
- Mechanical support.
- Fluxing and preheat.
- THT applications: connectors, transformers, high-force/high-current parts.

### 4.11 Wave Soldering

- Flux.
- Preheat.
- Solder wave.
- Conveyor speed/orientation.
- Hole fill and capillary/wetting behavior.
- Common wave defects.

### 4.12 Selective Soldering

- Why selective soldering is used.
- Mini-wave/nozzle concept.
- Localized heating/flux.
- Mixed-technology boards.
- Process-access constraints.

### 4.13 Common THT Defects

- insufficient hole fill;
- bridging;
- cold/poorly wetted joints;
- icicles/excess solder awareness;
- lifted pads/barrel damage awareness.

Use the same troubleshooting framework as SMT.

### 4.14 Mixed SMT/THT Assembly Planning

- Process-order logic.
- Double-sided SMT.
- Component retention/gravity/thermal constraints.
- THT insertion and selective soldering.
- Cleaning/inspection/test sequence.
- Design-process interaction.

### 4.15 Component Handling: ESD and Moisture Sensitivity

Highly job-relevant addition to the current source sequence:

- ESD-sensitive devices and protected areas.
- Grounding/equipotential concept.
- ESD-safe handling awareness.
- Moisture sensitivity level (MSL) concept.
- Floor life, dry packing, baking awareness.
- Why moisture + reflow can cause package cracking/delamination.

### 4.16 Inspection

- Visual inspection.
- SPI.
- AOI.
- X-ray.
- Cross-section/destructive analysis awareness.
- What each method can and cannot see.
- Acceptance criteria versus process-monitoring data.

### 4.17 Electrical Test

- Bare-board test versus assembled-board test.
- In-circuit test (ICT).
- Flying probe.
- Boundary scan awareness.
- Functional test.
- Test coverage and access tradeoffs.

### 4.18 Rework and Repair

- Hand soldering.
- Hot-air rework.
- Component removal/replacement.
- Thermal damage risk.
- Pad/trace damage.
- Need for controlled documented processes.

### 4.19 Cleaning and Post-Assembly Protection

Applied awareness rather than a chemistry treatment:

- when cleaning may be required and why the flux/process matters;
- ionic/particulate contamination and reliability risk;
- conformal coating as environmental protection;
- potting/encapsulation as protection and ruggedization;
- tradeoffs: inspection/rework access, added thermal path/resistance, stress, mass, and cost;
- cleanliness/coating requirements are product- and process-specific.

### 4.20 Statistical Process Control (SPC)

Applied manufacturing level:

- process variation;
- common cause versus special cause;
- center line and control limits;
- control limits versus specification limits;
- points outside limits;
- trends/shifts/patterns;
- reaction plans;
- process capability (Cp/Cpk) as optional enrichment.

### 4.21 Safety, Environmental, and Standards Awareness

- Lead-free/RoHS context.
- Flux/fume/chemical handling awareness.
- ESD.
- J-STD-001 versus IPC-A-610 distinction.
- Product class/customer requirements awareness: the applicable class and acceptance criteria are agreed for the product, not assumed universally.
- Rework standards awareness.

### 4.22 Chapter Summary

Summarize SMT, THT, mixed assembly, soldering, printing/SPI, placement, reflow, wave/selective soldering, handling, inspection, electrical test, rework, cleaning/protection, SPC, safety, and standards awareness.

### 4.23 Practice Problems

Provide deterministic Chapter 4 practice problems centered on process sequence, defect recognition, mechanism/cause matching, inspection/test method selection, process-control interpretation, and bounded troubleshooting using supplied evidence.

### 4.24 Practice Problem Keys

Provide the synchronized deterministic answer key for Section 4.23 using identical problem numbering and titles.

### Integrated Labs

- **Lab #2 - SMT Assembly Troubleshooting**
- **Lab #3 - THT Assembly Troubleshooting**
- **Lab #4 - Mixed SMT/THT Assembly Planning and SPC Troubleshooting**

These labs establish the book's recurring troubleshooting model:

> **Observation -> Physical Mechanism -> Root Causes -> Corrective Actions**

### Applied Chapter Elements

- **Process-flow case:** Build plan for a double-sided mixed-technology PCBA.
- **SPC case:** Printing/reflow/selective-solder process reaction plan.
- **Original figure:** SMT line with critical variables at each station.
- **Original table:** Defect-to-process-stage diagnostic matrix.

### Authoring/Verification Cautions

- Do not give one "correct" reflow profile for all products.
- Cleaning requirements depend on flux/material/process and product requirements.
- Defects often have multiple interacting causes; avoid one-cause explanations.
- Numerical process windows must be identified as representative examples and verified against current material/equipment data.

### Primary Reference Anchors

- Earlier Chapter 4 instructional materials and Labs #2-#4.
- Tummala board-assembly chapters.
- Coombs, assembly, soldering, process-control, testing, and rework sections.
- Blackwell, SMT, test, and inspection chapters.
- IPC J-STD-001, IPC-A-610, J-STD-005, IPC-7527, IPC-7711/7721, J-STD-033.
- ANSI/ESD S20.20 / IEC 61340-5-1 for ESD awareness.

---

## Chapter 5 - Electrical Design Considerations

### Chapter Purpose

Provide the **minimum electrical foundation needed to understand why physical PCB/package geometry changes electrical performance**. The focus is practical PCB interconnect behavior, not circuit-design theory.

### Learning Objectives

After completing the chapter, readers should be able to:

- explain the electrical functions of packaging and PCB interconnects;
- calculate simple DC voltage drop, trace resistance, and resistive heating;
- explain parasitic resistance, capacitance, and inductance physically;
- explain why digital rise time creates high-frequency behavior;
- recognize when a PCB interconnect must be treated as a transmission line;
- explain characteristic impedance and reflections at an introductory level;
- identify the signal return path and explain why loop area matters;
- recognize common SI, PI, crosstalk, differential-pair, and EMI layout problems;
- apply a practical electrical-layout checklist without advanced electromagnetics.

### 5.1 Electrical Functions of Electronic Packaging

- Signal paths.
- Power paths.
- Ground/reference paths.
- Package interconnects: bond wires/bumps, package substrate, vias, PCB traces, connectors.
- Physical geometry creates electrical behavior.

### 5.2 Minimal Electrical Review for Packaging

Only what is needed later:

- voltage, current, resistance;
- Ohm's law;
- power and Joule heating;
- frequency;
- basic capacitor behavior;
- basic inductor behavior;
- impedance as frequency-dependent opposition.

**De-emphasize:** extended RC/RL/RLC filter theory unless directly used to explain packaging behavior.

### 5.3 PCB Trace Resistance, Voltage Drop, and Heating

- \(R=\rho L/A\).
- Trace width/thickness/length.
- Via and connector resistance awareness.
- \(P=I^2R\).
- Current-carrying and allowable temperature rise.
- IPC-2152 awareness.
- Link to Chapter 6 thermal design.

### 5.4 Electrical Clearance, Creepage, and Insulation Awareness

A short safety-oriented section for practical PCB work:

- clearance through air versus creepage along an insulating surface;
- why higher voltage, contamination, humidity, altitude, and material properties affect spacing needs;
- distinction between functional spacing and safety-critical spacing;
- do not use a single generic spacing rule for all products;
- applicable product-safety standards/customer requirements must govern safety-critical designs.

### 5.5 Parasitic Capacitance and Inductance

Physical explanation:

- adjacent conductors form capacitance;
- current loops create inductance;
- mutual capacitance/inductance produce coupling;
- geometry and return path matter more than memorizing component formulas.

Use simple field diagrams rather than advanced field theory.

### 5.6 Time Domain, Frequency Content, and Rise Time

- Analog versus digital signals.
- Clock frequency versus edge speed.
- Rise/fall time.
- Fast edges contain high-frequency content.
- Practical bandwidth estimate as an approximation.
- Why "slow clock" does not always mean "electrically slow PCB."

### 5.7 Signals as Electromagnetic Propagation

- Energy propagates in fields guided by conductors/reference planes.
- Signal current and return current form a loop.
- Dielectric affects propagation velocity.
- Microstrip and stripline concept.
- Effective dielectric constant awareness.

No Maxwell-equation derivation.

### 5.8 When a Trace Becomes a Transmission Line

Use propagation delay relative to rise time as the primary practical criterion.

- propagation speed;
- trace delay;
- electrical length;
- why the lumped RLC approximation eventually fails;
- rule-of-thumb criteria clearly identified as approximations.

### 5.9 Characteristic Impedance and Controlled-Impedance Traces

- Meaning of \(Z_0\).
- Relationship of geometry and dielectric to impedance.
- Trace width, dielectric thickness, reference plane, copper thickness.
- Common single-ended/differential impedance examples as examples, not universal requirements.
- Fabricator-controlled impedance and coupons awareness.

### 5.10 Reflections and Termination

- Impedance discontinuity.
- Reflection coefficient concept.
- Open/short/mismatched load intuition.
- Ringing, overshoot, undershoot.
- Vias, connectors, stubs, changes in geometry.
- Introductory termination methods:
  - series/source;
  - parallel/load;
  - Thevenin;
  - AC termination.

Focus on what problem termination solves, not detailed driver modeling.

### 5.11 Return Current and Reference Planes

A key chapter concept:

- current always completes a loop;
- low-frequency versus high-frequency return-path tendency;
- high-frequency return current concentrates near the signal path;
- continuous reference plane;
- split planes and plane changes;
- return vias/stitching where references change;
- loop area and inductance.

### 5.12 Crosstalk and Coupling

- capacitive coupling;
- inductive coupling;
- aggressor/victim concept;
- spacing and parallel-run length;
- reference-plane distance;
- why simplistic "3W" rules are heuristics, not universal physical laws.

### 5.13 Differential Pairs

- equal/opposite signaling.
- noise immunity concept.
- spacing/coupling.
- length matching/skew.
- symmetry and reference-plane continuity.
- common examples such as USB/Ethernet/PCIe only as context.

### 5.14 Power Integrity (PI) and the Power Distribution Network (PDN)

- transient current demand.
- IR drop.
- inductive voltage noise \(L\,di/dt\).
- voltage regulator -> planes/traces/vias -> package -> die.
- decoupling capacitor role.
- placement and loop inductance.
- power/ground planes.
- simultaneous switching noise awareness.

Avoid advanced impedance-target derivations unless optional.

### 5.15 Electromagnetic Interference and Compatibility (EMI/EMC)

- differential-mode and common-mode awareness.
- current-loop radiation.
- fast edges and harmonics.
- cables/connectors as radiation paths.
- shielding and enclosure concept.
- grounding/reference strategy.
- filter/ferrite awareness.
- emissions versus susceptibility/immunity.

### 5.16 Practical PCB Layout Guidelines for Electrical Performance

Integrate into a decision checklist:

- keep critical traces short where practical;
- maintain consistent geometry on controlled-impedance traces;
- route high-speed signals over continuous reference planes;
- minimize loop area;
- manage reference-plane transitions;
- separate sensitive analog/low-level signals from noisy switching nodes based on return-current paths, not arbitrary zoning alone;
- place decoupling capacitors to minimize connection inductance;
- reduce long parallel coupling between unrelated high-speed nets;
- preserve differential-pair symmetry;
- avoid unnecessary stubs;
- manage connector and via discontinuities.

### 5.17 Electrical Measurement and Verification Awareness

Brief practical introduction:

- oscilloscope and probe loading;
- time-domain reflectometry (TDR) awareness;
- impedance coupons;
- near-field EMI probing awareness;
- simulation versus measurement.

### 5.18 Chapter Summary

Summarize the electrical functions of packaging, DC resistance/heating, parasitic effects, rise-time/frequency behavior, transmission-line awareness, impedance/reflections, return paths, crosstalk, differential pairs, PDN/decoupling, EMI/EMC, layout guidance, and verification methods.

### 5.19 Practice Problems

Provide deterministic Chapter 5 practice problems using clearly stated equations, dimensions, waveforms, layouts, and supplied assumptions. Emphasize applied calculations and diagnosis rather than open-ended high-speed design.

### 5.20 Practice Problem Keys

Provide the synchronized deterministic answer key for Section 5.19 using identical problem numbering and titles.

### Integrated Lab

**Lab #5 - PCB Electrical Layout Issue Identification (PI, SI, EMI)**

Use layout cases to identify issue -> electrical consequence -> design fix.

### Applied Chapter Elements

- **Worked example:** Trace resistance, voltage drop, and heating.
- **Worked example:** Propagation delay versus rise time to decide whether transmission-line treatment is needed.
- **Worked example:** Reflection coefficient for a simple mismatch.
- **Layout case:** Return path interrupted by a plane gap.
- **Layout case:** Decoupling loop too large.

### Authoring/Verification Cautions

This chapter needs especially careful technical review because the existing source material is extensive and includes simplified or occasionally error-prone formulas.

Verify before publication:

- impedance magnitude equations;
- RC/RL phase signs if retained;
- resonance formulas and notation;
- propagation velocity (use effective dielectric constant where appropriate);
- transmission-line onset criteria;
- microstrip/stripline impedance equations;
- termination descriptions;
- return-current explanations;
- claims based on fixed spacing rules such as "3W";
- creepage/clearance values and product-safety assumptions;
- EMI mitigation claims.

### Primary Reference Anchors

- Earlier Chapter 5 instructional materials and Lab #5.
- Bogatin, *Signal and Power Integrity - Simplified*.
- Tummala, electrical package-design chapters.
- IPC-2221 and IPC-2152 awareness; product-specific IEC/UL or other safety standards where creepage/clearance is safety-critical.
- IPC-TM-650 electrical test methods awareness.

---

## Chapter 6 - Thermal Design Considerations

### Chapter Purpose

Develop a practical thermal-design workflow: **identify heat sources -> identify heat paths -> estimate temperatures -> select cooling methods -> verify -> improve**.

### Learning Objectives

After completing the chapter, readers should be able to:

- identify dominant heat sources and heat-flow paths in electronics;
- explain conduction, convection, and radiation in packaging contexts;
- construct and solve simple thermal-resistance networks;
- explain thermal contact resistance and TIMs;
- explain PCB heat spreading and the role of copper/thermal vias;
- interpret common package thermal metrics with appropriate limitations;
- compare heat sinks, natural convection, forced air, and advanced cooling at an introductory level;
- estimate airflow/cooling needs and understand fan-system interaction qualitatively;
- create and interpret a basic thermal simulation and validate whether results are physically reasonable.

### 6.1 Why Thermal Design Matters

- Electrical power becomes heat.
- Junction temperature and performance.
- Temperature and material behavior.
- Temperature and reliability.
- Thermal throttling and failure.
- Thermal design is coupled to electrical/mechanical design.

Avoid presenting the "10 C doubles failure rate" statement as a universal law; introduce it only as a historical rule of thumb whose validity depends on the failure mechanism.

### 6.2 Thermal Design Workflow

1. identify heat sources;
2. define heat-flow paths;
3. identify thermal bottlenecks;
4. choose cooling strategy;
5. estimate temperature;
6. compare with limits/margins;
7. prototype/simulate/test;
8. improve and iterate.

### 6.3 Heat Sources in Electronic Systems

- IC/processor dissipation.
- Power semiconductors and regulators.
- resistors/inductors.
- high-current PCB conductors.
- batteries where relevant.
- resistive, switching, and leakage losses at an applied level.

### 6.4 Heat Paths and Thermal Bottlenecks

Example path:

> Junction -> package -> interface -> PCB/heat spreader -> heat sink/enclosure -> air/environment

- parallel heat paths.
- bottleneck concept.
- thermal grounding analogy used carefully.

### 6.5 Three Modes of Heat Transfer

#### Conduction

- \(Q=kA\Delta T/L\).
- \(R_{cond}=L/(kA)\).
- metals, FR-4, TIM, package materials.

#### Convection

- \(Q=hA(T_s-T_\infty)\).
- \(R_{conv}=1/(hA)\).
- natural versus forced convection.

#### Radiation

- Stefan-Boltzmann relation at applied level.
- emissivity.
- when radiation matters and when it may be small.

### 6.6 Thermal Resistance Networks

- series and parallel paths.
- node temperatures.
- analogy to electrical resistance.
- multiple heat sources at a simple level.
- use limits of 1-D/lumped models.

### 6.7 Thermal Contact Resistance and TIMs

- real surfaces touch at asperities.
- air gaps.
- contact pressure.
- interface materials.
- TIM thickness and conductivity.
- grease, pad, phase-change, gap filler awareness.
- "higher conductivity" is not the only factor; bond-line thickness/contact quality matter.

### 6.8 Heat Spreading

- local source into larger area.
- spreading resistance concept.
- heat spreaders.
- copper planes.
- vapor chamber/heat pipe awareness.

### 6.9 PCB as a Thermal Component

- effective anisotropic behavior.
- copper planes.
- thermal vias.
- exposed pads.
- layer stack-up and heat spreading.
- component placement and interaction.
- high-current electrical/thermal coupling.

### 6.10 Package Thermal Metrics and Compact Models

Applied interpretation of:

- junction temperature \(T_j\);
- ambient \(T_a\);
- case temperature;
- \(\theta_{JA}\), \(\theta_{JC}\), \(\theta_{JB}\);
- characterization parameters such as \(\Psi_{JT}\) at awareness level;
- two-resistor/compact thermal models at introductory level.

**Critical teaching point:** \(\theta_{JA}\) is strongly dependent on the test board, airflow, mounting, and environment and is not simply an intrinsic package constant that can always predict system junction temperature.

### 6.11 Heat Sinks

- purpose and heat-flow path.
- base and fins.
- fin area.
- material.
- mounting/TIM.
- orientation.
- sink-to-ambient resistance.
- passive versus forced-air heat sink.
- diminishing returns/fin spacing awareness.

### 6.12 Natural Convection

- buoyancy.
- orientation.
- surface area.
- enclosure venting.
- typical low heat-transfer coefficients as ranges only when sourced.
- when natural convection is insufficient.

### 6.13 Forced Convection and Fans

- airflow rate versus local velocity.
- convection coefficient.
- pressure drop/system resistance.
- fan curve and system curve concept.
- operating point.
- fan placement.
- bypass/recirculation/dead zones.
- fans in series/parallel only at a simple qualitative level unless needed.

### 6.14 Enclosure Thermal Design

- vents and airflow path.
- inlet/outlet placement.
- component obstruction.
- recirculation.
- internal temperature rise.
- sealed enclosures and conduction to the chassis.
- dust, noise, reliability, and maintenance tradeoffs.

### 6.15 Combined Modes and Transient Behavior

- real systems use multiple heat-transfer modes.
- thermal capacitance and warm-up/cool-down concept.
- transient versus steady state.
- keep mathematical treatment light unless directly used in a worked example.

### 6.16 Advanced Cooling Awareness

Survey only:

- heat pipes/vapor chambers;
- cold plates;
- liquid cooling;
- immersion cooling;
- jet/advanced methods.

Explain where these appear in high-power electronics/data centers rather than derive them.

### 6.17 Thermal Measurement and Simulation

- thermocouples;
- IR imaging/limitations;
- datasheet thermal metrics;
- simulation boundary conditions;
- material properties;
- contact resistance;
- convection coefficients;
- mesh/model simplification;
- verification against hand estimates and measurements.

### 6.18 Applied Case Study

A compact electronic product such as a processor board or smartphone:

- identify heat sources;
- map heat paths;
- identify bottleneck;
- compare passive and forced-cooling changes;
- evaluate design tradeoffs.

### 6.19 Chapter Summary

Summarize heat sources and paths, conduction/convection/radiation, thermal-resistance networks, contact resistance/TIMs, spreading, PCB/package thermal behavior, cooling methods, enclosure airflow, transient awareness, advanced cooling, measurement, and simulation validation.

### 6.20 Practice Problems

Provide deterministic Chapter 6 practice problems using specified geometry, thermal properties, boundary conditions, thermal-resistance networks, and supplied measurement/simulation data. Problems should support engineering estimates and interpretation at the intended applied introductory level.

### 6.21 Practice Problem Keys

Provide the synchronized deterministic answer key for Section 6.20 using identical problem numbering and titles.

### Integrated Labs

- **Lab #6 - Draw/Model a Circuit Board in SOLIDWORKS**
- **Lab #7 - Thermal Analysis of the Modeled PCB**
- **SOLIDWORKS Thermal Analysis Tutorial**

OER improvement: the modeling lab should explicitly connect geometry to later thermal/mechanical analysis rather than remain only a CAD exercise.

### Applied Chapter Elements

- **Worked example:** Simple junction-to-ambient thermal resistance network.
- **Worked example:** Effect of TIM thickness/contact resistance.
- **Worked example:** Required convection coefficient to meet a temperature limit.
- **Simulation check:** compare hand estimate with SolidWorks result.

### Authoring/Verification Cautions

- "Thermal Design Power (TDP)" is vendor/context specific; do not define it universally as the absolute maximum power a device/package can dissipate.
- Do not treat \(\theta_{JA}\) as an intrinsic package constant.
- Use temperature-reliability rules of thumb cautiously and connect them to specific acceleration models in Chapter 8.
- Thermal conductivity, convection coefficient, contact resistance, and emissivity vary strongly with actual conditions.

### Primary Reference Anchors

- Earlier Chapter 6 instructional materials, Lab #6, Lab #7, and SolidWorks thermal tutorial.
- Jamnia, heat-transfer/cooling chapters.
- Tummala, thermal-management chapters.
- Blackwell, thermal management.
- JEDEC JESD51 family and manufacturer thermal-metric guidance.

---

## Chapter 7 - Mechanical Design Considerations

> **Status:** Provisional redesign. The legacy Spring 2025 "Chapter 3 - Mechanical Design Considerations" is source material, not the final structure.

### Chapter Purpose

Teach the mechanical and thermomechanical behavior that most directly affects PCBs, components, solder joints, connectors, and enclosures in real products. Reduce general solid-mechanics/vibration theory and emphasize packaging decisions.

### Learning Objectives

After completing the chapter, readers should be able to:

- classify mechanical failures as overstress versus accumulated/wear-out damage;
- use basic stress, strain, stiffness, CTE, and strength concepts in packaging contexts;
- explain how CTE mismatch creates solder-joint and interface strain;
- explain fatigue, creep, and fracture at the level needed to understand packaging failure;
- explain how board thickness, supports, heavy components, and connector loads affect PCB bending/strain;
- calculate/estimate simple natural frequency and understand resonance;
- interpret sinusoidal and random vibration inputs, including RMS and PSD at an introductory level;
- explain shock/drop loading and mechanical isolation concepts;
- select practical design changes to reduce mechanical risk;
- interpret basic structural/modal/thermal-stress simulation output.

### 7.1 Mechanical Environments of Electronic Products

- Assembly and handling loads.
- Connector insertion/extraction.
- Board flex during depanelization, test, and system integration.
- Shipping/transport vibration.
- Vehicle/industrial vibration.
- Drop and shock.
- Thermal cycling as a mechanical loading source.

### 7.2 Mechanical Failure Modes in Electronics

- Overstress versus wear-out.
- PCB fracture.
- ceramic capacitor cracking.
- silicon/package cracking.
- solder-joint cracking.
- connector fretting/loosening awareness.
- delamination.
- fastener/support failures.

### 7.3 Essential Mechanical Properties

Keep only required concepts:

- normal stress \(\sigma=F/A\);
- strain \(\varepsilon=\Delta L/L\);
- Young's modulus and stiffness;
- Poisson's ratio awareness;
- shear stress/strain where solder-joint analysis requires it;
- yield strength and ultimate strength;
- elastic versus plastic deformation;
- brittle versus ductile behavior.

3-D tensor/compliance-matrix material should be optional or omitted from the main narrative.

### 7.4 Fracture and Brittle Components

- stress concentration.
- surface flaws.
- brittle ceramics/silicon/glass.
- crack initiation/propagation awareness.
- handling and board-bending damage to ceramic capacitors.
- fracture-mechanics equations only if they support a simple packaging example; otherwise optional.

### 7.5 Thermal Expansion and Thermomechanical Stress

- free thermal strain \(\varepsilon_{th}=\alpha\Delta T\).
- stress only when expansion/contraction is constrained.
- external constraint: dissimilar materials.
- internal constraint: temperature gradients.
- CTE mismatch.
- temperature-dependent material properties awareness.

### 7.6 Solder-Joint Thermomechanical Deformation

- board versus package CTE.
- shear displacement.
- distance to neutral point (DNP).
- solder-joint height/compliance.
- why corner joints are often critical.
- underfill/compliant interconnect awareness.
- connection to thermal cycles from Chapter 6.

Use a new original worked example based on CTE mismatch, DNP, joint height, and temperature range.

### 7.7 Fatigue

- cyclic loading.
- crack initiation and growth concept.
- high-cycle versus low-cycle fatigue.
- S-N curve awareness.
- stress amplitude/mean stress at an applied level.
- strain-based solder-joint fatigue.
- Coffin-Manson relationship introduced conceptually and mathematically only as needed.
- cumulative damage/Miner's rule can be introduced here or cross-referenced to Chapter 8.

### 7.8 Creep and Time-Dependent Behavior

- solder creep at elevated homologous temperature.
- primary/secondary/tertiary creep awareness.
- creep + thermal cycling interaction.
- keep constitutive models optional.

### 7.9 PCB Bending, Mounting, and Assembly-Induced Strain

Important new practical emphasis:

- board stiffness and thickness.
- mounting-hole/support spacing and enclosure/chassis attachment.
- connector insertion/extraction and heavy-component loads.
- fasteners, standoffs, card guides, and board-edge support awareness.
- depanelization/test fixture strain.
- strain concentration near large BGA packages.
- strain-gage measurement awareness (IPC/JEDEC-9704).
- practical mitigation: support fixtures, board stiffeners, component placement, controlled insertion forces.

### 7.10 Vibration Fundamentals for Packaging

- periodic/harmonic motion.
- frequency and amplitude.
- acceleration relation.
- degrees of freedom concept.
- free versus forced vibration.
- natural frequency.
- damping.
- resonance.

Use one-degree-of-freedom models only as engineering approximations.

### 7.11 PCB Natural Frequency and Mode Shapes

- PCB as a plate.
- effect of stiffness, mass, dimensions, and boundary conditions.
- component mass loading.
- support/fastener conditions.
- first mode as the practical focus.
- empirical hand estimates versus FEA/modal analysis.

Avoid long derivations of plate solutions in the main text.

### 7.12 Forced Sinusoidal Vibration

- forcing frequency ratio.
- dynamic amplification/transmissibility concept.
- resonance risk.
- damping effect.
- component/lead/solder-joint fatigue.
- design away from resonance where practical.

### 7.13 Random Vibration

- why real environments are often random.
- time history.
- RMS acceleration.
- power spectral density (PSD), \(g^2/Hz\).
- area under PSD -> mean-square/RMS concept.
- resonance response.
- peak estimates and probabilistic nature.
- avoid overloading the chapter with probability derivations.

### 7.14 Shock and Drop

- shock versus vibration.
- pulse duration and pulse shape.
- drop height and impact velocity.
- fragility/allowable acceleration.
- rattle space/clearance.
- shock isolation concept.

Detailed isolator-design equations can be optional.

### 7.15 Mechanical Isolation, Damping, and Ruggedization

- vibration isolators.
- damping materials.
- stiffness changes.
- stiffeners/ribs.
- additional supports.
- component relocation.
- potting/underfill/conformal coating effects and tradeoffs at awareness level.
- connector/fastener retention.

### 7.16 Mechanical Simulation and Test

- static structural analysis.
- thermal-stress analysis.
- modal analysis.
- harmonic/random vibration analysis.
- shock/drop simulation awareness.
- boundary-condition realism.
- material-property uncertainty.
- correlation to measurement/test.

### 7.17 Chapter Summary

Summarize mechanical environments, stress/strain and material behavior, thermomechanical loading, solder-joint deformation, fatigue/creep, PCB bending/strain, vibration, random vibration, shock, ruggedization, and mechanical simulation/test.

### 7.18 Practice Problems

Provide deterministic Chapter 7 practice problems using supplied material properties, geometry, loading, vibration/shock inputs, PSD data, and clearly stated model assumptions. Keep calculations at the applied level and avoid dependence on undocumented empirical rules.

### 7.19 Practice Problem Keys

Provide the synchronized deterministic answer key for Section 7.18 using identical problem numbering and titles.

### Proposed OER Applied Activities

These are **future OER additions**, not current Spring 2026 labs:

- **Mechanical Activity A:** PCB support and bending/strain comparison.
- **Mechanical Activity B:** Modal-frequency estimate versus CAD/FEA result.
- **Mechanical Activity C:** Interpret a PSD profile and identify resonance risk.
- **Mechanical Activity D:** Thermal-expansion mismatch and solder-joint strain case.

### Applied Chapter Elements

- **Worked example:** CTE mismatch and solder shear strain.
- **Worked example:** Simple PCB/cantilever natural-frequency estimate.
- **Worked example:** Convert random-vibration PSD band into RMS acceleration.
- **Design case:** choose between increased thickness, extra supports, stiffener, or isolation.

### Authoring/Verification Cautions

The legacy note contains valuable examples but should be significantly modernized:

- convert main examples to SI units;
- verify every empirical PCB vibration/fatigue equation and clearly state applicability;
- move long derivations, full 3-D elasticity matrices, and detailed shock-isolator derivations to optional material or omit them;
- distinguish modern FEA/test practice from legacy empirical rules;
- avoid presenting a single empirical fatigue-life rule as universally valid across package technologies;
- verify claims derived from Steinberg-style component deflection criteria before reuse.

### Primary Reference Anchors

- Legacy mechanical-design instructional material.
- Jamnia, vibration, shock, induced stress, thermomechanical, fatigue, and creep chapters/appendices.
- Steinberg, PCB vibration and electronic-equipment dynamics.
- Tummala, thermo-mechanical reliability/design-for-reliability sections.
- IPC/JEDEC-9704 and IPC-9701 awareness.
- IEC 60068 vibration/shock methods; MIL-STD-810 environmental tailoring context.

---

## Chapter 8 - Reliability of Electronic Packaging

> **Status:** Provisional redesign. The legacy Spring 2025 "Chapter 4 - Reliability of Electronic Packaging" is source material, but the final chapter should become more application- and design-oriented and less statistics-centered.

### Chapter Purpose

Integrate the whole book by connecting **mission profile -> stresses -> failure mechanisms -> life data -> qualification tests -> design changes -> field reliability**.

### Learning Objectives

After completing the chapter, readers should be able to:

- distinguish quality, reliability, durability, and maintainability at an introductory level;
- define reliability as a probability tied to function, time, and specified conditions;
- construct a simple mission profile and identify dominant stresses/failure mechanisms;
- interpret reliability function, failure probability, hazard/failure rate, MTTF, and MTBF appropriately;
- explain the bathtub curve as a useful conceptual model rather than a universal law;
- use exponential and Weibull models for simple reliability calculations;
- interpret Weibull shape parameter behavior at a practical level;
- explain accelerated life testing and the need to preserve the same failure mechanism;
- use simple acceleration-factor models with clear assumptions;
- distinguish production inspection/test from qualification/reliability testing;
- participate in a basic design-for-reliability/FMEA/failure-analysis workflow.

### 8.1 What Reliability Means in Electronic Packaging

- Reliability definition: intended function + stated conditions + stated time + probability.
- Quality versus reliability.
- Reliability versus durability.
- Repairable versus non-repairable products.
- Mission profile and use environment.
- Reliability is application specific.

### 8.2 From Failure Mode to Failure Mechanism

Distinguish:

- **failure mode:** what failed/what is observed;
- **failure mechanism:** physical process that caused failure;
- **root cause:** why the mechanism occurred in this design/process/use condition.

Examples tied to earlier chapters:

- solder joint open -> thermal-mechanical fatigue;
- board short -> contamination/dendritic growth/CAF awareness;
- cracked capacitor -> PCB strain;
- intermittent connector -> vibration/fretting;
- overheated IC -> inadequate thermal path;
- assembly bridge -> process variation.

### 8.3 Mission Profiles and Stressors

- Temperature level.
- Thermal cycles.
- Humidity/moisture.
- Vibration.
- Shock/drop.
- Mechanical strain.
- Voltage/current/power.
- contamination/corrosive atmosphere.
- time and duty cycle.

Use product examples: consumer, automotive, industrial, aerospace.

### 8.4 Stress-Strength Interference and Design Margin

- Variation in applied stress.
- Variation in strength.
- overlap -> probability of failure.
- margin versus reliability.
- why nominal "stress < strength" is insufficient when variation is ignored.

This is a strong intuitive bridge into probability without advanced statistics.

### 8.5 Essential Reliability Statistics

Only the statistics needed for engineering use:

- population/sample awareness;
- mean and standard deviation;
- probability density function concept;
- cumulative distribution function;
- failure probability \(F(t)\);
- reliability/survival \(R(t)=1-F(t)\).

Do not spend substantial space on general probability theory.

### 8.6 Failure Rate, Hazard Rate, MTTF, and MTBF

- hazard/failure rate meaning.
- units and FIT awareness.
- MTTF for non-repairable items.
- MTBF for repairable systems and why the terms should not be used interchangeably.
- relation \(MTTF=1/\lambda\) only under constant-hazard/exponential assumptions.

### 8.7 Failure Patterns and the Bathtub Curve

- early-life/infant mortality;
- useful-life/random failure region;
- wear-out;
- relationship to manufacturing defects, overstress, and aging.
- caution: real populations do not always follow a textbook bathtub curve.

### 8.8 Reliability Distributions

#### Exponential distribution

- constant hazard.
- simple \(R(t)=e^{-\lambda t}\).
- when appropriate and when not.

#### Weibull distribution

Main applied distribution:

- shape \(\beta\);
- scale/characteristic life \(\eta\);
- location parameter only if needed;
- \(\beta<1\), \(\beta\approx1\), \(\beta>1\) as trend indicators;
- Weibull plot/life-data interpretation using spreadsheet/software at an introductory level.

#### Normal/lognormal

- brief awareness and use contexts;
- avoid overloading the chapter with multiple distributions.

### 8.9 Life Data and Practical Data Issues

- time-to-failure data.
- cycles-to-failure data.
- right-censored/suspension concept at awareness level.
- sample size and uncertainty.
- why a few failures do not uniquely define a model.
- graphical/software-based analysis rather than hand integration.

### 8.10 Accelerated Life Testing

- why normal-life testing may take too long.
- accelerate by increasing a relevant stress.
- acceleration factor.
- requirement that the dominant failure mechanism remain applicable.
- overstress can create unrealistic failure modes.
- test-to-failure versus qualification demonstration.

### 8.11 Common Acceleration Models

Use only with mechanism context:

- Arrhenius temperature acceleration;
- inverse-power law for stress/load relationships;
- thermal-cycling/fatigue acceleration concepts;
- humidity-temperature models awareness if useful;
- cumulative damage/Miner's rule for variable cyclic loading.

Teach model selection as more important than formula memorization.

### 8.12 Reliability Qualification and Environmental Testing

- temperature cycling;
- thermal shock;
- high-temperature operating/storage life awareness;
- humidity/bias testing awareness;
- vibration;
- mechanical shock/drop;
- board strain;
- solder-joint reliability testing;
- electrical functional monitoring during/after testing.

Introduce JEDEC JESD22/JESD47, IPC-9701, IEC 60068, MIL-STD-810 as examples of standard frameworks depending on industry/application.

### 8.13 Production Quality versus Reliability Qualification

Clarify the distinction:

- SPI/AOI/X-ray/ICT/functional test: production quality and defect detection;
- environmental/accelerated testing: reliability/qualification;
- screening: removing early defects;
- qualification: demonstrating design/process suitability;
- field reliability: actual use behavior.

### 8.14 Design for Reliability (DfR)

Practical workflow:

1. define mission profile;
2. identify critical functions;
3. identify stresses and failure mechanisms;
4. establish margins/derating where appropriate;
5. establish design margins/derating where appropriate and select materials/processes;
6. analyze thermal/mechanical/electrical risk;
7. plan verification/qualification;
8. collect failures and update the design.

### 8.15 FMEA and Risk Prioritization

Introductory practical tool:

- function;
- failure mode;
- cause/mechanism;
- effect;
- existing controls;
- severity/occurrence/detection awareness;
- actions and ownership.

Avoid treating a single RPN number as a substitute for engineering judgment.

### 8.16 Failure Analysis and Root-Cause Closure

- preserve evidence.
- reproduce the failure.
- inspect non-destructively first.
- isolate electrical/thermal/mechanical/process causes.
- cross-section/microscopy/material analysis awareness.
- 5-Why/Fishbone as support tools.
- corrective and preventive action.
- verify corrective action.
- feed lessons back into DFM/process/design rules.

### 8.17 Reliability Communication

Readers should practice summarizing:

- requirement/mission profile;
- test conditions;
- failure count and time/cycles;
- failure mode/mechanism;
- analysis;
- confidence/limitations;
- recommended design/process action.

### 8.18 Integrated Final Case Study

Example OER-created case:

**Industrial controller for a hot, vibrating environment**

Readers must:

1. identify manufacturing and DFM risks;
2. identify thermal path and temperature risks;
3. identify vibration/thermal-cycle risks;
4. propose inspection/process controls;
5. construct a mission profile;
6. identify likely failure mechanisms;
7. choose a qualification test set;
8. interpret sample life data;
9. recommend design/process improvements.

This case should deliberately integrate Chapters 1-7.

### 8.19 Chapter Summary

Summarize reliability terminology, mission profiles, failure mode/mechanism/root cause, stress-strength thinking, essential reliability statistics, hazard/MTTF/MTBF, exponential/Weibull models, accelerated testing, qualification, DfR, FMEA, failure analysis, and reliability communication.

### 8.20 Practice Problems

Provide deterministic Chapter 8 practice problems using supplied life data, model assumptions, mission-profile information, acceleration-model parameters, and bounded qualification/failure-analysis scenarios. Preserve the distinction between statistical calculation and engineering judgment.

### 8.21 Practice Problem Keys

Provide the synchronized deterministic answer key for Section 8.20 using identical problem numbering and titles.

### Proposed OER Applied Activities

These are future additions:

- **Reliability Activity A:** Simple Weibull plot/data interpretation using a spreadsheet.
- **Reliability Activity B:** Create a mission profile and qualification plan.
- **Reliability Activity C:** Packaging FMEA for a mixed SMT/THT controller.
- **Reliability Activity D:** Root-cause case linking a field failure to manufacturing/thermal/mechanical evidence.

### Applied Chapter Elements

- **Worked example:** Exponential reliability with clear constant-hazard assumption.
- **Worked example:** Weibull characteristic life and failure fraction.
- **Worked example:** Arrhenius acceleration factor with mechanism/temperature caveat.
- **Case:** Choose an accelerated test without changing the failure mechanism.

### Authoring/Verification Cautions

The legacy reliability note should be simplified and corrected where needed:

- failure-time integrations should use physically appropriate limits (normally starting at time zero);
- do not imply that normal distributions are always appropriate for time-to-failure;
- do not use MTTF and MTBF interchangeably;
- state that \(MTTF=1/\lambda\) requires a constant hazard/exponential model;
- present the bathtub curve as a model, not a universal law;
- prioritize Weibull interpretation and design/test decisions over heavy probability derivations;
- verify acceleration-model assumptions and activation-energy values for the actual failure mechanism;
- distinguish screening, qualification, reliability demonstration, and field-life prediction.

### Primary Reference Anchors

- Legacy reliability instructional material.
- O'Connor & Kleyner, *Practical Reliability Engineering*.
- Jamnia, mechanical/electrical failure and reliability chapters.
- Tummala, design-for-reliability and microsystems-reliability chapters.
- IEEE EPS reliability-physics resources.
- IPC-9701, JEDEC JESD22/JESD47, IEC 60068, and application-specific standards.

---

# 7. Cross-Chapter Threads

These themes should deliberately reappear throughout the book so packaging is understood as one connected engineering system.

## 7.1 Design -> Manufacturing -> Reliability

- Chapter 2: fabrication constraints.
- Chapter 3: design choices that affect yield.
- Chapter 4: process variation and defects.
- Chapters 6-7: operating stresses.
- Chapter 8: field life and qualification.

## 7.2 Temperature Connects Everything

- electrical resistance and power loss;
- reflow process;
- PCB material behavior;
- thermal design;
- CTE mismatch;
- fatigue/creep;
- accelerated reliability testing.

## 7.3 Geometry Is a Multiphysics Design Variable

One geometric change can simultaneously affect:

- fabrication yield;
- solderability;
- impedance;
- crosstalk;
- thermal resistance;
- stiffness;
- vibration frequency;
- stress concentration;
- inspectability/rework.

## 7.4 Failure-Mechanism Thinking

The book should repeatedly use:

> **Symptom -> Mechanism -> Causes -> Evidence -> Corrective Action**

This begins in assembly troubleshooting and matures into reliability/failure analysis.

## 7.5 Simulation Is Not the Answer by Itself

For SolidWorks/FEA/CFD activities:

- define assumptions;
- use correct units/material properties;
- choose realistic boundary conditions;
- make a hand estimate first when possible;
- inspect mesh/sensitivity;
- compare to physical expectation;
- interpret results as engineering evidence, not truth.

---

# 8. Lab and Applied-Activity Integration Map

| Book Chapter | Existing Lab/Resource | OER Role |
|---|---|---|
| Ch. 1 | No dedicated lab | Product teardown/packaging-function identification (proposed short activity) |
| Ch. 2 | Background for Lab #1 and CAD work | PCB cross-section/stack-up interpretation activity (proposed) |
| Ch. 3 | Lab #1 - PCB DFM | Industry-style DFM review |
| Ch. 4 | Lab #2 - SMT Troubleshooting | Defect mechanism/root cause/corrective action |
| Ch. 4 | Lab #3 - THT Troubleshooting | Defect mechanism/root cause/corrective action |
| Ch. 4 | Lab #4 - Mixed Assembly + SPC | Process planning and control-chart reaction plan |
| Ch. 5 | Lab #5 - PCB Electrical Layout Issues | SI/PI/EMI layout diagnosis |
| Ch. 6 | SolidWorks Thermal Tutorial | Tool introduction and thermal-model workflow |
| Ch. 6 | Lab #6 - Draw a Circuit Board | Geometry/model preparation for simulation |
| Ch. 6 | Lab #7 - PCB Thermal Analysis | Temperature/heat-flux analysis and design sensitivity to \(h\) |
| Ch. 7 | None in current 2026 lab set | Add optional/proposed board strain/modal/random-vibration activities |
| Ch. 8 | None in current 2026 lab set | Add optional/proposed Weibull/FMEA/qualification-plan activities |

---

# 9. Standards Awareness Map by Chapter

| Chapter | Standards/Industry Families to Introduce |
|---|---|
| 1 | IPC/Global Electronics Association, JEDEC, IEEE EPS, SEMI - what standards/professional bodies do |
| 2 | IPC-2221/2222, IPC-6012, IPC-A-600, IPC-TM-650 |
| 3 | IPC-2221/2222, IPC-7352, IPC-2231, fabricator/assembler capability documents |
| 4 | J-STD-001, IPC-A-610, J-STD-005, IPC-7527, IPC-7711/7721, J-STD-033, ANSI/ESD S20.20 |
| 5 | IPC-2221, IPC-2152, IPC-TM-650 electrical test methods; interface-specific standards only as examples |
| 6 | JEDEC JESD51 thermal characterization; manufacturer package thermal data |
| 7 | IPC/JEDEC-9704, IPC-9701, IEC 60068 vibration/shock, MIL-STD-810 context |
| 8 | IPC-9701, JEDEC JESD22/JESD47, IEC 60068, application/customer qualification standards |

**Important:** The OER should explain **how to recognize when a standard is needed**, not attempt to reproduce standards.

---

# 10. Reference Map by Chapter

| Chapter | Primary Book References |
|---|---|
| 1 | Tummala (Device & Systems Packaging; Microsystems Packaging), Blackwell, SOP text |
| 2 | Coombs, Tummala system-level PWB/materials chapters |
| 3 | Coombs, Blackwell design-process/SMT chapters, IPC design standards |
| 4 | Coombs, Tummala board assembly, Blackwell SMT/test/inspection, IPC assembly standards |
| 5 | Bogatin, Tummala electrical package design |
| 6 | Jamnia, Tummala thermal management, Blackwell thermal management |
| 7 | Jamnia, Steinberg, Tummala thermo-mechanical reliability |
| 8 | O'Connor & Kleyner, Jamnia, Tummala reliability/design-for-reliability |

---

# 11. Benchmarking Against Other Packaging Courses

The outline intentionally retains the multidisciplinary core seen in established packaging education while adapting it for engineering technology and related applied-engineering readers with limited electrical prerequisite knowledge.

Benchmarks reviewed during outline development include:

- **Georgia Tech ECE/ME/MSE 4754 - Electronics Packaging Assembly, Reliability, Thermal Management, and Test:** emphasizes hands-on assembly, interconnections/materials, thermal management, reliability, inspection, failure analysis, and the electrical/mechanical/thermal/materials/process interdisciplinarity of packaging.
- **Portland State ME 478 - Introduction to Electronic Packaging:** emphasizes mechanical/materials aspects of packages, boards, subsystems and systems, including interconnections, assembly, thermal management, failure mechanisms, and reliability.
- **NPTEL/IIT Kharagpur - Electronic Packaging and Manufacturing:** emphasizes practical packaging/manufacturing knowledge with mechanical, materials, manufacturing, thermal, and reliability content, including boards, connectors, assemblies, thermal/mechanical design, and reliability assessment.

Common benchmark themes are therefore:

- packaging/assembly interdisciplinarity;
- substrates/PCBs and interconnections;
- materials and manufacturing processes;
- thermal management;
- mechanical/thermomechanical behavior;
- reliability/failure analysis;
- inspection/test;
- hands-on analysis and experimentation.

The OER intentionally differentiates itself by giving **more emphasis to PCB/PCBA manufacturing, DFM, troubleshooting, process control, and practical system-level packaging**, while reducing device-level physics and advanced electrical theory. This is consistent with the book's applied, employment-oriented audience rather than a specialist microelectronics-packaging graduate audience.

---

# 12. Editorial and Technical QA Checklist

Before any chapter is considered complete, perform all of the following.

## Pass 1 - Curriculum/Scope Check

- Does the material support the intended engineering technology and applied-engineering audience?
- Is every major concept connected to a real packaging decision?
- Has unnecessary theory been removed or marked optional?
- Does the chapter overlap unnecessarily with another chapter?
- Is the chapter consistent with the eight-chapter book progression?

## Pass 2 - Technical Verification

- Verify every equation and symbol definition.
- Verify units and dimensional consistency.
- Verify typical property/process values with at least one authoritative current source; preferably two when values vary significantly.
- Distinguish standards requirements from engineering guidelines and vendor capabilities.
- Verify failure mechanisms rather than relying on visually plausible explanations.
- Check that old empirical rules are still relevant and state their applicability.

## Pass 3 - OER/Originality and Pedagogy Check

- Prose is independently written.
- Figures are original/openly licensed/public-domain with correct attribution.
- Worked examples are newly created.
- Practice problems and matching answer keys are newly created.
- No reference book organization has been copied too closely.
- Figures have alt text.
- Equations are mdBook/KaTeX compatible.
- Chapter-end Practice Problems use deterministic answers or answer sets wherever practical.
- Practice Problem Keys use matching numbering/titles and are synchronized with the published problem set.
- Units are primarily SI, with common industry imperial units shown only where useful.
- Terminology is consistent across chapters.
- Each chapter has objectives, a chapter summary, deterministic practice problems where appropriate, synchronized practice-problem keys, and reference links.

---

# 13. Known Content Areas Requiring Special Revision from Existing Notes

## Chapter 1

- Verify public product-failure case-study root causes and avoid oversimplified causal claims.
- Keep semiconductor, device, passive-device, circuit, and IC-fabrication material at an applied bridge level accessible to readers with limited electrical background.
- Preserve the correct manufacturing convergence: semiconductor fabrication -> IC die -> packaged component; PCB fabrication -> bare PCB; components + bare PCB -> PCBA -> finished product.
- Clearly distinguish IC fabrication, IC packaging, PCB fabrication, and PCB assembly.
- Verify all transistor symbols, current/control descriptions, Boolean notation, logic equations, truth tables, and circuit figures.

## Chapter 2

- Refine solder-mask/environmental-protection language.
- Verify FR-4 property ranges and avoid universal values.
- Clarify what stack-up/layer count does and does not guarantee.

## Chapter 3

- Recast fixed clearance values as example capability/design-rule sets.
- Add DFM/DFA/DFT distinction.
- Add modern nuance to acid-trap discussions.
- Correct implication that requiring X-ray automatically means poor DFM.

## Chapter 4

- Verify all process windows and distinguish representative values from material/equipment specifications.
- Add ESD and moisture-sensitive-device handling.
- Strengthen process-control versus acceptance-inspection distinction.

## Chapter 5

- Major technical validation pass required for equations, transmission-line criteria, propagation velocity, termination descriptions, and layout heuristics.
- Remove much of the generic RLC filter review unless directly supporting packaging concepts.
- Emphasize return paths, rise time, impedance, decoupling, and layout diagnosis.

## Chapter 6

- Correct/qualify TDP definition.
- Correct use of package thermal metrics, especially \(\theta_{JA}\).
- Treat temperature-reliability rules as mechanism-dependent.
- Add thermal measurement/model-validation practices.

## Chapter 7

- Major rewrite from legacy note.
- Reduce general mechanics theory and long derivations.
- Add assembly-induced board strain and modern test/simulation context.
- Validate empirical Steinberg-type PCB vibration criteria and convert core examples to SI units.

## Chapter 8

- Major rewrite from legacy note.
- Reduce general statistics.
- Correct MTTF/MTBF and hazard assumptions.
- Emphasize mission profile, failure mechanisms, Weibull, accelerated testing, DfR, FMEA, qualification, and failure analysis.

---

# 14. Topics Intentionally Deferred or Kept Brief

The following may appear in sidebars, future-trends sections, or later expansions but should not displace the core book:

- detailed semiconductor wafer-fabrication recipes, process integration, and device-process optimization (Chapter 1.8 retains only a high-level fabrication overview);
- wire-bond process optimization;
- advanced flip-chip bump metallurgy;
- wafer-level packaging;
- fan-out wafer/panel packaging;
- glass/interposer/package-substrate design;
- chiplet interface standards;
- 2.5D/3D electrical co-design;
- RF/mmWave package design;
- photonics packaging;
- MEMS packaging;
- advanced liquid/immersion cooling calculations;
- detailed viscoplastic solder constitutive modeling;
- advanced plate/shell vibration theory;
- advanced Weibull confidence bounds and reliability statistics;
- detailed fault-tree/Markov reliability modeling.

These are valuable topics but are better treated after the PCB/PCBA-level packaging fundamentals have been established.

---

# 15. Current Project Decision

The OER will use the following **eight-chapter architecture** as its working master structure:

1. **Introduction to Electronic Packaging**
2. **PCB Structure, Materials, and Fabrication**
3. **Design for Manufacturability in Electronic Packaging**
4. **Electronic Assembly Technologies**
5. **Electrical Design Considerations**
6. **Thermal Design Considerations**
7. **Mechanical Design Considerations**
8. **Reliability of Electronic Packaging**

Chapters 1-6 will be developed from the revised 2026 materials but technically rechecked and rewritten for OER use. Chapter 1 now includes the explicit applied bridge from semiconductor foundations through devices, circuits, integrated circuits, IC fabrication, packaging, PCB assembly, and finished-product hierarchy. Chapters 7-8 will be rebuilt from the older notes using the same applied, industry-oriented approach.

The final book should stand independently as an open resource for engineering technology and related applied-engineering readers working in or preparing for the electronics packaging and manufacturing industry.

Beginning with Chapter 1, every chapter will use the same three-part ending:

> **Chapter Summary -> Practice Problems -> Practice Problem Keys**

This structure replaces the earlier combined chapter-end summary/review/practice format. Open-ended applied activities and labs remain valuable, but they should be kept separate from the deterministic keyed practice set unless a unique grading answer is intentionally defined.
