# MET406 OER Book Outline

## Working Title

**Electronic Packaging Applications: An Applied Introduction for Engineering Technology Students**

> **Project theme:** An applied OER for undergraduate Mechanical Engineering Technology (MET) students who have limited electrical-engineering background and want practical electronic-packaging knowledge that prepares them for work in electronics manufacturing, packaging, product engineering, quality, thermal/mechanical design, and reliability.

**Status:** Working master outline. Chapters 1-6 are based primarily on the revised Spring 2026 MET406 lecture notes and current labs. Chapters 7-8 use the Spring 2025 legacy notes as starting material and will be substantially redesigned. The outline is also informed by the uploaded reference library, current industry standards, professional-society resources, and benchmark university packaging courses.

**Research checkpoint:** August 29, 2026. Standards and industry references must be rechecked during chapter authoring because revisions continue to change.

---

# 1. Book Purpose, Audience, and Scope

## 1.1 Purpose

The book should help a student move from **seeing an electronic circuit as a schematic** to understanding the real engineered product that must be fabricated, assembled, powered, cooled, protected, tested, and kept reliable.

The central idea is:

> **Electronic packaging is the engineering that allows an electronic circuit to physically exist, be manufactured, survive its environment, and operate reliably.**

The book should prepare students to recognize and solve practical packaging problems rather than reproduce advanced theory.

## 1.2 Primary Audience

The primary reader is an undergraduate MET student who typically has:

- basic engineering mathematics;
- introductory mechanics and strength of materials;
- basic materials knowledge;
- CAD experience;
- introductory thermodynamics/heat transfer;
- only limited circuit/electrical background;
- little or no prior exposure to PCB fabrication, electronics assembly, signal integrity, power integrity, or reliability engineering.

The book may also be useful to manufacturing, mechatronics, industrial, and mechanical engineering students entering electronics-related work.

## 1.3 Career-Oriented Outcome

After completing the book, a student should be able to participate intelligently in entry-level work involving:

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

1. **MET406 lecture notes and labs** - first reference for intended course emphasis, pedagogy, terminology, and current teaching sequence.
2. **Uploaded core reference books** - cross-check scope, physical explanations, equations, terminology, and established engineering practice.
3. **Current standards and official industry resources** - verify acceptance criteria, terminology, test practices, and current industry usage.
4. **Manufacturer application notes and technical documentation** - verify practical implementation, package data, thermal metrics, process behavior, and realistic examples.
5. **Peer-reviewed literature and professional-society resources** - verify specialized or evolving topics.

Lecture slides are the curriculum starting point, **not an unquestioned authority**. Any questionable numerical value, equation, causal claim, or universal design rule should be verified before it is placed in the OER. The syllabus is used primarily for course outcomes and overall intent; where its tentative weekly chapter numbering differs from the actual revised lecture set, the current eight-chapter OER structure governs.

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

The OER should introduce standards as **industry awareness**, not reproduce copyrighted requirements. Standards should be presented by role (design, fabrication, process, acceptance, test, qualification) so students learn which type of document to consult.

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

After completing the book, students should be able to:

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
| 1 | Introduction to Electronic Packaging | What is electronic packaging, where does it fit in the electronics industry, and what does a packaging engineer/technologist do? |
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
12. **Review Questions**
13. **Original Practice Problems**
14. **Further Reading / References**

Recurring applied boxes should include:

- **Engineering Decision** - what variable should be changed and why?
- **Troubleshooting** - symptom -> mechanism -> causes -> corrective action.
- **Industry Practice** - how the concept appears in a real factory/design workflow.
- **Common Mistake** - common misunderstanding or misuse of a rule/equation.
- **Standards Awareness** - where industry standards become relevant without reproducing proprietary criteria.

## 5.1 Content-Level Labels

To keep the book applied and prevent scope growth, content can be marked during authoring as:

- **Core** - expected knowledge for every MET406 reader;
- **Applied Awareness** - important industry context that students should recognize but not analyze in depth;
- **Optional Enrichment** - deeper theory, derivations, or specialized technology that may be omitted without breaking the main learning path.

## 5.2 Front Matter

The finished OER should include:

- preface and intended audience;
- book theme and learning philosophy;
- how to use the book for a course or self-study;
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

Establish electronic packaging as the multidisciplinary engineering that turns semiconductor devices and electronic circuits into manufacturable, testable, serviceable, and reliable products.

Because the intended MET audience may have limited electrical/electronics background, Chapter 1 also provides a compact, application-oriented bridge covering the minimum semiconductor, device, IC-fabrication, IC-packaging, PCB-assembly, and product-integration knowledge needed to understand later chapters.

The chapter intentionally follows a **physical manufacturing story first, engineering abstraction second**:

> **Semiconductor material -> semiconductor devices -> integrated circuit -> wafer fabrication -> bare die -> IC packaging -> PCB assembly -> PCBA -> finished product -> packaging hierarchy**

Sections 1.3-1.5 provide only the semiconductor and IC-fabrication background needed to understand electronic packaging. They are not intended to prepare students for semiconductor-fabrication employment or replace a semiconductor-device or microfabrication course.

Sections 1.6-1.8 then shift decisively toward the processes and structures most relevant to PCB/PCBA manufacturing and electronic-product engineering.

### Learning Objectives

Students should be able to:

- define electronic packaging in practical terms;
- distinguish circuit/electronic design from packaging design;
- explain why packaging affects performance, manufacturability, cost, quality, reliability, serviceability, and product life;
- use basic electrical terms such as voltage, current, resistance, ground/reference, and bias correctly;
- explain at an introductory level how silicon becomes N-type or P-type material and how a PN junction behaves under forward and reverse bias;
- recognize common electronic-device and schematic symbols, including diode, resistor, capacitor, BJT, FET, NMOS, and PMOS;
- explain conceptually how MOSFETs act as switches and how transistors can be combined into logic gates and simple digital functions;
- explain how semiconductor devices and interconnects are physically fabricated on a wafer using repeated deposition, patterning, etching, doping, planarization, and metallization operations;
- distinguish FEOL, MOL, BEOL, wafer test, singulation, bare die, packaged IC, PCB, PCBA, module, and finished product;
- explain at an awareness level Moore's Law, modern process-node naming, planar MOSFETs, FinFETs, gate-all-around transistors, advanced lithography, and backside power delivery;
- explain why semiconductor scaling creates more demanding packaging requirements;
- describe how a bare die is converted into a packaged component;
- recognize common IC package families and distinguish package style, PCB mounting method, and internal die-to-package interconnection;
- explain how packaged ICs, other components, and a separately fabricated bare PCB converge in PCB assembly;
- describe the major SMT/THT assembly, inspection, and test stages at an introductory level;
- explain how a PCBA is mechanically, thermally, electrically, and environmentally integrated into a finished electronic product;
- explain why ESD, moisture sensitivity, hidden joints, package warpage, heat generation, and switching behavior matter in PCBA manufacturing;
- explain the packaging hierarchy after following the physical manufacturing process from die to system;
- identify likely MET roles in PCB/PCBA manufacturing, product engineering, quality, troubleshooting, thermal/mechanical design, and reliability;
- recognize major trends such as heterogeneous integration, chiplets, 2.5D/3D packaging, HBM, hybrid bonding, advanced substrates, and advanced cooling at a survey level.

---

### 1.1 What Is Electronic Packaging?

**Status:** Locked. Keep the completed section unchanged during the Chapter 1 restructuring.

- Why this chapter matters.
- Chapter learning objectives.
- Definition of an electronic package.
- Definition of electronic packaging.
- Electronic packaging as the physical realization of an electronic design.
- Electronic design versus packaging design.
- From electrical function to physical product.
- Major physical elements of an electronic product:
  - semiconductor device;
  - package;
  - PCB;
  - interconnects;
  - connectors;
  - cooling structures;
  - mechanical supports;
  - enclosure.
- Why a correct schematic is not yet a usable product.
- Typical questions asked by packaging engineers and engineering technologists.
- Key terminology.
- Section takeaway.

**Planned figure**

- Figure 1.1.1 - From Circuit Design to Physical Electronic Product.

---

### 1.2 Why Packaging Matters in Industry

**Status:** Locked. Keep the completed section unchanged during the Chapter 1 restructuring.

- Packaging affects product performance:
  - electrical behavior;
  - power delivery;
  - temperature;
  - mechanical behavior.
- Physical design can change electrical behavior.
- Packaging affects reliability and product life.
- Failure chains:
  - physical/process problem;
  - packaging effect;
  - electrical or functional consequence.
- Packaging affects manufacturability and yield.
- Design for Manufacturability (DFM).
- Packaging affects direct and indirect cost:
  - material;
  - manufacturing;
  - inspection;
  - rework;
  - scrap;
  - warranty;
  - field service.
- Packaging affects time to market.
- Packaging affects inspection, rework, and serviceability.
- Packaging affects safety and environmental protection.
- Packaging as a system-level engineering tradeoff.
- Product-life-cycle perspective:
  - design;
  - fabrication;
  - assembly;
  - inspection/test;
  - qualification;
  - production;
  - field operation;
  - maintenance/repair.
- What these relationships mean for an engineering technology student.
- Section takeaway.

**Planned figures**

- Figure 1.2.1 - Packaging Decisions Affect the Entire Product.
- Figure 1.2.2 - Packaging Across the Product Life Cycle.

---

## Part I - Background Needed to Understand the IC

### 1.3 Electrical and Semiconductor Foundations

**Purpose:** Give MET students the minimum electrical and semiconductor background needed to understand what exists inside an IC and why it behaves as it does.

#### 1.3.1 Basic Electrical Language

- Electric charge.
- Electrons.
- Voltage.
- Current.
- Conventional current versus electron motion.
- Electrical resistance.
- DC voltage and current.
- Ground and electrical reference.
- What electrical **bias** means.
- Why these terms are needed when reading schematics and device information.

#### 1.3.2 Conductors, Insulators, and Semiconductors

- Conductors.
- Insulators.
- Semiconductors.
- Why silicon is widely used.
- Electrical conductivity as a controllable material property.

#### 1.3.3 Pure Silicon

- Silicon atomic structure.
- Valence electrons.
- Covalent bonding.
- Intrinsic semiconductor.
- Why pure silicon conducts relatively poorly.

#### 1.3.4 Semiconductor Doping

- Purpose of doping.
- Donor impurities.
- Acceptor impurities.
- Free electrons.
- Holes.
- Majority and minority carriers at awareness level.
- N-type semiconductor.
- P-type semiconductor.

#### 1.3.5 The PN Junction

- Bringing P-type and N-type regions together.
- Carrier diffusion.
- Recombination.
- Fixed ionized dopants.
- Depletion region.
- Internal electric field.
- Built-in barrier concept.

#### 1.3.6 Biasing a PN Junction

- Forward bias.
- Narrowing of the depletion region.
- Increased current.
- Reverse bias.
- Widening of the depletion region.
- Very small reverse current under normal conditions.
- Breakdown as awareness-level terminology.

#### 1.3.7 The Semiconductor Diode

- PN junction as a diode.
- Anode and cathode.
- Diode schematic symbol.
- Basic rectifying behavior.
- Why diodes appear in power, protection, and signal circuits.

#### Why This Matters for Packaging

- Semiconductor structures are physically fragile.
- Junction temperature affects device behavior.
- Semiconductor devices can be damaged by ESD.
- Package electrical and thermal interfaces ultimately connect to these internal structures.

**Planned figures**

- Figure 1.3.1 - Basic Electrical Quantities in a Simple DC Circuit.
- Figure 1.3.2 - Conductor, Insulator, and Semiconductor.
- Figure 1.3.3 - Doping Silicon to Create N-Type and P-Type Material.
- Figure 1.3.4 - Formation of a PN Junction from Diffusion to Equilibrium.
- Figure 1.3.5 - PN Junction at Equilibrium, Forward Bias, and Reverse Bias.

---

### 1.4 From Semiconductor Devices to Integrated Circuits

**Purpose:** Bridge from semiconductor material behavior to recognizable electronic devices, schematic symbols, logic circuits, and finally an integrated circuit.

#### 1.4.1 Basic Electronic Components and Schematic Symbols

Introduce each physical device together with its schematic symbol and basic circuit role:

- resistor;
- capacitor;
- diode;
- transistor;
- ground;
- voltage source.

Emphasize:

> A schematic symbol represents electrical function, not the exact physical geometry of the component.

#### 1.4.2 Transistor Families

Basic transistor classification:

- Bipolar Junction Transistor (BJT):
  - NPN;
  - PNP.
- Field-Effect Transistor (FET):
  - JFET at recognition level;
  - MOSFET:
    - NMOS;
    - PMOS.

#### 1.4.3 BJT Fundamentals

- Emitter.
- Base.
- Collector.
- NPN versus PNP.
- Circuit symbols.
- Transistor as switching/amplifying device.
- Awareness of analog, RF, and power applications.
- No transistor-bias calculations.

#### 1.4.4 MOSFET Structure

- Source.
- Drain.
- Gate.
- Body/substrate.
- Gate dielectric.
- N-type and P-type regions.
- Insulated gate.
- Electric-field control of the channel.

#### 1.4.5 How an NMOS Transistor Works

- MOSFET initially off.
- Applying positive gate-to-source voltage.
- Formation of an inversion channel.
- Current path between drain and source.
- MOSFET as a voltage-controlled switch.

