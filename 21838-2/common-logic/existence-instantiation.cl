(cl:comment '
BFO 2020 Axiomatization, generated 2020/07/26
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/existence instantiation.cl

   (cl:outdiscourse continuant-part-of temporal-part-of exists-at particular universal instance-of)

  (cl:comment "1. There is always something that exists"
    (forall (t)
     (if (instance-of t temporal-region t)
      (exists (u i)
       (and (not (= i t)) (universal u) (particular i)
        (instance-of i u t))))))


  (cl:comment "2. If you exist you instatiate a universal and vice-versa"
    (forall (a t)
     (iff
      (exists (u)
       (and (universal u) (instance-of a u t)
        (instance-of t temporal-region t)))
      (and (particular a) (instance-of t temporal-region t)
       (exists-at a t)))))


  (cl:comment "3. Every universal is instantiated at least once"
    (forall (u) (if (universal u) (exists (p t) (instance-of p u t)))))


  (cl:comment "4. if m is a material entity, then there is some one-dimensional temporal region during which m exists"
    (forall (m)
     (if (exists (t) (instance-of m material-entity t))
      (exists (t)
       (and (instance-of t one-dimensional-temporal-region t)
        (exists-at m t))))))


  (cl:comment "5. Relata of instance-of are particular, universal, temporal-region."
    (forall (i u t)
     (if (instance-of i u t)
      (and (particular i) (universal u)
       (instance-of t temporal-region t)))))


  (cl:comment "6. Particulars exist at some time"
    (forall (p) (if (particular p) (exists (t) (exists-at p t)))))


  (cl:comment "7. instance-of is dissective on third argument, a temporal region"
    (forall (p q r s)
     (if (and (instance-of p q r) (temporal-part-of s r))
      (instance-of p q s))))


  (cl:comment "8. exists-at is dissective on first argumentwhen it is a continuant"
    (forall (p q r)
     (if (and (exists-at p q) (continuant-part-of r p q))
      (exists-at r q))))


  (cl:comment "9. Relata of exists-at are particulars."
    (forall (i t)
     (if (exists-at i t)
      (and (particular i) (particular t)
       (instance-of t temporal-region t)))))

)))