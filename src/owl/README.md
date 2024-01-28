# bfo-core.owl

This directory contains the Web Ontology Language (OWL) implementation of BFO, specifically, [OWL2](https://www.w3.org/TR/owl2-overview/). As the file name suggests, this is the foundational implementation for any extensions of BFO implemented in OWL 2, such as those found in the temporal extensions directory. 

## Directory Structure
* bfo-core.owl corresponds to [ISO/IEC 21838‑2](https://www.iso.org/obp/ui/#iso:std:iso-iec:21838:-2:ed-1:v1:en) A.1.2-3, formatted as [RDF/XML](https://www.w3.org/TR/rdf-syntax-grammar/). 
* bfo-core.ofn correspond to [ISO/IEC 21838‑2](https://www.iso.org/obp/ui/#iso:std:iso-iec:21838:-2:ed-1:v1:en) A.1.2-3, formatted as [Functional-style Syntax](https://www.w3.org/TR/owl2-syntax/#Functional-Style_Syntax).
* bfo-core.ttl, formatted in the [Terse RDF Triple Language](https://www.w3.org/TR/turtle/) flavor of RDF.
* profiles - Contains BFO research & development projects that use bfo-core.owl as a foundation. 
  - temporal extensions - Contains research & development projects extending bfo-core.owl with a stronger representation of time.
  - atemporal - Contains research & development projects removing relations referencing time from bfo-core.owl.