# bfo-core.owl

This directory contains the Web Ontology Language (OWL) implementation of BFO, specifically, [OWL2](https://www.w3.org/TR/owl2-overview/). As the file name suggests, this is the foundational implementation for any extensions of BFO implemented in OWL 2, such as those found in the temporal extensions directory. 

## Directory Structure
* bfo-core.owl corresponds to [ISO/IEC 21838‑2](https://www.iso.org/obp/ui/#iso:std:iso-iec:21838:-2:ed-1:v1:en) A.1.2-3, formatted as RDF/XML. 
* bfo-core.ofn correspond to [ISO/IEC 21838‑2](https://www.iso.org/obp/ui/#iso:std:iso-iec:21838:-2:ed-1:v1:en) A.1.2-3, formatted as Functional-Style Syntax.
* bfo-core.ttl, formatted in the Terse RDF Triple Language flavor of RDF.
* temporal extensions 
  - temporalized relations - Contains R&D project extending bfo-core.owl to a stronger representation of time, namely, one that employs temporal qualification of continuant object properties, resulting in "all times" and "some times" versions. 
  - contributions - Files that are not part of the bfo-core.owl distribution but are intended as potentially useful additions. 