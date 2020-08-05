(cl:comment '
BFO 2020 Axiomatization, generated 2020/07/26
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/history.cl

   (cl:outdiscourse has-history participates-in exists-at history-of instance-of)

  (cl:comment "1. every history is of a material entity"
    (forall (h)
     (if (exists (t) (instance-of h history t))
      (exists (m) (history-of h m)))))


  (cl:comment "2. a material entity particates in its history"
    (forall (h m)
     (if (history-of h m)
      (forall (t) (if (exists-at m t) (participates-in m h t))))))


  (cl:comment "3. material entity and its history exist at exactly the same times"
    (forall (m h)
     (if (history-of h m)
      (forall (t)
       (iff (instance-of m material-entity t)
        (instance-of h history t))))))


  (cl:comment "4. history-of is functional on second argument"
    (forall (p q r) (if (and (history-of p q) (history-of p r)) (= q r))))


  (cl:comment "5. history-of and has-history are inverse relations"
    (forall (a b) (iff (history-of a b) (has-history b a))))


  (cl:comment "6. history-of is functional on first argument"
    (forall (p q r) (if (and (history-of p q) (history-of r q)) (= p r))))


  (cl:comment "7. history-of has domain history and range material-entity"
    (forall (a b)
     (if (history-of a b)
      (and (exists (t) (instance-of a history t))
       (exists (t) (instance-of b material-entity t))))))


  (cl:comment "8. every material-entity has a history"
    (forall (m)
     (if (exists (t) (instance-of m material-entity t))
      (exists (h) (history-of h m)))))

)))