#### 1.4.6 PMOS and Complementary Operation

- PMOS concept.
- Complementary switching behavior.
- Why NMOS and PMOS work together in CMOS.

#### 1.4.7 Integrated Resistors and Capacitors

- Resistor structures formed using doped regions, polysilicon, or other resistive films.
- Capacitor structures formed using conductive layers separated by dielectric material.
- Distinction between:
  - discrete PCB-level components;
  - structures integrated within an IC.

#### 1.4.8 Analog, Digital, and Mixed-Signal Circuits

- Analog-signal concept.
- Digital logic levels.
- Mixed-signal ICs.
- Application examples.

#### 1.4.9 From MOSFETs to CMOS Logic

- CMOS inverter.
- Logic 0 and logic 1.
- Switching concept.
- Why CMOS is widely used in digital ICs.

#### 1.4.10 Basic Logic Gates

Recognition and function of:

- NOT;
- AND;
- OR;
- NAND;
- NOR;
- XOR.

Use truth tables only where they improve understanding.

#### 1.4.11 From Logic Gates to a Simple Adder

- Binary inputs.
- SUM output.
- CARRY output.
- Half-adder:
  - XOR for SUM;
  - AND for CARRY.
- Full adder at awareness level.
- Building more complex digital functions from simple gates.

#### 1.4.12 From Gates to Complex Integrated Circuits

Conceptual progression:

> **transistor -> logic gate -> functional block -> complete integrated circuit**

Representative IC categories:

- digital logic;
- processors/controllers;
- memory;
- analog;
- mixed-signal;
- RF;
- power devices;
- sensors/MEMS.

#### Why This Matters for Packaging

- Switching creates heat.
- Rapid switching produces power-integrity and EMI concerns.
- High transistor density increases power-delivery demands.
- Internal device structures eventually connect to package pads, bumps, or bond wires.

**Planned figures**

- Figure 1.4.1 - Major Electronic Devices and Their Schematic Symbols.
- Figure 1.4.2 - How Basic Electronic Elements Can Be Integrated on a Chip.
- Figure 1.4.3 - How an NMOS MOSFET Acts as a Voltage-Controlled Switch.
- Figure 1.4.4 - NMOS and PMOS Forming a CMOS Inverter.
- Figure 1.4.5 - From Transistors to Logic Gates to a Simple Adder.

---

### 1.5 How Integrated Circuits Are Fabricated

**Purpose:** Explain how the circuit discussed in Section 1.4 is physically created on a semiconductor wafer, without turning the section into a semiconductor-processing course.

#### 1.5.1 From Circuit Design to Physical Layout

Conceptual design flow:

> functional requirement  
> -> circuit / schematic or HDL  
> -> transistor-level implementation  
> -> physical IC layout  
> -> mask / reticle data  
> -> wafer fabrication

Students do not need to perform IC physical design, but should understand that the semiconductor fab manufactures a previously designed geometric pattern.

#### 1.5.2 Silicon Wafer Preparation

- Purification of silicon.
- Single-crystal growth.
- Ingot.
- Wafer slicing.
- Lapping/polishing.
- Cleaning.
- Optional epitaxial layer.

#### 1.5.3 The Repeated Fabrication Cycle

Central fabrication mental model:

> **Grow or deposit -> coat -> pattern -> etch or modify -> clean -> inspect -> repeat**

Explain that modern IC fabrication contains many repeated process cycles rather than one simple sequence.

#### 1.5.4 Oxidation

- Growing silicon dioxide.
- Insulation and process roles.
- Historical and modern context.

#### 1.5.5 Thin-Film Deposition

Awareness-level introduction to:

- Chemical Vapor Deposition (CVD);
- Physical Vapor Deposition (PVD);
- Atomic Layer Deposition (ALD).

Purpose:

- dielectric films;
- conducting films;
- semiconductor films;
- barrier layers.

#### 1.5.6 Photolithography

- Photoresist.
- Mask/reticle.
- Exposure.
- Develop.
- Transferring microscopic patterns.
- Repeated wafer exposure fields.

#### 1.5.7 Etching

- Selectively removing material.
- Wet etching.
- Dry/plasma etching.
- Anisotropic pattern-transfer concept.

#### 1.5.8 Doping the Wafer

- Ion implantation.
- Diffusion.
- Annealing.
- Activating dopants.
- Forming wells, source/drain regions, and other device regions.

#### 1.5.9 Epitaxy

- Growing controlled crystalline semiconductor layers.
- Why epitaxial structures are useful.

#### 1.5.10 Chemical-Mechanical Planarization

- CMP.
- Flattening the wafer surface.
- Why planarization becomes important in multilayer fabrication.

#### 1.5.11 Building the Transistor

Simplified modern CMOS device sequence:

- isolation;
- wells;
- channel region;
- gate dielectric;
- gate electrode;
- source/drain structures;
- spacers;
- contacts.

No detailed process recipe or device calculations.

#### 1.5.12 FEOL, MOL, and BEOL

**FEOL**

- Active semiconductor-device formation.

**MOL**

- Contacts and local connection to devices.

**BEOL**

- Dielectric layers.
- Metal interconnect.
- Vias.
- Repeated metal levels.

Clarify:

> Semiconductor BEOL is not the same as PCB assembly or electronic packaging, although the term "back end" may be used differently in different parts of industry.

#### 1.5.13 Multilevel Metal Interconnect

- Transistors occupy the lower device region.
- Many metal layers may exist above them.
- Contacts.
- Vias.
- Local and global interconnect.
- Power and signal routing inside the IC.

#### 1.5.14 Passivation and External Interface

- Final protective layer.
- Bond pads.
- Bump pads.
- Interfaces to later packaging operations.

#### 1.5.15 Wafer Inspection and Electrical Test

- Process inspection.
- Defect detection.
- Wafer probe.
- Wafer sort.
- Wafer maps.
- Good versus bad die.
- Known-good-die concept.
- Why testing before expensive packaging can reduce cost.

#### 1.5.16 Semiconductor Materials Beyond Silicon

Recognition-level introduction:

- Silicon (Si).
- Silicon Carbide (SiC).
- Gallium Nitride (GaN).
- Gallium Arsenide (GaAs).

Packaging implications:

- temperature;
- voltage;
- current;
- switching speed;
- thermal density;
- parasitic inductance;
- insulation requirements.

#### 1.5.17 Moore's Law and Semiconductor Scaling

- Historical growth in transistor density.
- Moore's Law as an industry observation rather than a physical law.
- Increasing transistor count.
- Historical reduction of transistor dimensions.
- Why simple geometric scaling has become increasingly difficult.

#### 1.5.18 Dennard Scaling at Awareness Level

- Historical ability to reduce voltage as transistors shrank.
- Why power density originally remained more manageable.
- Why voltage and power scaling eventually stopped keeping pace.
- Resulting thermal and power-delivery challenges.

#### 1.5.19 What a Semiconductor "Node" Means

- Historical connection between node names and physical dimensions.
- Modern node names as process-generation designations.
- Why "2 nm" does not mean every critical feature is exactly 2 nm.
- Why node names from different manufacturers should not be compared solely by the number.
- Power, Performance, and Area (**PPA**) as a more useful engineering concept.

#### 1.5.20 Evolution of Transistor Structures

- Planar MOSFET.
- FinFET.
- Gate-All-Around (GAA) transistor.
- Nanosheet / nanoribbon implementations.
- Why stronger gate control is needed as devices shrink.

Awareness-level future directions:

- forksheet;
- Complementary FET (CFET);
- vertical transistor concepts.

#### 1.5.21 Same Circuit Symbol, Different Physical Transistor

Key concept:

> A planar NMOS, FinFET NMOS, and GAA NMOS may use essentially the same circuit-level NMOS representation even though their physical device structures are very different.

#### 1.5.22 Modern Lithography

Recognition-level progression:

- DUV;
- EUV;
- High-NA EUV.

Focus on:

- smaller patterning;
- manufacturing complexity;
- alignment;
- process cost;
- metrology.

#### 1.5.23 Backside Power Delivery

- Traditional front-side power and signal routing.
- Concept of delivering power from the backside.
- Reduced routing congestion.
- Power-integrity benefits.
- Awareness of current leading-edge implementation.

#### 1.5.24 Why Scaling Makes Packaging More Important

As semiconductor technology advances:

- transistor density increases;
- local heat flux can increase;
- operating voltage decreases;
- supply current can become very large;
- I/O density increases;
- memory-bandwidth demands increase;
- package parasitics matter more;
- cooling becomes more difficult;
- power delivery becomes more difficult.

Transition toward:

- chiplets;
- 2.5D integration;
- 3D integration;
- HBM;
- hybrid bonding;
- advanced substrates;
- advanced cooling.

> **Packaging increasingly becomes part of the scaling strategy rather than simply something added after semiconductor fabrication.**

**Planned figures**

- Figure 1.5.1 - From Circuit Design to Wafer Pattern.
- Figure 1.5.2 - Repeated Process Modules in Semiconductor Fabrication.
- Figure 1.5.3 - Simplified CMOS Fabrication Sequence.
- Figure 1.5.4 - Anatomy of a Finished IC Die: FEOL, MOL, and BEOL.
- Figure 1.5.5 - Wafer Probe and Wafer Map.
- Figure 1.5.6 - Moore's Law and Semiconductor Process Scaling.
- Figure 1.5.7 - Evolution of the MOSFET: Planar -> FinFET -> GAA.

**Figure note:** EUV and backside-power concepts may be handled with small inline explanatory diagrams unless drafting shows that a dedicated numbered figure is necessary.

---

## Part II - From Semiconductor Die to Electronic Product

### 1.6 IC Packaging: From Bare Die to Packaged Component

**Purpose:** Introduce the first major packaging transformation: converting a fragile bare semiconductor die into a practical electronic component that can be handled, tested, soldered to a PCB, cooled, inspected, and integrated into a product.

#### 1.6.1 From Finished Wafer to Individual Die

- Wafer probe.
- Wafer map.
- Known good die.
- Dicing/singulation.
- Bare-die handling.

#### 1.6.2 Why a Bare Die Needs Packaging

Packaging provides:

- electrical connection;
- mechanical support;
- environmental protection;
- thermal path;
- handling;
- manufacturability;
- testability.

#### 1.6.3 Anatomy of an IC Package

- Semiconductor die.
- Die attach.
- Leadframe or package substrate.
- Internal interconnect.
- Encapsulant, mold compound, or lid.
- External leads, pads, pins, or solder balls.
- Thermal features such as exposed pads, lids, or heat spreaders.

#### 1.6.4 Chip-to-Package Interconnection

- Wire bonding.
- Flip-chip.
- Solder bumps.
- Copper pillars.
- Underfill.
- TAB only as historical/recognition context if useful.

#### 1.6.5 Package Classification by External Connection

##### Through-hole packages

- DIP.
- Other pin/lead packages at recognition level.

##### Leaded surface-mount packages

- SOIC.
- TSSOP.
- QFP.

##### Leadless surface-mount packages

- QFN.
- DFN.
- LGA.

##### Area-array packages

- BGA.
- FBGA.
- PGA where relevant.

#### 1.6.6 Package Style, Mounting Technology, and Internal Interconnection

Important distinction:

> **Package type != PCB mounting technology != internal die interconnection**

Example:

- BGA = external package style;
- SMT = board-assembly method;
- wire bond or flip-chip = possible internal die interconnection.

#### 1.6.7 Package-Substrate-Based Packages

- Package substrate as an intermediate routing structure.
- Redistribution between fine die pitch and larger PCB pitch.
- BGA.
- FC-BGA.
- Why package substrates matter for electrical, thermal, and manufacturing performance.

#### 1.6.8 Chip-Scale and Wafer-Level Packaging

Recognition level:

- CSP.
- WLCSP.
- Fan-in.
- Fan-out.
- Redistribution Layer (RDL).
- Under-Bump Metallurgy (UBM).

Emphasize that the boundary between wafer fabrication and packaging can become less distinct in wafer-level technologies.

#### 1.6.9 Thermal Features of IC Packages

- Exposed thermal pad.
- Heat spreader.
- Lid.
- Thermal path into the PCB.
- Thermal vias introduced conceptually.
- Why package construction affects later thermal design.

#### 1.6.10 Power Semiconductor Packages

Recognition level:

- TO-220.
- TO-247.
- DPAK.
- D2PAK.
- Power QFN.
- Power modules.

Key concerns:

- current path;
- thermal path;
- parasitic inductance;
- mounting;
- insulation/clearance awareness.

#### 1.6.11 Multi-Die and Advanced Packages

Awareness level:

- Multi-Chip Module (MCM).
- System-in-Package (SiP).
- Stacked die.
- Chiplets.
- Interposers.
- 2.5D integration.
- 3D integration.
- HBM.

Clarify that one electronic package does not necessarily contain only one die.

#### 1.6.12 Packaging Issues Relevant to PCBA Manufacturing

- Package pitch.
- Coplanarity.
- Exposed pads.
- Hidden joints.
- Package warpage.
- Moisture sensitivity.
- ESD sensitivity.
- Inspection accessibility.
- Rework difficulty.

#### Section Takeaway

> The IC package converts the microscopic semiconductor die into a manufacturable component that can be handled, tested, soldered to a PCB, cooled, inspected, and integrated into a product.

**Planned figures**

