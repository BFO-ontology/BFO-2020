(cl:comment '
BFO 2020 Axiomatization, generated 2024/01/08
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg(at)gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/material-entity.cl

   (cl:outdiscourse generically-depends-on specifically-depends-on continuant-part-of proper-continuant-part-of instance-of temporal-part-of has-member-part member-part-of)

  (cl:comment "member-part-of and has-member-part are inverse relations [jrm-1]"
    (forall (t a b) (iff (member-part-of a b t) (has-member-part b a t))))


  (cl:comment "member-part-of is dissective on third argument, a temporal region [yip-1]"
    (forall (p q r s)
     (if (and (member-part-of p q r) (temporal-part-of s r))
      (member-part-of p q s))))


  (cl:comment "An object aggregate always has at least one member [uhs-1]"
    (forall (ag t)
     (if (instance-of ag object-aggregate t)
      (exists (o1)
       (and (instance-of o1 object t) (member-part-of o1 ag t))))))


  (cl:comment "member-part-of is time indexed and has domain: object and range: object-aggregate [dvq-1]"
    (forall (a b t)
     (if (member-part-of a b t)
      (and (instance-of a object t) (instance-of b object-aggregate t)
       (instance-of t temporal-region t)))))


  (cl:comment "A fiat object part =def a proper part of an object [yir-1]"
    (forall (f t)
     (iff (instance-of f fiat-object-part t)
      (exists (o)
       (and (instance-of o object t) (proper-continuant-part-of f o t)
        (not (instance-of f immaterial-entity t)))))))


  (cl:comment "i is an immaterial entity = Def. i is an independent continuant that has no material entities as parts. [udu-1]"
    (forall (i t)
     (iff (instance-of i immaterial-entity t)
      (and (instance-of i independent-continuant t)
       (not
        (exists (m)
         (and (instance-of m material-entity t)
          (continuant-part-of m i t))))))))


  (cl:comment "Any continuant that doesn't s-depend or g-depend on something is an independant continuant [ilw-1]"
    (forall (c1)
     (iff (exists (t) (instance-of c1 independent-continuant t))
      (and (exists (t) (instance-of c1 continuant t))
       (not
        (exists (c2 t)
         (or (specifically-depends-on c1 c2)
          (generically-depends-on c1 c2 t))))))))


  (cl:comment "An object aggregate has more than one member at at least one time [ibd-1]"
    (forall (ag)
     (if (exists (t) (instance-of ag object-aggregate t))
      (exists (o1 o2 t)
       (and (not (= o1 o2)) (instance-of o1 object t)
        (member-part-of o1 ag t) (instance-of o2 object t)
        (member-part-of o2 ag t))))))


  (cl:comment "all parts of an aggregate overlap some member [fsy-1]"
    (forall (t b x)
     (if
      (and (proper-continuant-part-of x b t)
       (instance-of b object-aggregate t))
      (exists (o)
       (and (member-part-of o b t)
        (exists (z)
         (and (continuant-part-of z x t) (continuant-part-of z o t))))))))


  (cl:comment "If a material entity has a proper part, then at least one of its proper parts is not an immaterial entity [adm-1]"
    (forall (m t)
     (if
      (and (instance-of m material-entity t)
       (exists (mp) (and (continuant-part-of mp m t) (not (= mp m)))))
      (exists (mp)
       (and (not (= mp m)) (continuant-part-of mp m t)
        (not (instance-of mp immaterial-entity t)))))))


  (cl:comment "An object aggregate has member parts only disjoint objects [evk-1]"
    (forall (b c t)
     (iff (member-part-of b c t)
      (and (instance-of b object t) (instance-of c object-aggregate t)
       (proper-continuant-part-of b c t)
       (forall (d)
        (if (member-part-of d c t)
         (or (= b d)
          (not
           (exists (z)
            (and (continuant-part-of z b t)
             (continuant-part-of z d t)))))))))))

)))