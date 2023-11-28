## BFO Implementations 

This directory contains implementations of Basic Formal Ontology in formal languages. Specifically:
* BFO-CL - An implementation of BFO in Common Logic
* BFO-FOL - An implementation of BFO in First-Order Logic with identity
* BFO-OWL - An implementation of BFO in the Web Ontology Language
* BFO-LADR - An implementation of BFO in the syntax for the Library for Automated Deduction Research codebase, readable by Prover9 and Mace4

## Differences in Logical Strength
Note that BFO-OWL is an approximation to the BFO-FOL and BFO-CL implementations, which are stronger. As an approximation it is incomplete, in the sense that there are potentially provably true OWL axioms that are not part of this version of BFO-OWL. The BFO specification says that any and only OWL axioms that are provable from the BFO-FOL are valid for BFO-OWL. It is intended that BFO-OWL file will become more complete over time.

Users are encouraged to suggest BFO-FOL provable BFO-OWL axioms to our issue tracker https://github.com/BFO-ontology/BFO-2020/issues so that they can be verified and added to future BFO-OWL releases.