- Figure 1.6.1 - Anatomy of a Typical IC Package.
- Figure 1.6.2 - Common IC Package Families.
- Figure 1.6.3 - External PCB Interconnection Styles.
- Figure 1.6.4 - Wire Bonding versus Flip-Chip.
- Figure 1.6.5 - Wafer-Level and Advanced Package Structures.
- Figure 1.6.6 - Common Power Packages and Their Thermal Paths.

**Recommended table**

- Package style versus PCB mounting method versus possible internal die interconnection.

---

### 1.7 From Components and Bare PCB to PCBA

**Purpose:** Show how separately manufactured semiconductor packages, other electronic components, and a separately fabricated bare PCB converge in the PCB assembly factory.

#### 1.7.1 The Manufacturing Streams Converge

Use the conceptual model:

> Semiconductor fabrication -> IC packaging -> packaged IC  
> Other electronic components -> component supply  
> PCB fabrication -> bare PCB  
> **These streams converge at PCB assembly -> PCBA**

This avoids implying that the PCB is manufactured from the packaged IC.

#### 1.7.2 The Bare PCB

Short introduction only:

- substrate;
- copper traces;
- pads;
- vias;
- solder mask;
- silkscreen.

Detailed PCB structure/materials/fabrication belong in Chapter 2.

#### 1.7.3 Incoming Components

- ICs.
- Resistors.
- Capacitors.
- Inductors.
- Connectors.
- Sensors.
- Electromechanical components.

#### 1.7.4 Material Handling Before Assembly

- Component identification.
- Reels, trays, and tubes.
- ESD awareness.
- Moisture sensitivity.
- MSL awareness.
- Controlled storage.
- Baking where required.

Detailed handling requirements appear later in Chapter 4.

#### 1.7.5 Solder-Paste Printing

- Stencil.
- Solder paste.
- Deposited paste.
- Importance of paste volume and alignment.

#### 1.7.6 Solder Paste Inspection

- SPI.
- Deposit height/area/volume concept.

#### 1.7.7 Pick-and-Place

- Feeders.
- Component pickup.
- Machine vision.
- Placement.

#### 1.7.8 Reflow Soldering

- Preheat.
- Soak.
- Reflow.
- Cooling.
- Solder-joint formation.

Detailed process windows and control belong in Chapter 4.

#### 1.7.9 Through-Hole Assembly

- Component insertion.
- Wave soldering.
- Selective soldering.
- Hand soldering where appropriate.

#### 1.7.10 Inspection

- Visual inspection.
- AOI.
- X-ray.
- Hidden-joint inspection.

#### 1.7.11 Electrical and Functional Test

- Continuity/basic electrical test.
- ICT awareness.
- Functional testing.

#### 1.7.12 Rework and Repair

- Component removal.
- Replacement.
- Process limitations.
- Traceability.

#### 1.7.13 The Finished PCBA

Clarify:

> **PCB = bare board**  
> **PCBA = board with assembled components**

#### Section Takeaway

> PCB assembly combines the bare PCB and separately manufactured electronic components into a functional PCBA.

**Planned figures**

- Figure 1.7.1 - Manufacturing Streams Converging at PCB Assembly.
- Figure 1.7.2 - Simplified PCB Assembly Process.
- Figure 1.7.3 - SPI, AOI, and X-Ray: What Each Inspection Method Sees.

---

### 1.8 From PCBA to Finished Electronic Product

**Purpose:** Show that electronic packaging continues beyond PCB assembly and that a functioning PCBA is often only one subsystem of the final product.

#### 1.8.1 PCBA as a Subassembly

- One PCBA versus multiple PCBAs.
- Board-to-board connections.
- Cables/harnesses.

#### 1.8.2 Electrical Integration

- Connectors.
- Cables.
- Power supplies.
- Batteries.
- Displays.
- Sensors.
- Antennas where applicable.

#### 1.8.3 Mechanical Integration

- Chassis.
- Brackets.
- Standoffs.
- Fasteners.
- Card guides.
- Structural support.

#### 1.8.4 Thermal Integration

- Heat sinks.
- Thermal Interface Materials (TIMs).
- Heat spreaders.
- Fans.
- Vapor chambers.
- Cold plates/liquid cooling at awareness level.

#### 1.8.5 Environmental Protection

- Enclosure.
- Seals.
- Conformal coating.
- Shielding.
- Dust/moisture protection.

#### 1.8.6 EMI/EMC Integration

- Shielding.
- Grounding.
- Filtering.
- Cable/interface considerations.

#### 1.8.7 Firmware and System Bring-Up

Awareness level:

- Programming.
- Configuration.
- System initialization.

#### 1.8.8 Final Assembly

- Enclosure installation.
- Mechanical closure.
- Labeling.
- Traceability.

#### 1.8.9 Product-Level Inspection and Test

- Final functional test.
- Safety testing where applicable.
- System-level verification.

#### 1.8.10 Qualification

Awareness of:

- temperature;
- thermal cycling;
- vibration;
- shock;
- humidity;
- environmental testing.

#### 1.8.11 Production, Shipping, and Field Operation

- Manufacturing release.
- Packaging/shipping.
- Installation.
- Operation.
- Maintenance.
- Repair.
- Failure feedback.

#### Section Takeaway

> A functioning PCBA is often only one subsystem. Product-level packaging integrates electronics with mechanical, thermal, electrical, environmental, and user-interface structures.

**Planned figures**

- Figure 1.8.1 - From PCBA to Finished Electronic Product.
- Figure 1.8.2 - Product Integration, Qualification, and Field Life.

---

## Part III - Organizing and Understanding Electronic Packaging

### 1.9 Packaging Hierarchy

**Purpose:** After students have physically followed the product from die to system, formalize those stages using a packaging hierarchy.

#### 1.9.1 Why Use a Packaging Hierarchy?

- Need for an organizational model.
- Packaging exists at multiple physical scales.

#### 1.9.2 Die / Device Level

#### 1.9.3 IC Package / Component Level

#### 1.9.4 Board / PCBA Level

#### 1.9.5 Module / Subassembly Level

#### 1.9.6 Product / System Level

#### 1.9.7 Connections Between Levels

#### 1.9.8 Hierarchy Is an Organizational Model

- No single universal numbering system.
- Terminology varies across industries and sources.
- Use this book's hierarchy consistently for teaching.

#### 1.9.9 Modern Technologies Blur Traditional Boundaries

- Wafer-level packaging.
- SiP.
- Chiplets.
- 2.5D.
- 3D.
- Hybrid bonding.

**Planned figure**

- Figure 1.9.1 - Electronic Packaging Hierarchy from Die to System.

---

### 1.10 Major Functions of Electronic Packaging

- Electrical interconnection:
  - signal;
  - power;
  - ground.
- Thermal management.
- Mechanical support.
- Environmental protection.
- Manufacturability.
- Testability.
- Inspection.
- Reliability.
- Serviceability.
- Cost.

Central idea:

> One packaging structure often performs several functions simultaneously.

**Planned figure**

- Figure 1.10.1 - Multiple Functions Performed by an Electronic Package.

---

### 1.11 Electronic Packaging as a Multidisciplinary Field

Connections among:

- electrical engineering;
- mechanical engineering;
- materials engineering;
- manufacturing engineering;
- chemical/process engineering;
- quality engineering;
- reliability engineering;
- industrial engineering;
- engineering technology.

Use a practical problem rather than a generic discipline wheel.

Example:

> A BGA solder-joint failure may simultaneously involve materials, thermal cycling, PCB mechanics, assembly process, inspection, electrical function, and reliability.

**Planned figure**

- Figure 1.11.1 - One Packaging Failure, Multiple Engineering Disciplines.

---

### 1.12 Where Engineering Technology Graduates Fit

Focus on likely work in PCB/PCBA manufacturing and electronic-product engineering rather than semiconductor-fab employment.

Typical activities:

- PCB/PCBA manufacturing support;
- manufacturing/process engineering;
- SMT process support;
- DFM review;
- inspection;
- AOI/SPI/X-ray analysis;
- quality engineering;
- troubleshooting;
- failure investigation;
- thermal analysis;
- mechanical analysis;
- reliability testing;
- fixture/tooling design;
- supplier/manufacturer communication;
- corrective action;
- process improvement;
- documentation.

Typical questions:

- Why is this defect occurring?
- Is this board manufacturable?
- Why is this component overheating?
- Why is the solder joint cracking?
- Is the process stable?
- How can yield be improved?
- Is this failure caused by the component, package, solder joint, PCB, or environment?

**Planned figure**

- Figure 1.12.1 - Where MET Graduates Contribute in Electronics Manufacturing.

---

### 1.13 Packaging Across Product Environments

Introduce the concept of a **mission profile**.

Representative applications:

- consumer electronics;
- industrial controls;
- automotive;
- aerospace;
- telecommunications;
- data centers;
- medical equipment;
- portable electronics;
- outdoor electronics;
- high-power electronics.

Possible environmental loads:

- temperature;
- thermal cycling;
- humidity;
- contamination;
- vibration;
- shock;
- dust;
- corrosion;
- altitude;
- electrical noise;
- user handling.

Emphasize:

> Packaging strategy must match the environment in which the product will actually operate.

**Planned figure**

- Figure 1.13.1 - Mission Profiles Create Different Packaging Requirements.

---

### 1.14 Industry Trends: What Is Changing?

Keep this section survey-level because many specific technologies have already been introduced earlier.

#### Semiconductor and Device Trends

- Continuing transistor scaling.
- GAA transistors.
- Wide-bandgap semiconductors.
- High power density.

#### Packaging and Integration Trends

- Chiplets.
- Heterogeneous integration.
- 2.5D packaging.
- 3D stacking.
- Hybrid bonding.
- HBM.
- Advanced substrates.
- Wafer-level packaging.
- Fan-out packaging.

#### Manufacturing Trends

- Smaller components.
- Finer pitch.
- Increasing hidden joints.
- More X-ray/CT inspection.
- Automated optical inspection.
- Machine vision.
- AI-assisted inspection and process control.
- Digital manufacturing data.
- Traceability.

#### Thermal Trends

- Increasing heat flux.
- Vapor chambers.
- Liquid cooling.
- Direct-to-chip cooling.
- Advanced TIMs.

#### Electrical Trends

- High-speed interfaces.
- Lower voltage / higher current.
- Increased SI/PI complexity.
- EMI/EMC control.

#### Reliability Trends

- Mission-profile-based qualification.
- Higher interconnect density.
- New material combinations.
- More severe thermomechanical interaction.

Main message:

> **As electronic devices become more capable and more highly integrated, packaging becomes more important, not less.**

**Planned figure**

- Figure 1.14.1 - Technology Trends and Their Packaging Consequences.

---

### 1.15 Chapter Summary and Practice

#### Practical Checklist

Students should be able to recognize and distinguish:

- semiconductor;
- N-type and P-type material;
- PN junction;
- diode;
- BJT;
- MOSFET;
- logic gate;
- wafer;
- die;
- packaged IC;
- common IC package families;
- package-substrate concept;
- wire bonding and flip-chip;
- bare PCB;
- PCBA;
- module/subassembly;
- finished product;
- major packaging functions;
- major manufacturing stages.

#### Chapter Summary

Review the complete story:

> **Semiconductor material -> semiconductor devices -> integrated circuit -> wafer fabrication -> bare die -> IC packaging -> PCB assembly -> PCBA -> product integration -> packaging hierarchy**

#### Key Terms Review

Representative terms:

- semiconductor;
- doping;
- electron;
- hole;
- N-type;
- P-type;
- PN junction;
- depletion region;
- bias;
- diode;
- BJT;
- FET;
- MOSFET;
- NMOS;
- PMOS;
- CMOS;
- wafer;
- die;
- lithography;
- etching;
- implantation;
- CMP;
- FEOL;
- MOL;
- BEOL;
- passivation;
- wafer probe;
- known good die;
- package;
- leadframe;
- package substrate;
- wire bond;
- flip-chip;
- QFN;
- BGA;
- CSP;
- WLCSP;
- PCB;
- PCBA;
- SPI;
- AOI;
- X-ray;
- ESD;
- MSL;
- mission profile.

#### Conceptual Questions

- Why is pure silicon useful even though it is a relatively poor conductor?
- Why does doping change semiconductor behavior?
- What is the purpose of a PN junction?
- How does a MOSFET act as a switch?
- Why can different physical transistor structures use similar schematic symbols?
- Why are fabrication processes repeated many times?
- What is the difference between a wafer, die, packaged IC, PCB, and PCBA?
- Why should wafer testing occur before expensive packaging?
- Why do smaller and more powerful ICs create packaging challenges?
- Why does a bare die need an IC package?
- Why are BGA joints usually more difficult to inspect than QFP joints?
- Why is package type different from mounting technology?
- Why do separately fabricated components and PCBs converge only at PCB assembly?
- Why is a working PCBA not necessarily a finished electronic product?
- Why is packaging important even when the circuit design is electrically correct?

#### Application Problems

Original packaging-oriented problems involving:

- distinguishing PCB versus PCBA;
- tracing an IC from wafer to product;
- recognizing semiconductor/component symbols;
- identifying semiconductor-fabrication operations;
- comparing common IC package families;
- identifying visible versus hidden solder-joint inspection needs;
- identifying major PCB assembly stages;
- relating transistor scaling to thermal and power-delivery requirements;
- identifying product-integration needs for different environments.

