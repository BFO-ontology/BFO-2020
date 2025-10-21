# Basic Formal Ontology
This repository maintains the Basic Formal Ontology (BFO) artifact conformant to the requirements specified in [ISO/IEC 21838‑1](https://www.iso.org/standard/71954.html) for top-level ontologies. BFO contains classes and relations representing content common to all areas of scientific investigation, e.g. object, process, etc. and is used as a top-level architecture by numerous ontologies in the [Open Biomedical and Biomedical Ontologies (OBO) Foundry](https://obofoundry.org/), the [Industrial Ontologies Foundry (IOF)](https://oagi.org/pages/industrial-ontologies), and the [Common Core Ontologies](https://github.com/CommonCoreOntology/CommonCoreOntologies) suite. Ontologies conformant to BFO promote interoperability, standardization, and reuse among domain-level ontologies. 

## BFO-CCO Office Hours
The BFO developer team have partnered with the developers of the [Common Core Ontologies](https://github.com/CommonCoreOntology/CommonCoreOntologies) to hold biweekly "office hours", which meet alternate Fridays remotely for an hour starting at 11am EST. For more information see [here](https://ncor-organization.github.io/NCOR-Test/office-hours/) or contact John Beverley at johnbeve[@]buffalo.edu. 

## Current Release 

* The current release of BFO 2020 is the "bfo-core.owl" file located in this repository: 21838-2/owl/bfo-core.owl. 
* The most current version of these files can always be found at: https://github.com/BFO-ontology/BFO-2020

## Directory Structure
* documentation
  - axiomatization pdfs - Contains first-order axiomatizations of BFO sub-theories stored in PDFs, such as: continuant-mereology.pdf
  - FAQ - Contains guidance for contributing to this repository, using [Github workflows](https://docs.github.com/en/actions/using-workflows), and so on.
  - images - Contains images used in this repository. 
  - user guides - Directory for planned user guides for: ontology developers, software developers and subject matter experts. 
* 21838-2
  - owl - Contains Web Ontology Language ([OWL2](https://www.w3.org/TR/owl2-overview/)) implementations of BFO in [RDF/XML](https://www.w3.org/TR/rdf-syntax-grammar/), [Functional-style Syntax](https://www.w3.org/TR/owl2-syntax/#Functional-Style_Syntax), and [Terse RDF Triple Language](https://www.w3.org/TR/turtle/).
  - common logic - Contains the Common Logic Interchange Format (CLIF) implementation of BFO separated into files representing sub-theories of BFO, such as: material-entity.cl.
  - prover9 - Contains an implementation of BFO that is readable by the Prover9 automated theorem prover, separated into files representing sub-theories of BFO, such as: temporal-region.prover9.
  - sparql - Contains quality control checks written in the [SPARQL Protocol and RDF Query Language (SPARQL)](https://www.w3.org/TR/sparql11-query/) which are used to ensure updates to bfo-core.owl do not violate design principles, such as having exactly one skos:prefLabel per language: exactly_1_prefLabel_per_lang.sparql.
* temporal extensions - Contains R&D project extending bfo-core.owl to stronger representations of time, as well as supplementary documentation supporting such extensions. 
* contrib - Contains contributed files that are extensions of the axiomatization, intended to add features or to demonstrate techniques

## License
These documents are licensed under the terms of  the [Creative Commons Attribution 4.0 International (CC BY 4.0) license](https://creativecommons.org/licenses/by/4.0/).

## Documentation
* For further documentation concerning this repository, see the [BFO Documentation Page](https://basic-formal-ontology.org/bfo-2020.html). 
* For further information about building ontologies using BFO artifacts and strategies, see [Building Ontologies with Basic Formal Ontology](https://mitpress.mit.edu/9780262527811/building-ontologies-with-basic-formal-ontology/). 
* For example BFO design patterns, see the article [Basic Formal Ontology: Case Studies](https://philpapers.org/archive/OTTBBF.pdf). 
* For information about upcoming and past BFO events, see [NCOR](https://ncorwiki.buffalo.edu/index.php/Main_Page). 

## Development Team
* [Barry Smith](https://www.buffalo.edu/cas/philosophy/faculty/faculty_directory/smith-b.html), SUNY Distinguished Professor of Philosophy and Julian Park Chair, University at Buffalo, Department of Philosophy
* [Alan Ruttenberg](https://dental.buffalo.edu/faculty/home.html?ubit=alanrutt), formerly Director of Clinical and Translational Data Exchange, University at Buffalo
* [John Beverley](https://www.buffalo.edu/cas/philosophy/faculty/faculty_directory/john-beverley.html), Assistant Professor, University at Buffalo

## Basic Formal Ontology Hierarchy
```mermaid
graph RL
	B(continuant)-->A(entity):::BFO
	D(specifically dependent<br> continuant)-->B(continuant):::BFO
	E(generically dependent<br> continuant):::BFO-->B(continuant)
	F(independent<br> continuant)-->B(continuant)
	G(material entity)-->F(independent<br> continuant):::BFO
	H(immaterial<br> entity)-->F(independent<br> continuant)
	I(quality)-->D(specifically dependent<br> continuant):::BFO
	J(realizable<br> entity):::BFO-->D(specifically dependent<br> continuant)
	K(relational<br> quality):::BFO-->I(quality):::BFO
	L(role):::BFO-->J(realizable<br> entity):::BFO
	M(disposition):::BFO-->J(realizable<br> entity)
	N(function):::BFO-->M(disposition)
	O(site):::BFO-->H(immaterial<br> entity):::BFO
	P(spatial<br> region):::BFO-->H(immaterial<br> entity)
	Q(continuant fiat<br> boundary):::BFO-->H(immaterial<br> entity)
	R(fiat<br> point):::BFO-->Q(continuant fiat<br> boundary):::BFO
	S(fiat<br> surface):::BFO-->Q(continuant fiat<br> boundary)
	T(fiat<br> line):::BFO-->Q(continuant fiat<br> boundary)
	VD(zero-dimensional<br> spatial region):::BFO-->P(spatial<br> region):::BFO
	U(one-dimensional<br> spatial region):::BFO-->P(spatial<br> region):::BFO
	V(two-dimensional<br> spatial region):::BFO-->P(spatial<br> region):::BFO
	W(three-dimensional<br> spatial region):::BFO-->P(spatial<br> region):::BFO
	X(fiat object part):::BFO-->G(material<br> entity):::BFO
	Y(object<br> aggregate):::BFO-->G(material<br> entity):::BFO
	Z(object):::BFO-->G(material<br> entity):::BFO
	C(occurrent):::BFO-->A(entity):::BFO
	AA(process):::BFO-->C(occurrent):::BFO
	AB(process<br> boundary):::BFO-->C(occurrent)
	AC(temporal<br> region):::BFO-->C(occurrent)
	AD(spatiotemporal<br> region):::BFO-->C(occurrent)
	AE(history):::BFO-->AA(process):::BFO
	AF(zero-dimensional<br> temporal region):::BFO-->AC(temporal<br> region):::BFO
	AI(one-dimensional<br> temporal region):::BFO-->AC(temporal<br> region):::BFO
	AG(temporal<br> instant):::BFO-->AF(zero-dimensional<br> temporal region):::BFO
	AH(temporal<br> interval):::BFO-->AI(one-dimensional<br> temporal region):::BFO

    classDef BFO fill:#F5AD27,color:#060606

  ```
