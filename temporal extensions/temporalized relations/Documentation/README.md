The following files are provided as documentation supporting the temporalized relation extension of ISO/IEC 21838-2:2020:
1. BFO-2020-text: table of terms, relational expressions, definitions and elucidations in BFO-2020
2. bfo-2020-terms.xlsx – item 1. in Excel format
3. bfo-2020-iris.xlsx – table of IRIs for all classes and relations in BFO-2020-CL, including all classes and relations in BFO-ISO-OWL
4. bfo-2020-relations-table.xlsx – table of all relations in BFO-2020-CL including all inverses, reverses[*], and all binary variants used in BFO-2020-OWL
These files serve to assist in identifying the links between the contents of the following folders:
In the implementation folder:
5. bfo-2020.owl – OWL in rdf/xml format
6. bfo-2020.ofn – OWL in functional syntax  
7. bfo-2020-labeled.ofn – OWL in functional syntax with labels instead of IRIs
The common-logic folder provides the complete set of modules in the CL formalization of BFO-2020 together with
8. temporalized-relations.cl, which contains CL definitions of the binary at-all-times/some-time relations used in bfo-2020-owl.
The pdf folder provides the complete set of modules in the CL axiomatization of BFO-ISO in traditional first-order logic (FOL) syntax.
In the prover9 folder the same set of modules are provided in prover 9 format, together with 
9. temporalized-relations.p9 – as for 9., but also in prover9 format.
The model folder provides three versions of the model used to prove consistency of the CL formalization: in prover 9, CLIF, and clausetester formats.

These documents are licensed under the terms of  the Creative Commons Attribution 4.0 International (CC BY 4.0) license: https://creativecommons.org/licenses/by/4.0/ . The most current version of these files will be at https://github.com/BFO-ontology/BFO-2020

[*] The concept of reverse relation is only relevant for at-all-time relations. See
reverse-vs-inverse.txt in this directory for an explanation.