# BFO Implementations 

This directory contains documentation reflecting the requirements of [ISO/IEC 21838‑2:2020](https://www.iso.org/obp/ui/#iso:std:iso-iec:21838:-2:ed-1:v1:en), specifically:
* owl (*)
    - bfo-core.owl - The Implementation of BFO in the Web Ontology Language (OWL), rendered in OWL/XML.
    - bfo-core.ofn - Implementation of BFO in the Web Ontology Language (OWL), rendered in Functional Syntax.
* owl|common-logic/profiles
    - Experimental additions to BFO
* common-logic/*.cl
    - Files containing modularized sub-theories of BFO in CLIF, such as the theory of spatial regions spatial.cl and the theory of histories history.cl. 
* common-logic/contributions
    - Extensions to BFO
* model
    - Provides, in CLIF, model.cl that demonstrates consistency of the BFO common logic implementation by being a satisfying interpretation. Other formats may be available by request.
* prover9 
    - Files containing modularized sub-theories of BFO readable by Prover9, such as the theory of spatial regions spatial.prover9 and the theory of histories history.prover9. 

## Differences in Logical Strength
Note that the OWL implementation of BFO is an _approximation_ to the implementations of BFO in both CLIF and Prover9, which are logically stronger. As an approximation, the BFO OWL is incomplete, in the sense that there are potentially provably true OWL axioms that it does not contain. The BFO OWL implementation will become more complete as additions are made. Users are encouraged to suggest BFO-FOL provable BFO-OWL axioms to our issue tracker https://github.com/BFO-ontology/BFO-2020/issues so that they can be verified and added to future BFO releases.

NOTE: [ISO/IEC 21838‑2:2020](https://www.iso.org/obp/ui/#iso:std:iso-iec:21838:-2:ed-1:v1:en) states that axioms in BFO OWL are valid just in case they are provable from one of the stronger BFO implementations (e.g. CLIF or Prover9). 

[*] bfo-core.owl differs from the 21838-2 released bfo-2020.owl in that the -at-some-times relations have been renamed without that suffix, and the -at-all-times relations have been removed, being instead available in the temporalized relations profile.