#### Short Packaging Analysis Activity

Use the recurring problem-solving framework:

> **Observation -> Physical Mechanism -> Root Cause -> Corrective Action**

#### Further Reading and References

Provide selected semiconductor-background and electronic-packaging references without reproducing copyrighted source material.

---

### Applied Chapter Elements

- **Engineering case:** Compare packaging priorities for a smartphone, industrial controller, and automotive module.
- **Semiconductor-to-PCBA bridge activity:** Trace one IC from wafer fabrication through IC package, PCB assembly, inspection, and final product integration.
- **Schematic-literacy activity:** Match common physical components and transistor families to their schematic symbols.
- **Manufacturing-awareness activity:** Distinguish semiconductor fabrication, PCB fabrication, PCB assembly, and product integration.
- **IC-package recognition activity:** Identify package family, external connection style, likely PCB mounting method, and likely inspection implications.
- **Product-integration activity:** Identify electrical, mechanical, thermal, and environmental structures added after the PCBA stage.
- **Student task:** Identify packaging functions and likely manufacturing concerns in an everyday electronic product.

### Authoring/Verification Cautions

- Keep Sections 1.3-1.5 conceptual and application-oriented. Do not turn Chapter 1 into a semiconductor-device-design or microfabrication course.
- Keep Section 1.6 more detailed than a simple package survey because IC package recognition and manufacturing implications are directly relevant to PCBA work.
- Keep Sections 1.7-1.8 introductory; detailed PCB fabrication remains in Chapter 2 and detailed assembly-process control remains in Chapter 4.
- Correct technical simplifications or errors from legacy lecture slides during authoring; use the slides as curriculum-intent references, not unquestioned technical authority.
- Do not include carrier-statistics mathematics, Fermi-level calculations, diode-equation exercises, MOSFET I-V derivations, transistor sizing, process recipes, implantation calculations, or lithography-resolution calculations.
- Explain that modern process-node names are generation labels and should not be interpreted as one literal physical feature dimension.
- Clearly distinguish semiconductor BEOL from electronic-packaging/assembly "back end" terminology.
- Explain that wafer fabrication and packaging increasingly overlap through RDL, UBM, bumping, wafer-level packaging, and hybrid-bonding preparation.
- Keep advanced transistor and lithography developments at awareness level and explicitly connect them to packaging consequences.
- Distinguish **package style**, **PCB mounting method**, and **internal die-to-package interconnection**.
- Do not imply a serial manufacturing path in which the packaged IC becomes the PCB. Show semiconductor/component manufacturing and PCB fabrication as parallel streams that converge at PCB assembly.
- Do not present simplified public product-failure stories as confirmed root causes unless supported by strong sources.
- Ensure package-level terminology is consistent with current industry practice.
- Maintain the employment focus on PCB/PCBA manufacturing, product engineering, quality, inspection, thermal/mechanical design, troubleshooting, and reliability.
- Treat the planned figure count as a design plan rather than a quota. Add or merge figures during authoring when that improves learning.

### Primary Reference Anchors

- MET406 Chapter 1 lecture notes, especially the semiconductor/electronics background, wafer-fabrication overview, IC packaging, PCB assembly, packaging hierarchy, and packaging-design overview.
- Tummala, *Fundamentals of Device and Systems Packaging*, introductory semiconductor/package/interface and system-packaging chapters.
- Tummala, *Fundamentals of Microsystems Packaging*, introductory semiconductor, package, hierarchy, and assembly material.
- Blackwell, *The Electronic Packaging Handbook*, introductory package/system/manufacturing perspective.
- Current authoritative semiconductor-manufacturing resources for modern process-node, transistor-architecture, lithography, and wafer-fabrication terminology.
- Current IPC/JEDEC/ESD standards and official industry references for ESD, moisture sensitivity, package handling, PCB assembly, and inspection awareness.

## Chapter 2 - PCB Structure, Materials, and Fabrication

### Chapter Purpose

Teach students to see a PCB as a **laminated electrical, mechanical, thermal, and manufacturing structure**, not merely as a drawing of copper traces.

### Learning Objectives

Students should be able to:

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

Properties students should understand:

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

- MET406 Chapter 2 lecture notes.
- Tummala, system-level PWB chapters.
- Coombs, *Printed Circuits Handbook*, materials, design, fabrication, and testing sections.
- IPC-2221/2222, IPC-6012, IPC-A-600, IPC-TM-650 for standards awareness.

---

## Chapter 3 - Design for Manufacturability in Electronic Packaging

### Chapter Purpose

Teach DFM as the process of converting design intent into a board and assembly that real factories can build repeatedly, inspect, test, repair, and scale economically.

### Learning Objectives

Students should be able to:

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

Students must distinguish:

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

- MET406 Chapter 3 lecture notes and Lab #1.
- Coombs, PCB design/manufacturing sections.
- Blackwell, concurrent engineering/DFM and SMT design sections.
- IPC-2221/2222, IPC-7352, IPC-2231, IPC-6012, and the IPC-A-610/J-STD-001 relationship.
- Current fabricator/assembler capability documentation when creating numerical examples.

---

## Chapter 4 - Electronic Assembly Technologies

### Chapter Purpose

Explain how a fabricated PCB becomes a PCBA, how SMT/THT processes work physically, what process variables control quality, how defects form, and how manufacturing engineers monitor and troubleshoot the line.

### Learning Objectives

Students should be able to:

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

Highly job-relevant addition to the current lecture sequence:

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

- MET406 Chapter 4 lecture notes and Labs #2-#4.
- Tummala board-assembly chapters.
- Coombs, assembly, soldering, process-control, testing, and rework sections.
- Blackwell, SMT, test, and inspection chapters.
- IPC J-STD-001, IPC-A-610, J-STD-005, IPC-7527, IPC-7711/7721, J-STD-033.
- ANSI/ESD S20.20 / IEC 61340-5-1 for ESD awareness.

---

## Chapter 5 - Electrical Design Considerations

### Chapter Purpose

Give MET students the **minimum electrical foundation needed to understand why physical PCB/package geometry changes electrical performance**. The focus is practical PCB interconnect behavior, not circuit-design theory.

### Learning Objectives

Students should be able to:

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

This chapter needs especially careful technical review because the existing lecture deck is large and includes simplified/occasionally error-prone formulas.

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

- MET406 Chapter 5 lecture notes and Lab #5.
- Bogatin, *Signal and Power Integrity - Simplified*.
- Tummala, electrical package-design chapters.
- IPC-2221 and IPC-2152 awareness; product-specific IEC/UL or other safety standards where creepage/clearance is safety-critical.
- IPC-TM-650 electrical test methods awareness.

---

## Chapter 6 - Thermal Design Considerations

### Chapter Purpose

Teach students a practical thermal-design workflow: **identify heat sources -> identify heat paths -> estimate temperatures -> select cooling methods -> verify -> improve**.

### Learning Objectives

Students should be able to:

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

- MET406 Chapter 6 lecture notes, Lab #6, Lab #7, and SolidWorks thermal tutorial.
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

Students should be able to:

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

- Legacy MET406 mechanical chapter.
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

Students should be able to:

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

Students should practice summarizing:

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

Students must:

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

- Legacy MET406 reliability chapter.
- O'Connor & Kleyner, *Practical Reliability Engineering*.
- Jamnia, mechanical/electrical failure and reliability chapters.
- Tummala, design-for-reliability and microsystems-reliability chapters.
- IEEE EPS reliability-physics resources.
- IPC-9701, JEDEC JESD22/JESD47, IEC 60068, and application-specific standards.

---

# 7. Cross-Chapter Threads

These themes should deliberately reappear throughout the book so students see packaging as one connected engineering system.

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

Students should repeatedly use:

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

| Book Chapter | Existing MET406 Lab/Resource | OER Role |
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

**Important:** The OER should teach students **how to recognize when a standard is needed**, not attempt to reproduce standards.

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

The outline intentionally retains the multidisciplinary core seen in established packaging education while adapting it to an MET audience with less electrical prerequisite knowledge.

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

The MET406 OER intentionally differentiates itself by giving **more emphasis to PCB/PCBA manufacturing, DFM, troubleshooting, process control, and practical system-level packaging**, while reducing device-level physics and advanced electrical theory. This is consistent with the book's employment-oriented MET audience rather than a specialist microelectronics-packaging graduate audience.

---

# 12. Editorial and Technical QA Checklist

Before any chapter is considered complete, perform all of the following.

## Pass 1 - Curriculum/Scope Check

- Does the material support the applied MET audience?
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
- Practice problems are newly created.
- No reference book organization has been copied too closely.
- Figures have alt text.
- Equations are mdBook/KaTeX compatible.
- Units are primarily SI, with common industry imperial units shown only where useful.
- Terminology is consistent across chapters.
- Each chapter has objectives, summary, review questions, practical problems, and reference links.

---

# 13. Known Content Areas Requiring Special Revision from Existing Notes

## Chapter 1

- Verify public product-failure case-study root causes and avoid oversimplified causal claims.
- Reduce semiconductor-device detail to what packaging students need.

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

- detailed semiconductor wafer fabrication;
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

These are valuable topics but are better treated after students master PCB/PCBA-level packaging fundamentals.

---

# 15. Current Project Decision

The MET406 OER will use the following **eight-chapter architecture** as its working master structure:

1. **Introduction to Electronic Packaging**
2. **PCB Structure, Materials, and Fabrication**
3. **Design for Manufacturability in Electronic Packaging**
4. **Electronic Assembly Technologies**
5. **Electrical Design Considerations**
6. **Thermal Design Considerations**
7. **Mechanical Design Considerations**
8. **Reliability of Electronic Packaging**

Chapters 1-6 will be developed from the revised 2026 materials but technically rechecked and rewritten for OER use. Chapters 7-8 will be rebuilt from the older notes using the same applied, industry-oriented approach.

The final book should remain recognizably **MET406**, but should be able to stand independently as an open, self-learning resource for engineering technology students entering the electronics packaging and manufacturing industry.

================================================================================


================================================================================
FILE: helper/project_outline.md
================================================================================

FILE INFORMATION:
----------------------------------------
Size: 118.05 KB
Extension: .md
Language: text
Location: helper/project_outline.md
Relative Path: helper
Created: 2026-08-29 21:09:05 (America/New_York / GMT-04:00)
Modified: 2026-08-29 21:09:05 (America/New_York / GMT-04:00)
MD5: 2d2e947a445550594be3e6435709c4e6
SHA256: e6b7d6c23a773dc7ccdc9780bc0f3e35a03979e2401ae239e189b45a8cedbf29
Encoding: ASCII

FILE CONTENT:
----------------------------------------
# MET406 OER Book Outline

## Working Title

**Electronic Packaging Applications: An Applied Introduction for Engineering Technology Students**

> **Project theme:** An applied OER for undergraduate Mechanical Engineering Technology (MET) students who have limited electrical-engineering background and want practical electronic-packaging knowledge that prepares them for work in electronics manufacturing, packaging, product engineering, quality, thermal/mechanical design, and reliability.

**Status:** Working master outline. Chapters 1-6 are based primarily on the revised Spring 2026 MET406 lecture notes and current labs. Chapters 7-8 use the Spring 2025 legacy notes as starting material and will be substantially redesigned. The outline is also informed by the uploaded reference library, current industry standards, professional-society resources, and benchmark university packaging courses.

**Research checkpoint:** August 29, 2026. Standards and industry references must be rechecked during chapter authoring because revisions continue to change.

---

# 1. Book Purpose, Audience, and Scope

## 1.1 Purpose

The book should help a student move from **seeing an electronic circuit as a schematic** to understanding the real engineered product that must be fabricated, assembled, powered, cooled, protected, tested, and kept reliable.

The central idea is:

> **Electronic packaging is the engineering that allows an electronic circuit to physically exist, be manufactured, survive its environment, and operate reliably.**

The book should prepare students to recognize and solve practical packaging problems rather than reproduce advanced theory.

## 1.2 Primary Audience

The primary reader is an undergraduate MET student who typically has:

- basic engineering mathematics;
- introductory mechanics and strength of materials;
- basic materials knowledge;
- CAD experience;
- introductory thermodynamics/heat transfer;
- only limited circuit/electrical background;
- little or no prior exposure to PCB fabrication, electronics assembly, signal integrity, power integrity, or reliability engineering.

The book may also be useful to manufacturing, mechatronics, industrial, and mechanical engineering students entering electronics-related work.

## 1.3 Career-Oriented Outcome

After completing the book, a student should be able to participate intelligently in entry-level work involving:

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

1. **MET406 lecture notes and labs** - first reference for intended course emphasis, pedagogy, terminology, and current teaching sequence.
2. **Uploaded core reference books** - cross-check scope, physical explanations, equations, terminology, and established engineering practice.
3. **Current standards and official industry resources** - verify acceptance criteria, terminology, test practices, and current industry usage.
4. **Manufacturer application notes and technical documentation** - verify practical implementation, package data, thermal metrics, process behavior, and realistic examples.
5. **Peer-reviewed literature and professional-society resources** - verify specialized or evolving topics.

Lecture slides are the curriculum starting point, **not an unquestioned authority**. Any questionable numerical value, equation, causal claim, or universal design rule should be verified before it is placed in the OER. The syllabus is used primarily for course outcomes and overall intent; where its tentative weekly chapter numbering differs from the actual revised lecture set, the current eight-chapter OER structure governs.

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

