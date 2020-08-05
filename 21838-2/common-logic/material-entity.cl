(cl:comment '
BFO 2020 Axiomatization, generated 2020/07/26
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/material entity.cl

   (cl:outdiscourse has-member-part temporal-part-of proper-continuant-part-of member-part-of generically-depends-on specifically-depends-on continuant-part-of instance-of)

  (cl:comment "1. If a material entity has a proper part, then at least one of its proper parts is not a material entity"
    (forall (m t)
     (if
      (and (instance-of m material-entity t)
       (exists (mp) (and (continuant-part-of mp m t) (not (= mp m)))))
      (exists (mp)
       (and (not (= mp m)) (continuant-part-of mp m t)
        (not (instance-of mp immaterial-entity t)))))))


  (cl:comment "2. Any continuant that doesn't s-depend or g-depend on something is an independant continuant"
    (forall (c1)
     (iff (exists (t) (instance-of c1 independent-continuant t))
      (and (exists (t) (instance-of c1 continuant t))
       (not
        (exists (c2 t)
         (or (specifically-depends-on c1 c2)
          (generically-depends-on c1 c2 t))))))))


  (cl:comment "3. An object aggregate always has at least one member"
    (forall (ag t)
     (if (instance-of ag object-aggregate t)
      (exists (o1)
       (and (instance-of o1 object t) (member-part-of o1 ag t))))))


  (cl:comment "4. all parts of an aggregate overlap some member"
    (forall (t b x)
     (if
      (and (proper-continuant-part-of x b t)
       (instance-of b object-aggregate t))
      (exists (o)
       (and (member-part-of o b t)
        (exists (z)
         (and (continuant-part-of z x t) (continuant-part-of z o t))))))))


  (cl:comment "5. member-part-of is dissective on third argument, a temporal region"
    (forall (p q r s)
     (if (and (member-part-of p q r) (temporal-part-of s r))
      (member-part-of p q s))))


  (cl:comment "6. member-part-of and has-member-part are inverse relations"
    (forall (t a b) (iff (member-part-of a b t) (has-member-part b a t))))


  (cl:comment "7. member-part-of is time indexed and has domain: object and range: object-aggregate"
    (forall (a b t)
     (if (member-part-of a b t)
      (and (instance-of a object t) (instance-of b object-aggregate t)
       (instance-of t temporal-region t)))))


  (cl:comment "8. An object aggregate has more than one member at at least one time"
    (forall (ag)
     (if (exists (t) (instance-of ag object-aggregate t))
      (exists (o1 o2 t)
       (and (not (= o1 o2)) (instance-of o1 object t)
        (member-part-of o1 ag t) (instance-of o2 object t)
        (member-part-of o2 ag t))))))


  (cl:comment "9. An object aggregate has member parts only disjoint objects"
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


  (cl:comment "10. i is an immaterial entity = Def. i is an independent continuant that has no material entities as parts."
    (forall (i t)
     (iff (instance-of i immaterial-entity t)
      (and (instance-of i independent-continuant t)
       (not
        (exists (m)
         (and (instance-of m material-entity t)
          (continuant-part-of m i t))))))))


  (cl:comment "11. A fiat object part =def a proper part of an object"
    (forall (f t)
     (iff (instance-of f fiat-object-part t)
      (exists (o)
       (and (instance-of o object t) (proper-continuant-part-of f o t)
        (not (instance-of f immaterial-entity t)))))))

)))