# Basic Formal Ontology
This repository maintains the Basic Formal Ontology (BFO) artifact conformant to the requirements specified in [ISO/IEC 21838‑1](https://www.iso.org/standard/71954.html) for top-level ontologies. BFO contains classes and relations representing content common to all areas of scientific investigation, e.g. object, process, etc. and is used as a top-level architecture by numerous ontologies in the [Open Biomedical and Biomedical Ontologies (OBO) Foundry](https://obofoundry.org/), the [Industrial Ontologies Foundry (IOF)](https://oagi.org/pages/industrial-ontologies), and the [Common Core Ontologies](https://github.com/CommonCoreOntology/CommonCoreOntologies) suite. Ontologies conformant to BFO promote interoperability, standardization, and reuse among domain-level ontologies. 

## BFO-CCO Office Hours
The BFO developer team have partnered with the developers of the [Common Core Ontologies](https://github.com/CommonCoreOntology/CommonCoreOntologies) to hold biweekly "office hours", which meet alternate Fridays remotely for an hour starting at 11am EST. For more information see [here](https://johnbeve.github.io/NCOR-Test/office-hours/) or contact John Beverley at johnbeve[@]buffalo.edu. 

## Current Release 

* The current release of BFO 2020 is the "bfo-core.owl" file located in this repository: src/owl/bfo-core.owl. 
* The most current version of these files can always be found at: https://github.com/BFO-ontology/BFO-2020

## Directory Structure
* documentation
  - axiomatization pdfs - Contains first-order axiomatizations of BFO sub-theories stored in PDFs, such as: continuant-mereology.pdf
  - FAQ - Contains guidance for contributing to this repository, using [Github workflows](https://docs.github.com/en/actions/using-workflows), and so on.
  - images - Contains images used in this repository. 
  - user guides - Directory for planned user guides for: ontology developers, software developers and subject matter experts. 
* src
  - owl - Contains Web Ontology Language ([OWL2](https://www.w3.org/TR/owl2-overview/)) implementations of BFO in [RDF/XML](https://www.w3.org/TR/rdf-syntax-grammar/), [Functional-style Syntax](https://www.w3.org/TR/owl2-syntax/#Functional-Style_Syntax), and [Terse RDF Triple Language](https://www.w3.org/TR/turtle/).
  - common logic - Contains the Common Logic Interchange Format (CLIF) implementation of BFO separated into files representing sub-theories of BFO, such as: material-entity.cl.
  - prover9 - Contains an implementation of BFO that is readable by the Prover9 automated theorem prover, separated into files representing sub-theories of BFO, such as: temporal-region.prover9.
  - sparql - Contains quality control checks written in the [SPARQL Protocol and RDF Query Language (SPARQL)](https://www.w3.org/TR/sparql11-query/) which are used to ensure updates to bfo-core.owl do not violate design principles, such as having exactly one skos:prefLabel per language: exactly_1_prefLabel_per_lang.sparql.
* temporal extensions - Contains R&D project extending bfo-core.owl to stronger representations of time, as well as supplementary documentation supporting such extensions. 

## License
These documents are licensed under the terms of  the [Creative Commons Attribution 4.0 International (CC BY 4.0) license](https://creativecommons.org/licenses/by/4.0/).

## Documentation
* For further documentation concerning this repository, see the [BFO Documentation Page](https://basic-formal-ontology.org/bfo-2020.html). 
* For further information about building ontologies using BFO artifacts and strategies, see [Building Ontologies with Basic Formal Ontology](https://mitpress.mit.edu/9780262527811/building-ontologies-with-basic-formal-ontology/). 
* For example BFO design patterns, see the article [Basic Formal Ontology: Case Studies](https://philpapers.org/archive/OTTBBF.pdf). 
* For information about upcoming and past BFO events, see [NCOR](https://ncorwiki.buffalo.edu/index.php/Main_Page). 

## Development Team
* [Barry Smith](https://www.buffalo.edu/cas/philosophy/faculty/faculty_directory/smith-b.html), SUNY Distinguished Professor of Philosophy and Julian Park Chair, University at Buffalo, Department of Philosophy
* [Alan Ruttenberg](https://dental.buffalo.edu/faculty/home.html?ubit=alanrutt), Director of Clinical and Translational Data Exchange, University at Buffalo
* [John Beverley](https://www.buffalo.edu/cas/philosophy/faculty/faculty_directory/john-beverley.html), Assistant Professor, University at Buffalo

## Basic Formal Ontology Hierarchy
```mermaid
graph LR
    A(Entity):::BFO --> B(Continuant)
    B(Continuant):::BFO --> D(Specifically Dependent<br> Continuant)
    B(Continuant) --> E(Generically Dependent<br> Continuant):::BFO
    B(Continuant) --> F(Independent<br> Continuant)
    F(Independent<br> Continuant):::BFO --> G(Material Entity)
    F(Independent<br> Continuant) --> H(Immaterial<br> Entity)
    D(Specifically Dependent<br> Continuant):::BFO --> I(Quality)
    D(Specifically Dependent<br> Continuant) --> J(Realizable<br> Entity):::BFO
    I(Quality):::BFO --> K(Relational<br> Quality):::BFO
    J(Realizable<br> Entity):::BFO --> L(Role):::BFO
    J(Realizable<br> Entity) --> M(Disposition):::BFO
    M(Disposition) --> N(Function):::BFO
    H(Immaterial<br> Entity):::BFO --> O(Site):::BFO
    H(Immaterial<br> Entity) --> P(Spatial<br> Region):::BFO
    H(Immaterial<br> Entity) --> Q(Continuant Fiat<br> Boundary):::BFO
    Q(Continuant Fiat<br> Boundary):::BFO --> R(Fiat<br> Point):::BFO
    Q(Continuant Fiat<br> Boundary) --> S(Fiat<br> Surface):::BFO
    Q(Continuant Fiat<br> Boundary) --> T(Fiat<br> Line):::BFO
    P(Spatial<br> Region):::BFO --> VD(Zero-Dimensional<br> Spatial Region):::BFO
    P(Spatial<br> Region):::BFO --> U(One-Dimensional<br> Spatial Region):::BFO
    P(Spatial<br> Region):::BFO --> V(Two-Dimensional<br> Spatial Region):::BFO
    P(Spatial<br> Region):::BFO --> W(Three-Dimensional<br> Spatial Region):::BFO
    G(Material<br> Entity):::BFO --> X(Fiat Object Part):::BFO
    G(Material<br> Entity):::BFO --> Y(Object<br> Aggregate):::BFO
    G(Material<br> Entity):::BFO --> Z(Object):::BFO
    A(Entity):::BFO --> C(Occurrent):::BFO
    C(Occurrent):::BFO --> AA(Process):::BFO
    C(Occurrent) --> AB(Process<br> Boundary):::BFO
    C(Occurrent) --> AC(Temporal<br> Region):::BFO
    C(Occurrent) --> AD(Spatiotemporal<br> Region):::BFO
    AA(Process):::BFO --> AE(History):::BFO
    AC(Temporal<br> Region):::BFO --> AF(Zero-Dimensional<br> Temporal Region):::BFO
    AC(Temporal<br> Region) --> AI(One-Dimensional<br> Temporal Region):::BFO
    AF(Zero-Dimensional<br> Temporal Region):::BFO --> AG(Temporal<br> Instant):::BFO
    AI(One-Dimensional<br> Temporal Region):::BFO --> AH(Temporal<br> Interval):::BFO

    classDef BFO fill:#F5AD27,color:#060606

  ```