The OER should introduce standards as **industry awareness**, not reproduce copyrighted requirements. Standards should be presented by role (design, fabrication, process, acceptance, test, qualification) so students learn which type of document to consult.

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

After completing the book, students should be able to:

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
| 1 | Introduction to Electronic Packaging | What is electronic packaging, where does it fit in the electronics industry, and what does a packaging engineer/technologist do? |
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
12. **Review Questions**
13. **Original Practice Problems**
14. **Further Reading / References**

Recurring applied boxes should include:

- **Engineering Decision** - what variable should be changed and why?
- **Troubleshooting** - symptom -> mechanism -> causes -> corrective action.
- **Industry Practice** - how the concept appears in a real factory/design workflow.
- **Common Mistake** - common misunderstanding or misuse of a rule/equation.
- **Standards Awareness** - where industry standards become relevant without reproducing proprietary criteria.

## 5.1 Content-Level Labels

To keep the book applied and prevent scope growth, content can be marked during authoring as:

- **Core** - expected knowledge for every MET406 reader;
- **Applied Awareness** - important industry context that students should recognize but not analyze in depth;
- **Optional Enrichment** - deeper theory, derivations, or specialized technology that may be omitted without breaking the main learning path.

## 5.2 Front Matter

The finished OER should include:

- preface and intended audience;
- book theme and learning philosophy;
- how to use the book for a course or self-study;
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

Establish electronic packaging as the multidisciplinary engineering that turns semiconductor devices and electronic circuits into manufacturable, testable, serviceable, and reliable products.

Because the intended MET audience may have limited electrical/electronics background, Chapter 1 also provides a compact, application-oriented bridge covering the minimum semiconductor, device, IC-fabrication, IC-packaging, PCB-assembly, and product-integration knowledge needed to understand later chapters.

The chapter intentionally follows a **physical manufacturing story first, engineering abstraction second**:

> **Semiconductor material -> semiconductor devices -> integrated circuit -> wafer fabrication -> bare die -> IC packaging -> PCB assembly -> PCBA -> finished product -> packaging hierarchy**

Sections 1.3-1.5 provide only the semiconductor and IC-fabrication background needed to understand electronic packaging. They are not intended to prepare students for semiconductor-fabrication employment or replace a semiconductor-device or microfabrication course.

Sections 1.6-1.8 then shift decisively toward the processes and structures most relevant to PCB/PCBA manufacturing and electronic-product engineering.

### Learning Objectives

Students should be able to:

- define electronic packaging in practical terms;
- distinguish circuit/electronic design from packaging design;
- explain why packaging affects performance, manufacturability, cost, quality, reliability, serviceability, and product life;
- use basic electrical terms such as voltage, current, resistance, ground/reference, and bias correctly;
- explain at an introductory level how silicon becomes N-type or P-type material and how a PN junction behaves under forward and reverse bias;
- recognize common electronic-device and schematic symbols, including diode, resistor, capacitor, BJT, FET, NMOS, and PMOS;
- explain conceptually how MOSFETs act as switches and how transistors can be combined into logic gates and simple digital functions;
- explain how semiconductor devices and interconnects are physically fabricated on a wafer using repeated deposition, patterning, etching, doping, planarization, and metallization operations;
- distinguish FEOL, MOL, BEOL, wafer test, singulation, bare die, packaged IC, PCB, PCBA, module, and finished product;
- explain at an awareness level Moore's Law, modern process-node naming, planar MOSFETs, FinFETs, gate-all-around transistors, advanced lithography, and backside power delivery;
- explain why semiconductor scaling creates more demanding packaging requirements;
- describe how a bare die is converted into a packaged component;
- recognize common IC package families and distinguish package style, PCB mounting method, and internal die-to-package interconnection;
- explain how packaged ICs, other components, and a separately fabricated bare PCB converge in PCB assembly;
- describe the major SMT/THT assembly, inspection, and test stages at an introductory level;
- explain how a PCBA is mechanically, thermally, electrically, and environmentally integrated into a finished electronic product;
- explain why ESD, moisture sensitivity, hidden joints, package warpage, heat generation, and switching behavior matter in PCBA manufacturing;
- explain the packaging hierarchy after following the physical manufacturing process from die to system;
- identify likely MET roles in PCB/PCBA manufacturing, product engineering, quality, troubleshooting, thermal/mechanical design, and reliability;
- recognize major trends such as heterogeneous integration, chiplets, 2.5D/3D packaging, HBM, hybrid bonding, advanced substrates, and advanced cooling at a survey level.

---

### 1.1 What Is Electronic Packaging?

**Status:** Locked. Keep the completed section unchanged during the Chapter 1 restructuring.

- Why this chapter matters.
- Chapter learning objectives.
- Definition of an electronic package.
- Definition of electronic packaging.
- Electronic packaging as the physical realization of an electronic design.
- Electronic design versus packaging design.
- From electrical function to physical product.
- Major physical elements of an electronic product:
  - semiconductor device;
  - package;
  - PCB;
  - interconnects;
  - connectors;
  - cooling structures;
  - mechanical supports;
  - enclosure.
- Why a correct schematic is not yet a usable product.
- Typical questions asked by packaging engineers and engineering technologists.
- Key terminology.
- Section takeaway.

**Planned figure**

- Figure 1.1.1 - From Circuit Design to Physical Electronic Product.

---

### 1.2 Why Packaging Matters in Industry

**Status:** Locked. Keep the completed section unchanged during the Chapter 1 restructuring.

- Packaging affects product performance:
  - electrical behavior;
  - power delivery;
  - temperature;
  - mechanical behavior.
- Physical design can change electrical behavior.
- Packaging affects reliability and product life.
- Failure chains:
  - physical/process problem;
  - packaging effect;
  - electrical or functional consequence.
- Packaging affects manufacturability and yield.
- Design for Manufacturability (DFM).
- Packaging affects direct and indirect cost:
  - material;
  - manufacturing;
  - inspection;
  - rework;
  - scrap;
  - warranty;
  - field service.
- Packaging affects time to market.
- Packaging affects inspection, rework, and serviceability.
- Packaging affects safety and environmental protection.
- Packaging as a system-level engineering tradeoff.
- Product-life-cycle perspective:
  - design;
  - fabrication;
  - assembly;
  - inspection/test;
  - qualification;
  - production;
  - field operation;
  - maintenance/repair.
- What these relationships mean for an engineering technology student.
- Section takeaway.

**Planned figures**

- Figure 1.2.1 - Packaging Decisions Affect the Entire Product.
- Figure 1.2.2 - Packaging Across the Product Life Cycle.

---

## Part I - Background Needed to Understand the IC

### 1.3 Electrical and Semiconductor Foundations

**Purpose:** Give MET students the minimum electrical and semiconductor background needed to understand what exists inside an IC and why it behaves as it does.

#### 1.3.1 Basic Electrical Language

- Electric charge.
- Electrons.
- Voltage.
- Current.
- Conventional current versus electron motion.
- Electrical resistance.
- DC voltage and current.
- Ground and electrical reference.
- What electrical **bias** means.
- Why these terms are needed when reading schematics and device information.

#### 1.3.2 Conductors, Insulators, and Semiconductors

- Conductors.
- Insulators.
- Semiconductors.
- Why silicon is widely used.
- Electrical conductivity as a controllable material property.

#### 1.3.3 Pure Silicon

- Silicon atomic structure.
- Valence electrons.
- Covalent bonding.
- Intrinsic semiconductor.
- Why pure silicon conducts relatively poorly.

#### 1.3.4 Semiconductor Doping

- Purpose of doping.
- Donor impurities.
- Acceptor impurities.
- Free electrons.
- Holes.
- Majority and minority carriers at awareness level.
- N-type semiconductor.
- P-type semiconductor.

#### 1.3.5 The PN Junction

- Bringing P-type and N-type regions together.
- Carrier diffusion.
- Recombination.
- Fixed ionized dopants.
- Depletion region.
- Internal electric field.
- Built-in barrier concept.

#### 1.3.6 Biasing a PN Junction

- Forward bias.
- Narrowing of the depletion region.
- Increased current.
- Reverse bias.
- Widening of the depletion region.
- Very small reverse current under normal conditions.
- Breakdown as awareness-level terminology.

#### 1.3.7 The Semiconductor Diode

- PN junction as a diode.
- Anode and cathode.
- Diode schematic symbol.
- Basic rectifying behavior.
- Why diodes appear in power, protection, and signal circuits.

#### Why This Matters for Packaging

- Semiconductor structures are physically fragile.
- Junction temperature affects device behavior.
- Semiconductor devices can be damaged by ESD.
- Package electrical and thermal interfaces ultimately connect to these internal structures.

**Planned figures**

- Figure 1.3.1 - Basic Electrical Quantities in a Simple DC Circuit.
- Figure 1.3.2 - Conductor, Insulator, and Semiconductor.
- Figure 1.3.3 - Doping Silicon to Create N-Type and P-Type Material.
- Figure 1.3.4 - PN Junction at Equilibrium, Forward Bias, and Reverse Bias.

---

### 1.4 From Semiconductor Devices to Integrated Circuits

**Purpose:** Bridge from semiconductor material behavior to recognizable electronic devices, schematic symbols, logic circuits, and finally an integrated circuit.

#### 1.4.1 Basic Electronic Components and Schematic Symbols

Introduce each physical device together with its schematic symbol and basic circuit role:

- resistor;
- capacitor;
- diode;
- transistor;
- ground;
- voltage source.

Emphasize:

> A schematic symbol represents electrical function, not the exact physical geometry of the component.

#### 1.4.2 Transistor Families

Basic transistor classification:

- Bipolar Junction Transistor (BJT):
  - NPN;
  - PNP.
- Field-Effect Transistor (FET):
  - JFET at recognition level;
  - MOSFET:
    - NMOS;
    - PMOS.

#### 1.4.3 BJT Fundamentals

- Emitter.
- Base.
- Collector.
- NPN versus PNP.
- Circuit symbols.
- Transistor as switching/amplifying device.
- Awareness of analog, RF, and power applications.
- No transistor-bias calculations.

#### 1.4.4 MOSFET Structure

- Source.
- Drain.
- Gate.
- Body/substrate.
- Gate dielectric.
- N-type and P-type regions.
- Insulated gate.
- Electric-field control of the channel.

#### 1.4.5 How an NMOS Transistor Works

- MOSFET initially off.
- Applying positive gate-to-source voltage.
- Formation of an inversion channel.
- Current path between drain and source.
- MOSFET as a voltage-controlled switch.

#### 1.4.6 PMOS and Complementary Operation

- PMOS concept.
- Complementary switching behavior.
- Why NMOS and PMOS work together in CMOS.

#### 1.4.7 Integrated Resistors and Capacitors

- Resistor structures formed using doped regions, polysilicon, or other resistive films.
- Capacitor structures formed using conductive layers separated by dielectric material.
- Distinction between:
  - discrete PCB-level components;
  - structures integrated within an IC.

#### 1.4.8 Analog, Digital, and Mixed-Signal Circuits

- Analog-signal concept.
- Digital logic levels.
- Mixed-signal ICs.
- Application examples.

#### 1.4.9 From MOSFETs to CMOS Logic

- CMOS inverter.
- Logic 0 and logic 1.
- Switching concept.
- Why CMOS is widely used in digital ICs.

#### 1.4.10 Basic Logic Gates

Recognition and function of:

- NOT;
- AND;
- OR;
- NAND;
- NOR;
- XOR.

Use truth tables only where they improve understanding.

#### 1.4.11 From Logic Gates to a Simple Adder

- Binary inputs.
- SUM output.
- CARRY output.
- Half-adder:
  - XOR for SUM;
  - AND for CARRY.
- Full adder at awareness level.
- Building more complex digital functions from simple gates.

#### 1.4.12 From Gates to Complex Integrated Circuits

Conceptual progression:

> **transistor -> logic gate -> functional block -> complete integrated circuit**

Representative IC categories:

- digital logic;
- processors/controllers;
- memory;
- analog;
- mixed-signal;
- RF;
- power devices;
- sensors/MEMS.

#### Why This Matters for Packaging

- Switching creates heat.
- Rapid switching produces power-integrity and EMI concerns.
- High transistor density increases power-delivery demands.
- Internal device structures eventually connect to package pads, bumps, or bond wires.

**Planned figures**

- Figure 1.4.1 - Major Electronic Devices and Their Schematic Symbols.
- Figure 1.4.2 - How Basic Electronic Elements Can Be Integrated on a Chip.
- Figure 1.4.3 - How an NMOS MOSFET Acts as a Voltage-Controlled Switch.
- Figure 1.4.4 - NMOS and PMOS Forming a CMOS Inverter.
- Figure 1.4.5 - From Transistors to Logic Gates to a Simple Adder.

---

### 1.5 How Integrated Circuits Are Fabricated

**Purpose:** Explain how the circuit discussed in Section 1.4 is physically created on a semiconductor wafer, without turning the section into a semiconductor-processing course.

#### 1.5.1 From Circuit Design to Physical Layout

Conceptual design flow:

> functional requirement  
> -> circuit / schematic or HDL  
> -> transistor-level implementation  
> -> physical IC layout  
> -> mask / reticle data  
> -> wafer fabrication

