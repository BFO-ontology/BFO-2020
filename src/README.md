# BFO Implementations 

This directory contains documentation reflecting the requirements of [ISO/IEC 21838‑2:2020](https://www.iso.org/obp/ui/#iso:std:iso-iec:21838:-2:ed-1:v1:en), specifically:
* owl 
    - bfo-core.owl - Implementation of BFO in the Web Ontology Language (OWL), rendered in OWL/XML.
    - bfo-core.ofn - Implementation of BFO in the Web Ontology Language (OWL), rendered in Functional Syntax.
* common logic
    - Files containing modularized sub-theories of BFO in CLIF, such as the theory of spatial regions spatial.cl and the theory of histories history.cl. 
* prover9 
    - The model directory demonstrates consistency of BFO CLIF implementations, containing two versions of the model: one in Prover9's native syntax and one in clausetester format.
    - Files containing modularized sub-theories of BFO readable by Prover9, such as the theory of spatial regions spatial.prover9 and the theory of histories history.prover9. 

## Differences in Logical Strength
Note that the OWL implementation of BFO is an _approximation_ to the implementations of BFO in both CLIF and Prover9, which are logically stronger. As an approximation, the BFO OWL is incomplete, in the sense that there are potentially provably true OWL axioms that it does not contain. The BFO OWL implementation will become more complete as additions are made. Users are encouraged to suggest BFO-FOL provable BFO-OWL axioms to our issue tracker https://github.com/BFO-ontology/BFO-2020/issues so that they can be verified and added to future BFO-OWL releases.

NOTE: [ISO/IEC 21838‑2:2020](https://www.iso.org/obp/ui/#iso:std:iso-iec:21838:-2:ed-1:v1:en) states that axioms in BFO OWL are valid just in case they are provable from one of the stronger BFO implementations (e.g. CLIF or Prover9). 
