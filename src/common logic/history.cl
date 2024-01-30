(cl:comment '
BFO 2020 Axiomatization, generated 2024/01/08
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg(at)gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/history.cl

   (cl:outdiscourse participates-in exists-at instance-of has-history history-of)

  (cl:comment "history-of and has-history are inverse relations [abx-1]"
    (forall (a b) (iff (history-of a b) (has-history b a))))


  (cl:comment "history-of is functional on second argument [zek-1]"
    (forall (p q r) (if (and (history-of p q) (history-of p r)) (= q r))))


  (cl:comment "history-of is functional on first argument [woe-1]"
    (forall (p q r) (if (and (history-of p q) (history-of r q)) (= p r))))


  (cl:comment "every history is the history of something [vvy-1]"
    (forall (h)
     (if (exists (t) (instance-of h history t))
      (exists (m) (history-of h m)))))


  (cl:comment "every material-entity has a history [okt-1]"
    (forall (m)
     (if (exists (t) (instance-of m material-entity t))
      (exists (h) (history-of h m)))))


  (cl:comment "a material entity participates in its history [lga-1]"
    (forall (h m)
     (if (history-of h m)
      (forall (t) (if (exists-at m t) (participates-in m h t))))))


  (cl:comment "material entity and its history exist at exactly the same times [uzz-1]"
    (forall (m h)
     (if (history-of h m)
      (forall (t)
       (iff (instance-of m material-entity t)
        (instance-of h history t))))))


  (cl:comment "history-of has domain history and range material-entity [rph-1]"
    (forall (a b)
     (if (history-of a b)
      (and (exists (t) (instance-of a history t))
       (exists (t) (instance-of b material-entity t))))))

)))