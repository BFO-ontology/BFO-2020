# BFO Repository Documentation
  
This directory contains files to promote user understanding and contributions: 

* axiomatization pdfs - Contains first-order axiomatizations of BFO sub-theories stored in PDF, such as: continuant-mereology.pdf
* FAQ - Contains guidance for contributing to this repository, using Github workflows, and so on.
* user guides - Contains user guides for: ontology developers, software developers and subject matter experts. 

This directory also contains files needed to support automated quality control checks and illustration within this repository: 

* images - Contains images used in this repository. 
* sparql - Contains quality control checks written in the [SPARQL Protocol and RDF Query Language (SPARQL)](https://www.w3.org/TR/sparql11-query/) which are used to ensure updates to bfo-core.owl do not violate design principles, such as having exactly one skos:prefLabel per language: exactly_1_prefLabel_per_lang.sparql.