Students do not need to perform IC physical design, but should understand that the semiconductor fab manufactures a previously designed geometric pattern.

#### 1.5.2 Silicon Wafer Preparation

- Purification of silicon.
- Single-crystal growth.
- Ingot.
- Wafer slicing.
- Lapping/polishing.
- Cleaning.
- Optional epitaxial layer.

#### 1.5.3 The Repeated Fabrication Cycle

Central fabrication mental model:

> **Grow or deposit -> coat -> pattern -> etch or modify -> clean -> inspect -> repeat**

Explain that modern IC fabrication contains many repeated process cycles rather than one simple sequence.

#### 1.5.4 Oxidation

- Growing silicon dioxide.
- Insulation and process roles.
- Historical and modern context.

#### 1.5.5 Thin-Film Deposition

Awareness-level introduction to:

- Chemical Vapor Deposition (CVD);
- Physical Vapor Deposition (PVD);
- Atomic Layer Deposition (ALD).

Purpose:

- dielectric films;
- conducting films;
- semiconductor films;
- barrier layers.

#### 1.5.6 Photolithography

- Photoresist.
- Mask/reticle.
- Exposure.
- Develop.
- Transferring microscopic patterns.
- Repeated wafer exposure fields.

#### 1.5.7 Etching

- Selectively removing material.
- Wet etching.
- Dry/plasma etching.
- Anisotropic pattern-transfer concept.

#### 1.5.8 Doping the Wafer

- Ion implantation.
- Diffusion.
- Annealing.
- Activating dopants.
- Forming wells, source/drain regions, and other device regions.

#### 1.5.9 Epitaxy

- Growing controlled crystalline semiconductor layers.
- Why epitaxial structures are useful.

#### 1.5.10 Chemical-Mechanical Planarization

- CMP.
- Flattening the wafer surface.
- Why planarization becomes important in multilayer fabrication.

#### 1.5.11 Building the Transistor

Simplified modern CMOS device sequence:

- isolation;
- wells;
- channel region;
- gate dielectric;
- gate electrode;
- source/drain structures;
- spacers;
- contacts.

No detailed process recipe or device calculations.

#### 1.5.12 FEOL, MOL, and BEOL

**FEOL**

- Active semiconductor-device formation.

**MOL**

- Contacts and local connection to devices.

**BEOL**

- Dielectric layers.
- Metal interconnect.
- Vias.
- Repeated metal levels.

Clarify:

> Semiconductor BEOL is not the same as PCB assembly or electronic packaging, although the term "back end" may be used differently in different parts of industry.

#### 1.5.13 Multilevel Metal Interconnect

- Transistors occupy the lower device region.
- Many metal layers may exist above them.
- Contacts.
- Vias.
- Local and global interconnect.
- Power and signal routing inside the IC.

#### 1.5.14 Passivation and External Interface

- Final protective layer.
- Bond pads.
- Bump pads.
- Interfaces to later packaging operations.

#### 1.5.15 Wafer Inspection and Electrical Test

- Process inspection.
- Defect detection.
- Wafer probe.
- Wafer sort.
- Wafer maps.
- Good versus bad die.
- Known-good-die concept.
- Why testing before expensive packaging can reduce cost.

#### 1.5.16 Semiconductor Materials Beyond Silicon

Recognition-level introduction:

- Silicon (Si).
- Silicon Carbide (SiC).
- Gallium Nitride (GaN).
- Gallium Arsenide (GaAs).

Packaging implications:

- temperature;
- voltage;
- current;
- switching speed;
- thermal density;
- parasitic inductance;
- insulation requirements.

#### 1.5.17 Moore's Law and Semiconductor Scaling

- Historical growth in transistor density.
- Moore's Law as an industry observation rather than a physical law.
- Increasing transistor count.
- Historical reduction of transistor dimensions.
- Why simple geometric scaling has become increasingly difficult.

#### 1.5.18 Dennard Scaling at Awareness Level

- Historical ability to reduce voltage as transistors shrank.
- Why power density originally remained more manageable.
- Why voltage and power scaling eventually stopped keeping pace.
- Resulting thermal and power-delivery challenges.

#### 1.5.19 What a Semiconductor "Node" Means

- Historical connection between node names and physical dimensions.
- Modern node names as process-generation designations.
- Why "2 nm" does not mean every critical feature is exactly 2 nm.
- Why node names from different manufacturers should not be compared solely by the number.
- Power, Performance, and Area (**PPA**) as a more useful engineering concept.

#### 1.5.20 Evolution of Transistor Structures

- Planar MOSFET.
- FinFET.
- Gate-All-Around (GAA) transistor.
- Nanosheet / nanoribbon implementations.
- Why stronger gate control is needed as devices shrink.

Awareness-level future directions:

- forksheet;
- Complementary FET (CFET);
- vertical transistor concepts.

#### 1.5.21 Same Circuit Symbol, Different Physical Transistor

Key concept:

> A planar NMOS, FinFET NMOS, and GAA NMOS may use essentially the same circuit-level NMOS representation even though their physical device structures are very different.

#### 1.5.22 Modern Lithography

Recognition-level progression:

- DUV;
- EUV;
- High-NA EUV.

Focus on:

- smaller patterning;
- manufacturing complexity;
- alignment;
- process cost;
- metrology.

#### 1.5.23 Backside Power Delivery

- Traditional front-side power and signal routing.
- Concept of delivering power from the backside.
- Reduced routing congestion.
- Power-integrity benefits.
- Awareness of current leading-edge implementation.

#### 1.5.24 Why Scaling Makes Packaging More Important

As semiconductor technology advances:

- transistor density increases;
- local heat flux can increase;
- operating voltage decreases;
- supply current can become very large;
- I/O density increases;
- memory-bandwidth demands increase;
- package parasitics matter more;
- cooling becomes more difficult;
- power delivery becomes more difficult.

Transition toward:

- chiplets;
- 2.5D integration;
- 3D integration;
- HBM;
- hybrid bonding;
- advanced substrates;
- advanced cooling.

> **Packaging increasingly becomes part of the scaling strategy rather than simply something added after semiconductor fabrication.**

**Planned figures**

- Figure 1.5.1 - From Circuit Design to Wafer Pattern.
- Figure 1.5.2 - Repeated Process Modules in Semiconductor Fabrication.
- Figure 1.5.3 - Simplified CMOS Fabrication Sequence.
- Figure 1.5.4 - Anatomy of a Finished IC Die: FEOL, MOL, and BEOL.
- Figure 1.5.5 - Wafer Probe and Wafer Map.
- Figure 1.5.6 - Moore's Law and Semiconductor Process Scaling.
- Figure 1.5.7 - Evolution of the MOSFET: Planar -> FinFET -> GAA.

**Figure note:** EUV and backside-power concepts may be handled with small inline explanatory diagrams unless drafting shows that a dedicated numbered figure is necessary.

---

## Part II - From Semiconductor Die to Electronic Product

### 1.6 IC Packaging: From Bare Die to Packaged Component

**Purpose:** Introduce the first major packaging transformation: converting a fragile bare semiconductor die into a practical electronic component that can be handled, tested, soldered to a PCB, cooled, inspected, and integrated into a product.

#### 1.6.1 From Finished Wafer to Individual Die

- Wafer probe.
- Wafer map.
- Known good die.
- Dicing/singulation.
- Bare-die handling.

#### 1.6.2 Why a Bare Die Needs Packaging

Packaging provides:

- electrical connection;
- mechanical support;
- environmental protection;
- thermal path;
- handling;
- manufacturability;
- testability.

#### 1.6.3 Anatomy of an IC Package

- Semiconductor die.
- Die attach.
- Leadframe or package substrate.
- Internal interconnect.
- Encapsulant, mold compound, or lid.
- External leads, pads, pins, or solder balls.
- Thermal features such as exposed pads, lids, or heat spreaders.

#### 1.6.4 Chip-to-Package Interconnection

- Wire bonding.
- Flip-chip.
- Solder bumps.
- Copper pillars.
- Underfill.
- TAB only as historical/recognition context if useful.

#### 1.6.5 Package Classification by External Connection

##### Through-hole packages

- DIP.
- Other pin/lead packages at recognition level.

##### Leaded surface-mount packages

- SOIC.
- TSSOP.
- QFP.

##### Leadless surface-mount packages

- QFN.
- DFN.
- LGA.

##### Area-array packages

- BGA.
- FBGA.
- PGA where relevant.

#### 1.6.6 Package Style, Mounting Technology, and Internal Interconnection

Important distinction:

> **Package type != PCB mounting technology != internal die interconnection**

Example:

- BGA = external package style;
- SMT = board-assembly method;
- wire bond or flip-chip = possible internal die interconnection.

#### 1.6.7 Package-Substrate-Based Packages

- Package substrate as an intermediate routing structure.
- Redistribution between fine die pitch and larger PCB pitch.
- BGA.
- FC-BGA.
- Why package substrates matter for electrical, thermal, and manufacturing performance.

#### 1.6.8 Chip-Scale and Wafer-Level Packaging

Recognition level:

- CSP.
- WLCSP.
- Fan-in.
- Fan-out.
- Redistribution Layer (RDL).
- Under-Bump Metallurgy (UBM).

Emphasize that the boundary between wafer fabrication and packaging can become less distinct in wafer-level technologies.

#### 1.6.9 Thermal Features of IC Packages

- Exposed thermal pad.
- Heat spreader.
- Lid.
- Thermal path into the PCB.
- Thermal vias introduced conceptually.
- Why package construction affects later thermal design.

#### 1.6.10 Power Semiconductor Packages

Recognition level:

- TO-220.
- TO-247.
- DPAK.
- D2PAK.
- Power QFN.
- Power modules.

Key concerns:

- current path;
- thermal path;
- parasitic inductance;
- mounting;
- insulation/clearance awareness.

#### 1.6.11 Multi-Die and Advanced Packages

Awareness level:

- Multi-Chip Module (MCM).
- System-in-Package (SiP).
- Stacked die.
- Chiplets.
- Interposers.
- 2.5D integration.
- 3D integration.
- HBM.

Clarify that one electronic package does not necessarily contain only one die.

#### 1.6.12 Packaging Issues Relevant to PCBA Manufacturing

- Package pitch.
- Coplanarity.
- Exposed pads.
- Hidden joints.
- Package warpage.
- Moisture sensitivity.
- ESD sensitivity.
- Inspection accessibility.
- Rework difficulty.

#### Section Takeaway

> The IC package converts the microscopic semiconductor die into a manufacturable component that can be handled, tested, soldered to a PCB, cooled, inspected, and integrated into a product.

**Planned figures**

- Figure 1.6.1 - Anatomy of a Typical IC Package.
- Figure 1.6.2 - Common IC Package Families.
- Figure 1.6.3 - External PCB Interconnection Styles.
- Figure 1.6.4 - Wire Bonding versus Flip-Chip.
- Figure 1.6.5 - Wafer-Level and Advanced Package Structures.
- Figure 1.6.6 - Common Power Packages and Their Thermal Paths.

**Recommended table**

- Package style versus PCB mounting method versus possible internal die interconnection.

---

### 1.7 From Components and Bare PCB to PCBA

**Purpose:** Show how separately manufactured semiconductor packages, other electronic components, and a separately fabricated bare PCB converge in the PCB assembly factory.

#### 1.7.1 The Manufacturing Streams Converge

Use the conceptual model:

> Semiconductor fabrication -> IC packaging -> packaged IC  
> Other electronic components -> component supply  
> PCB fabrication -> bare PCB  
> **These streams converge at PCB assembly -> PCBA**

This avoids implying that the PCB is manufactured from the packaged IC.

#### 1.7.2 The Bare PCB

Short introduction only:

- substrate;
- copper traces;
- pads;
- vias;
- solder mask;
- silkscreen.

Detailed PCB structure/materials/fabrication belong in Chapter 2.

#### 1.7.3 Incoming Components

- ICs.
- Resistors.
- Capacitors.
- Inductors.
- Connectors.
- Sensors.
- Electromechanical components.

#### 1.7.4 Material Handling Before Assembly

- Component identification.
- Reels, trays, and tubes.
- ESD awareness.
- Moisture sensitivity.
- MSL awareness.
- Controlled storage.
- Baking where required.

Detailed handling requirements appear later in Chapter 4.

#### 1.7.5 Solder-Paste Printing

- Stencil.
- Solder paste.
- Deposited paste.
- Importance of paste volume and alignment.

#### 1.7.6 Solder Paste Inspection

- SPI.
- Deposit height/area/volume concept.

#### 1.7.7 Pick-and-Place

- Feeders.
- Component pickup.
- Machine vision.
- Placement.

#### 1.7.8 Reflow Soldering

- Preheat.
- Soak.
- Reflow.
- Cooling.
- Solder-joint formation.

Detailed process windows and control belong in Chapter 4.

#### 1.7.9 Through-Hole Assembly

- Component insertion.
- Wave soldering.
- Selective soldering.
- Hand soldering where appropriate.

#### 1.7.10 Inspection

- Visual inspection.
- AOI.
- X-ray.
- Hidden-joint inspection.

#### 1.7.11 Electrical and Functional Test

- Continuity/basic electrical test.
- ICT awareness.
- Functional testing.

#### 1.7.12 Rework and Repair

- Component removal.
- Replacement.
- Process limitations.
- Traceability.

#### 1.7.13 The Finished PCBA

Clarify:

> **PCB = bare board**  
> **PCBA = board with assembled components**

#### Section Takeaway

> PCB assembly combines the bare PCB and separately manufactured electronic components into a functional PCBA.

**Planned figures**

- Figure 1.7.1 - Manufacturing Streams Converging at PCB Assembly.
- Figure 1.7.2 - Simplified PCB Assembly Process.
- Figure 1.7.3 - SPI, AOI, and X-Ray: What Each Inspection Method Sees.

---

### 1.8 From PCBA to Finished Electronic Product

**Purpose:** Show that electronic packaging continues beyond PCB assembly and that a functioning PCBA is often only one subsystem of the final product.

#### 1.8.1 PCBA as a Subassembly

- One PCBA versus multiple PCBAs.
- Board-to-board connections.
- Cables/harnesses.

#### 1.8.2 Electrical Integration

- Connectors.
- Cables.
- Power supplies.
- Batteries.
- Displays.
- Sensors.
- Antennas where applicable.

#### 1.8.3 Mechanical Integration

- Chassis.
- Brackets.
- Standoffs.
- Fasteners.
- Card guides.
- Structural support.

#### 1.8.4 Thermal Integration

- Heat sinks.
- Thermal Interface Materials (TIMs).
- Heat spreaders.
- Fans.
- Vapor chambers.
- Cold plates/liquid cooling at awareness level.

#### 1.8.5 Environmental Protection

- Enclosure.
- Seals.
- Conformal coating.
- Shielding.
- Dust/moisture protection.

#### 1.8.6 EMI/EMC Integration

- Shielding.
- Grounding.
- Filtering.
- Cable/interface considerations.

#### 1.8.7 Firmware and System Bring-Up

Awareness level:

- Programming.
- Configuration.
- System initialization.

#### 1.8.8 Final Assembly

- Enclosure installation.
- Mechanical closure.
- Labeling.
- Traceability.

#### 1.8.9 Product-Level Inspection and Test

- Final functional test.
- Safety testing where applicable.
- System-level verification.

#### 1.8.10 Qualification

Awareness of:

- temperature;
- thermal cycling;
- vibration;
- shock;
- humidity;
- environmental testing.

#### 1.8.11 Production, Shipping, and Field Operation

- Manufacturing release.
- Packaging/shipping.
- Installation.
- Operation.
- Maintenance.
- Repair.
- Failure feedback.

#### Section Takeaway

> A functioning PCBA is often only one subsystem. Product-level packaging integrates electronics with mechanical, thermal, electrical, environmental, and user-interface structures.

**Planned figures**

- Figure 1.8.1 - From PCBA to Finished Electronic Product.
- Figure 1.8.2 - Product Integration, Qualification, and Field Life.

---

## Part III - Organizing and Understanding Electronic Packaging

### 1.9 Packaging Hierarchy

**Purpose:** After students have physically followed the product from die to system, formalize those stages using a packaging hierarchy.

#### 1.9.1 Why Use a Packaging Hierarchy?

- Need for an organizational model.
- Packaging exists at multiple physical scales.

#### 1.9.2 Die / Device Level

#### 1.9.3 IC Package / Component Level

#### 1.9.4 Board / PCBA Level

#### 1.9.5 Module / Subassembly Level

#### 1.9.6 Product / System Level

#### 1.9.7 Connections Between Levels

#### 1.9.8 Hierarchy Is an Organizational Model

- No single universal numbering system.
- Terminology varies across industries and sources.
- Use this book's hierarchy consistently for teaching.

#### 1.9.9 Modern Technologies Blur Traditional Boundaries

- Wafer-level packaging.
- SiP.
- Chiplets.
- 2.5D.
- 3D.
- Hybrid bonding.

**Planned figure**

- Figure 1.9.1 - Electronic Packaging Hierarchy from Die to System.

---

### 1.10 Major Functions of Electronic Packaging

- Electrical interconnection:
  - signal;
  - power;
  - ground.
- Thermal management.
- Mechanical support.
- Environmental protection.
- Manufacturability.
- Testability.
- Inspection.
- Reliability.
- Serviceability.
- Cost.

Central idea:

> One packaging structure often performs several functions simultaneously.

**Planned figure**

- Figure 1.10.1 - Multiple Functions Performed by an Electronic Package.

---

### 1.11 Electronic Packaging as a Multidisciplinary Field

Connections among:

- electrical engineering;
- mechanical engineering;
- materials engineering;
- manufacturing engineering;
- chemical/process engineering;
- quality engineering;
- reliability engineering;
- industrial engineering;
- engineering technology.

Use a practical problem rather than a generic discipline wheel.

Example:

> A BGA solder-joint failure may simultaneously involve materials, thermal cycling, PCB mechanics, assembly process, inspection, electrical function, and reliability.

**Planned figure**

- Figure 1.11.1 - One Packaging Failure, Multiple Engineering Disciplines.

---

### 1.12 Where Engineering Technology Graduates Fit

Focus on likely work in PCB/PCBA manufacturing and electronic-product engineering rather than semiconductor-fab employment.

Typical activities:

- PCB/PCBA manufacturing support;
- manufacturing/process engineering;
- SMT process support;
- DFM review;
- inspection;
- AOI/SPI/X-ray analysis;
- quality engineering;
- troubleshooting;
- failure investigation;
- thermal analysis;
- mechanical analysis;
- reliability testing;
- fixture/tooling design;
- supplier/manufacturer communication;
- corrective action;
- process improvement;
- documentation.

Typical questions:

- Why is this defect occurring?
- Is this board manufacturable?
- Why is this component overheating?
- Why is the solder joint cracking?
- Is the process stable?
- How can yield be improved?
- Is this failure caused by the component, package, solder joint, PCB, or environment?

**Planned figure**

- Figure 1.12.1 - Where MET Graduates Contribute in Electronics Manufacturing.

---

### 1.13 Packaging Across Product Environments

Introduce the concept of a **mission profile**.

Representative applications:

- consumer electronics;
- industrial controls;
- automotive;
- aerospace;
- telecommunications;
- data centers;
- medical equipment;
- portable electronics;
- outdoor electronics;
- high-power electronics.

Possible environmental loads:

- temperature;
- thermal cycling;
- humidity;
- contamination;
- vibration;
- shock;
- dust;
- corrosion;
- altitude;
- electrical noise;
- user handling.

Emphasize:

> Packaging strategy must match the environment in which the product will actually operate.

**Planned figure**

- Figure 1.13.1 - Mission Profiles Create Different Packaging Requirements.

---

### 1.14 Industry Trends: What Is Changing?

Keep this section survey-level because many specific technologies have already been introduced earlier.

#### Semiconductor and Device Trends

- Continuing transistor scaling.
- GAA transistors.
- Wide-bandgap semiconductors.
- High power density.

#### Packaging and Integration Trends

- Chiplets.
- Heterogeneous integration.
- 2.5D packaging.
- 3D stacking.
- Hybrid bonding.
- HBM.
- Advanced substrates.
- Wafer-level packaging.
- Fan-out packaging.

#### Manufacturing Trends

- Smaller components.
- Finer pitch.
- Increasing hidden joints.
- More X-ray/CT inspection.
- Automated optical inspection.
- Machine vision.
- AI-assisted inspection and process control.
- Digital manufacturing data.
- Traceability.

#### Thermal Trends

- Increasing heat flux.
- Vapor chambers.
- Liquid cooling.
- Direct-to-chip cooling.
- Advanced TIMs.

#### Electrical Trends

- High-speed interfaces.
- Lower voltage / higher current.
- Increased SI/PI complexity.
- EMI/EMC control.

#### Reliability Trends

- Mission-profile-based qualification.
- Higher interconnect density.
- New material combinations.
- More severe thermomechanical interaction.

Main message:

> **As electronic devices become more capable and more highly integrated, packaging becomes more important, not less.**

**Planned figure**

- Figure 1.14.1 - Technology Trends and Their Packaging Consequences.

---

### 1.15 Chapter Summary and Practice

#### Practical Checklist

Students should be able to recognize and distinguish:

- semiconductor;
- N-type and P-type material;
- PN junction;
- diode;
- BJT;
- MOSFET;
- logic gate;
- wafer;
- die;
- packaged IC;
- common IC package families;
- package-substrate concept;
- wire bonding and flip-chip;
- bare PCB;
- PCBA;
- module/subassembly;
- finished product;
- major packaging functions;
- major manufacturing stages.

#### Chapter Summary

Review the complete story:

> **Semiconductor material -> semiconductor devices -> integrated circuit -> wafer fabrication -> bare die -> IC packaging -> PCB assembly -> PCBA -> product integration -> packaging hierarchy**

#### Key Terms Review

Representative terms:

- semiconductor;
- doping;
- electron;
- hole;
- N-type;
- P-type;
- PN junction;
- depletion region;
- bias;
- diode;
- BJT;
- FET;
- MOSFET;
- NMOS;
- PMOS;
- CMOS;
- wafer;
- die;
- lithography;
- etching;
- implantation;
- CMP;
- FEOL;
- MOL;
- BEOL;
- passivation;
- wafer probe;
- known good die;
- package;
- leadframe;
- package substrate;
- wire bond;
- flip-chip;
- QFN;
- BGA;
- CSP;
- WLCSP;
- PCB;
- PCBA;
- SPI;
- AOI;
- X-ray;
- ESD;
- MSL;
- mission profile.

#### Conceptual Questions

- Why is pure silicon useful even though it is a relatively poor conductor?
- Why does doping change semiconductor behavior?
- What is the purpose of a PN junction?
- How does a MOSFET act as a switch?
- Why can different physical transistor structures use similar schematic symbols?
- Why are fabrication processes repeated many times?
- What is the difference between a wafer, die, packaged IC, PCB, and PCBA?
- Why should wafer testing occur before expensive packaging?
- Why do smaller and more powerful ICs create packaging challenges?
- Why does a bare die need an IC package?
- Why are BGA joints usually more difficult to inspect than QFP joints?
- Why is package type different from mounting technology?
- Why do separately fabricated components and PCBs converge only at PCB assembly?
- Why is a working PCBA not necessarily a finished electronic product?
- Why is packaging important even when the circuit design is electrically correct?

#### Application Problems

Original packaging-oriented problems involving:

- distinguishing PCB versus PCBA;
- tracing an IC from wafer to product;
- recognizing semiconductor/component symbols;
- identifying semiconductor-fabrication operations;
- comparing common IC package families;
- identifying visible versus hidden solder-joint inspection needs;
- identifying major PCB assembly stages;
- relating transistor scaling to thermal and power-delivery requirements;
- identifying product-integration needs for different environments.

#### Short Packaging Analysis Activity

Use the recurring problem-solving framework:

> **Observation -> Physical Mechanism -> Root Cause -> Corrective Action**

#### Further Reading and References

Provide selected semiconductor-background and electronic-packaging references without reproducing copyrighted source material.

---

### Applied Chapter Elements

- **Engineering case:** Compare packaging priorities for a smartphone, industrial controller, and automotive module.
- **Semiconductor-to-PCBA bridge activity:** Trace one IC from wafer fabrication through IC package, PCB assembly, inspection, and final product integration.
- **Schematic-literacy activity:** Match common physical components and transistor families to their schematic symbols.
- **Manufacturing-awareness activity:** Distinguish semiconductor fabrication, PCB fabrication, PCB assembly, and product integration.
- **IC-package recognition activity:** Identify package family, external connection style, likely PCB mounting method, and likely inspection implications.
- **Product-integration activity:** Identify electrical, mechanical, thermal, and environmental structures added after the PCBA stage.
- **Student task:** Identify packaging functions and likely manufacturing concerns in an everyday electronic product.

### Authoring/Verification Cautions

- Keep Sections 1.3-1.5 conceptual and application-oriented. Do not turn Chapter 1 into a semiconductor-device-design or microfabrication course.
- Keep Section 1.6 more detailed than a simple package survey because IC package recognition and manufacturing implications are directly relevant to PCBA work.
- Keep Sections 1.7-1.8 introductory; detailed PCB fabrication remains in Chapter 2 and detailed assembly-process control remains in Chapter 4.
- Correct technical simplifications or errors from legacy lecture slides during authoring; use the slides as curriculum-intent references, not unquestioned technical authority.
- Do not include carrier-statistics mathematics, Fermi-level calculations, diode-equation exercises, MOSFET I-V derivations, transistor sizing, process recipes, implantation calculations, or lithography-resolution calculations.
- Explain that modern process-node names are generation labels and should not be interpreted as one literal physical feature dimension.
- Clearly distinguish semiconductor BEOL from electronic-packaging/assembly "back end" terminology.
- Explain that wafer fabrication and packaging increasingly overlap through RDL, UBM, bumping, wafer-level packaging, and hybrid-bonding preparation.
- Keep advanced transistor and lithography developments at awareness level and explicitly connect them to packaging consequences.
- Distinguish **package style**, **PCB mounting method**, and **internal die-to-package interconnection**.
- Do not imply a serial manufacturing path in which the packaged IC becomes the PCB. Show semiconductor/component manufacturing and PCB fabrication as parallel streams that converge at PCB assembly.
- Do not present simplified public product-failure stories as confirmed root causes unless supported by strong sources.
- Ensure package-level terminology is consistent with current industry practice.
- Maintain the employment focus on PCB/PCBA manufacturing, product engineering, quality, inspection, thermal/mechanical design, troubleshooting, and reliability.
- Treat the planned figure count as a design plan rather than a quota. Add or merge figures during authoring when that improves learning.

### Primary Reference Anchors

- MET406 Chapter 1 lecture notes, especially the semiconductor/electronics background, wafer-fabrication overview, IC packaging, PCB assembly, packaging hierarchy, and packaging-design overview.
- Tummala, *Fundamentals of Device and Systems Packaging*, introductory semiconductor/package/interface and system-packaging chapters.
- Tummala, *Fundamentals of Microsystems Packaging*, introductory semiconductor, package, hierarchy, and assembly material.
- Blackwell, *The Electronic Packaging Handbook*, introductory package/system/manufacturing perspective.
- Current authoritative semiconductor-manufacturing resources for modern process-node, transistor-architecture, lithography, and wafer-fabrication terminology.
- Current IPC/JEDEC/ESD standards and official industry references for ESD, moisture sensitivity, package handling, PCB assembly, and inspection awareness.

## Chapter 2 - PCB Structure, Materials, and Fabrication

### Chapter Purpose

Teach students to see a PCB as a **laminated electrical, mechanical, thermal, and manufacturing structure**, not merely as a drawing of copper traces.

### Learning Objectives

Students should be able to:

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

Properties students should understand:

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

- MET406 Chapter 2 lecture notes.
- Tummala, system-level PWB chapters.
- Coombs, *Printed Circuits Handbook*, materials, design, fabrication, and testing sections.
- IPC-2221/2222, IPC-6012, IPC-A-600, IPC-TM-650 for standards awareness.

---

## Chapter 3 - Design for Manufacturability in Electronic Packaging

### Chapter Purpose

Teach DFM as the process of converting design intent into a board and assembly that real factories can build repeatedly, inspect, test, repair, and scale economically.

### Learning Objectives

Students should be able to:

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

Students must distinguish:

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

- MET406 Chapter 3 lecture notes and Lab #1.
- Coombs, PCB design/manufacturing sections.
- Blackwell, concurrent engineering/DFM and SMT design sections.
- IPC-2221/2222, IPC-7352, IPC-2231, IPC-6012, and the IPC-A-610/J-STD-001 relationship.
- Current fabricator/assembler capability documentation when creating numerical examples.

---

## Chapter 4 - Electronic Assembly Technologies

### Chapter Purpose

Explain how a fabricated PCB becomes a PCBA, how SMT/THT processes work physically, what process variables control quality, how defects form, and how manufacturing engineers monitor and troubleshoot the line.

### Learning Objectives

Students should be able to:

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

Highly job-relevant addition to the current lecture sequence:

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

- MET406 Chapter 4 lecture notes and Labs #2-#4.
- Tummala board-assembly chapters.
- Coombs, assembly, soldering, process-control, testing, and rework sections.
- Blackwell, SMT, test, and inspection chapters.
- IPC J-STD-001, IPC-A-610, J-STD-005, IPC-7527, IPC-7711/7721, J-STD-033.
- ANSI/ESD S20.20 / IEC 61340-5-1 for ESD awareness.

---

## Chapter 5 - Electrical Design Considerations

### Chapter Purpose

Give MET students the **minimum electrical foundation needed to understand why physical PCB/package geometry changes electrical performance**. The focus is practical PCB interconnect behavior, not circuit-design theory.

### Learning Objectives

Students should be able to:

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

This chapter needs especially careful technical review because the existing lecture deck is large and includes simplified/occasionally error-prone formulas.

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

- MET406 Chapter 5 lecture notes and Lab #5.
- Bogatin, *Signal and Power Integrity - Simplified*.
- Tummala, electrical package-design chapters.
- IPC-2221 and IPC-2152 awareness; product-specific IEC/UL or other safety standards where creepage/clearance is safety-critical.
- IPC-TM-650 electrical test methods awareness.

---

## Chapter 6 - Thermal Design Considerations

### Chapter Purpose

Teach students a practical thermal-design workflow: **identify heat sources -> identify heat paths -> estimate temperatures -> select cooling methods -> verify -> improve**.

### Learning Objectives

Students should be able to:

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

- MET406 Chapter 6 lecture notes, Lab #6, Lab #7, and SolidWorks thermal tutorial.
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

Students should be able to:

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

- Legacy MET406 mechanical chapter.
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

Students should be able to:

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

Students should practice summarizing:

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

Students must:

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

- Legacy MET406 reliability chapter.
- O'Connor & Kleyner, *Practical Reliability Engineering*.
- Jamnia, mechanical/electrical failure and reliability chapters.
- Tummala, design-for-reliability and microsystems-reliability chapters.
- IEEE EPS reliability-physics resources.
- IPC-9701, JEDEC JESD22/JESD47, IEC 60068, and application-specific standards.

---

# 7. Cross-Chapter Threads

These themes should deliberately reappear throughout the book so students see packaging as one connected engineering system.

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

Students should repeatedly use:

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

| Book Chapter | Existing MET406 Lab/Resource | OER Role |
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

**Important:** The OER should teach students **how to recognize when a standard is needed**, not attempt to reproduce standards.

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

The outline intentionally retains the multidisciplinary core seen in established packaging education while adapting it to an MET audience with less electrical prerequisite knowledge.

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

The MET406 OER intentionally differentiates itself by giving **more emphasis to PCB/PCBA manufacturing, DFM, troubleshooting, process control, and practical system-level packaging**, while reducing device-level physics and advanced electrical theory. This is consistent with the book's employment-oriented MET audience rather than a specialist microelectronics-packaging graduate audience.

---

# 12. Editorial and Technical QA Checklist

Before any chapter is considered complete, perform all of the following.

## Pass 1 - Curriculum/Scope Check

- Does the material support the applied MET audience?
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
- Practice problems are newly created.
- No reference book organization has been copied too closely.
- Figures have alt text.
- Equations are mdBook/KaTeX compatible.
- Units are primarily SI, with common industry imperial units shown only where useful.
- Terminology is consistent across chapters.
- Each chapter has objectives, summary, review questions, practical problems, and reference links.

---

# 13. Known Content Areas Requiring Special Revision from Existing Notes

## Chapter 1

- Verify public product-failure case-study root causes and avoid oversimplified causal claims.
- Reduce semiconductor-device detail to what packaging students need.

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

- detailed semiconductor wafer fabrication;
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

These are valuable topics but are better treated after students master PCB/PCBA-level packaging fundamentals.

---

# 15. Current Project Decision

The MET406 OER will use the following **eight-chapter architecture** as its working master structure:

1. **Introduction to Electronic Packaging**
2. **PCB Structure, Materials, and Fabrication**
3. **Design for Manufacturability in Electronic Packaging**
4. **Electronic Assembly Technologies**
5. **Electrical Design Considerations**
6. **Thermal Design Considerations**
7. **Mechanical Design Considerations**
8. **Reliability of Electronic Packaging**

Chapters 1-6 will be developed from the revised 2026 materials but technically rechecked and rewritten for OER use. Chapters 7-8 will be rebuilt from the older notes using the same applied, industry-oriented approach.

The final book should remain recognizably **MET406**, but should be able to stand independently as an open, self-learning resource for engineering technology students entering the electronics packaging and manufacturing industry.

================================================================================


================================================================================
FILE: helper/project_rules.md
================================================================================

FILE INFORMATION:
----------------------------------------
Size: 8.5 KB
Extension: .md
Language: text
Location: helper/project_rules.md
Relative Path: helper
Created: 2026-08-29 16:39:14 (America/New_York / GMT-04:00)
Modified: 2026-08-29 18:04:18 (America/New_York / GMT-04:00)
MD5: 4b3116baf086e9aa41f9b2ea3a555d40
SHA256: ec11b7879ae76d58fa82afcd2d31ac320f4851f6fb28b0dff04eb7c2d2568c9b
Encoding: ASCII

FILE CONTENT:
----------------------------------------
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

================================================================================


================================================================================
BINARY/EXCLUDED FILES (not included in text content)
================================================================================
- helper/OpenEngineeringBooks_Technical_Book_Template_v1.0.zip


================================================================================
BINARY/EXCLUDED FILES (not included in text content)
================================================================================
- resources/books/Fundamentals -- (美)拉奥 R_ 图马拉(Rao R_ Tummala)主编;蔡镇[等]译; 图马拉; 蔡镇 -- Ban dao ti yu ji cheng dian lu guan -- isbn13 9787111675662 -- a904b9b99d412fd55db4961ca90c4cf7 -- Anna’s Archive.pdf
- resources/books/Fundamentals of Microsystems Packaging (Rao R. Tummala) (z-library.sk, 1lib.sk, z-lib.sk).pdf
- resources/books/Practical Guide for the Reliable Packaging of Electronics Thermal and Mechanical Design and Analysis (Ali Jamnia) (z-library.sk, 1lib.sk, z-lib.sk).pdf
- resources/books/Practical Reliability Engineering, Fifth Edition (Patrick D. T. OConnor etc.) (z-library.sk, 1lib.sk, z-lib.sk).pdf
- resources/books/Printed Circuits Handbook (McGraw Hill Handbooks) (Clyde Coombs) (z-library.sk, 1lib.sk, z-lib.sk).pdf
- resources/books/Signal and Power Integrity - Simplified (Eric Bogatin) (z-library.sk, 1lib.sk, z-lib.sk).pdf
- resources/books/The electronic packaging handbook (Glenn R. Blackwell) (z-library.sk, 1lib.sk, z-lib.sk).pdf
- resources/books/Vibration Analysis for Electronic Equipment (Dave S. Steinberg) (z-library.sk, 1lib.sk, z-lib.sk).pdf
- resources/books/系统级封装导论 整体系统微型化 ( etc.) (z-library.sk, 1lib.sk, z-lib.sk).pdf


================================================================================
FILE: README.md
================================================================================

FILE INFORMATION:
----------------------------------------
Size: 3.92 KB
Extension: .md
Language: text
Location: README.md
Relative Path: root
Created: 2026-08-29 16:51:35 (America/New_York / GMT-04:00)
Modified: 2026-08-29 16:51:35 (America/New_York / GMT-04:00)
MD5: f7fac649ebfc7b44caeb90de65e66fbc
SHA256: 67ec7764447d8681c03321fdf86e5e0d3c0460bc2a87371592a86fa3277386cb
Encoding: ASCII

FILE CONTENT:
----------------------------------------
# Electronic Packaging Applications

**An Applied Introduction for Engineering Technology Students**

This repository contains the source materials for an open educational resource (OER) on **electronic packaging**, developed for publication through [OpenEngineeringBooks.org](https://openengineeringbooks.org/).

The book is designed primarily for undergraduate **Mechanical Engineering Technology (MET)** students who have limited electrical-engineering background and want practical knowledge that can help prepare them for work in electronics manufacturing, packaging, product engineering, quality, thermal and mechanical design, and reliability.

## Book Goal

Electronic packaging is the engineering that allows an electronic circuit to physically exist, be manufactured, survive its environment, and operate reliably.

The book therefore approaches electronic packaging as a multidisciplinary engineering activity involving:

- printed circuit boards and electronic assemblies;
- design for manufacturability;
- electronics manufacturing and soldering processes;
- electrical interconnect behavior;
- thermal management;
- mechanical and thermomechanical design;
- vibration and shock;
- reliability, qualification, and failure analysis.

The emphasis is **applied engineering rather than advanced theory**. Electrical, thermal, mechanical, and reliability concepts are introduced to the depth needed to understand practical packaging problems and make engineering decisions.

## Intended Audience

The primary audience is undergraduate Engineering Technology students, especially Mechanical Engineering Technology students who typically have:

- basic engineering mathematics;
- introductory mechanics and materials knowledge;
- basic CAD experience;
- introductory thermodynamics and heat-transfer knowledge;
- only limited experience with circuits, PCB design, or electronics manufacturing.

The book may also be useful to students and early-career practitioners in manufacturing, mechatronics, industrial, mechanical, and related engineering fields.

## Learning Approach

Major topics are developed around practical engineering questions:

1. **What is it?**
2. **Why does it matter in an electronic product?**
3. **What can go wrong?**
4. **How can an engineer recognize the problem?**
5. **What can the engineer change to improve the design or process?**

Worked examples, figures, troubleshooting cases, laboratory activities, and practice problems are used where they support these goals.

## Development Status

This book is currently under active development.

The initial manuscript is being developed from MET406 *Electronic Packaging Applications* course materials and laboratory activities, with technical verification using authoritative textbooks, standards, manufacturer documentation, professional resources, and other appropriate engineering references.

All public OER prose, instructional figures, worked examples, practice problems, and learning activities are independently authored for this project. Reference materials are used for technical verification and research rather than copied or closely reproduced.

The detailed table of contents is intentionally **not included in this README during first-draft development**. It will be finalized and added after the complete first draft of the book has been developed and the overall structure has been reviewed.

## OpenEngineeringBooks

The project uses the OpenEngineeringBooks technical-book workflow based on Markdown, mdBook, and KaTeX-compatible mathematics.

Authoritative book content is maintained in the repository source files. Generated mdBook staging and website output are not edited manually.

## License

The project is intended for open publication. The final repository will include the applicable open-content license and attribution information before public release.

Third-party standards, trademarks, referenced publications, and other external materials remain subject to their respective rights and terms.

================================================================================
