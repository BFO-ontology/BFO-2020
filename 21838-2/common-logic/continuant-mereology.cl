(cl:comment '
BFO 2020 Axiomatization, generated 2020/07/26
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/continuant mereology.cl

   (cl:outdiscourse exists-at located-in temporal-part-of has-proper-continuant-part continuant-part-of proper-continuant-part-of instance-of has-continuant-part)

  (cl:comment "1. If a has-continuant-part b then if a is an instance of continuant-fiat-boundary then b is an instance of continuant-fiat-boundary"
    (forall (p q t)
     (if
      (and (has-continuant-part p q t)
       (instance-of p continuant-fiat-boundary t))
      (instance-of q continuant-fiat-boundary t))))


  (cl:comment "2. x proper continuant part of y means x is a continuant part of y but y is not continuant part of x"
    (forall (x y t)
     (iff (proper-continuant-part-of x y t)
      (and (continuant-part-of x y t) (not (continuant-part-of y x t))))))


  (cl:comment "3. proper-continuant-part-of and has-proper-continuant-part are inverse relations"
    (forall (t a b)
     (iff (proper-continuant-part-of a b t)
      (has-proper-continuant-part b a t))))


  (cl:comment "4. If a has-continuant-part b then if a is an instance of fiat-point then b is an instance of fiat-point"
    (forall (p q t)
     (if (and (has-continuant-part p q t) (instance-of p fiat-point t))
      (instance-of q fiat-point t))))


  (cl:comment "5. If a continuant-part-of b then if a is an instance of independent-continuant then b is an instance of independent-continuant, and vice-versa"
    (forall (p q t)
     (if (continuant-part-of p q t)
      (iff (instance-of p independent-continuant t)
       (and (instance-of q independent-continuant t))))))


  (cl:comment "6. If a has-continuant-part b then if a is an instance of two-dimensional-spatial-region then b is an instance of two-dimensional-spatial-region or one-dimensional-spatial-region or zero-dimensional-spatial-region "
    (forall (p q t)
     (if
      (and (has-continuant-part p q t)
       (instance-of p two-dimensional-spatial-region t))
      (or (instance-of q two-dimensional-spatial-region t)
       (instance-of q one-dimensional-spatial-region t)
       (instance-of q zero-dimensional-spatial-region t)))))


  (cl:comment "7. If a has-continuant-part b then if a is an instance of zero-dimensional-spatial-region then b is an instance of zero-dimensional-spatial-region"
    (forall (p q t)
     (if
      (and (has-continuant-part p q t)
       (instance-of p zero-dimensional-spatial-region t))
      (instance-of q zero-dimensional-spatial-region t))))


  (cl:comment "8. If a continuant-part-of b then if a is an instance of spatial-region then b is an instance of spatial-region, and vice-versa"
    (forall (p q t)
     (if (continuant-part-of p q t)
      (iff (instance-of p spatial-region t)
       (and (instance-of q spatial-region t))))))


  (cl:comment "9. continuant-part-of has a unique product at a time"
    (forall (x y t)
     (if
      (and (instance-of x continuant t) (instance-of y continuant t)
       (instance-of t temporal-region t))
      (if
       (exists (overlap)
        (and (instance-of overlap continuant t)
         (continuant-part-of overlap x t)
         (continuant-part-of overlap y t)))
       (exists (overlap)
        (and (instance-of overlap continuant t)
         (forall (w)
          (if (instance-of w continuant t)
           (iff (continuant-part-of w overlap t)
            (and (continuant-part-of w x t)
             (continuant-part-of w y t)))))))))))


  (cl:comment "10. proper-continuant-part-of is time indexed and has domain: continuant and range: continuant"
    (forall (a b t)
     (if (proper-continuant-part-of a b t)
      (and (instance-of a continuant t) (instance-of b continuant t)
       (instance-of t temporal-region t)))))


  (cl:comment "11. If a has-continuant-part b then if a is an instance of one-dimensional-spatial-region then b is an instance of one-dimensional-spatial-region or zero-dimensional-spatial-region "
    (forall (p q t)
     (if
      (and (has-continuant-part p q t)
       (instance-of p one-dimensional-spatial-region t))
      (or (instance-of q one-dimensional-spatial-region t)
       (instance-of q zero-dimensional-spatial-region t)))))


  (cl:comment "12. If a continuant-part-of b then if a is an instance of site then b is an instance of site or material-entity "
    (forall (p q t)
     (if (and (continuant-part-of p q t) (instance-of p site t))
      (or (instance-of q site t) (instance-of q material-entity t)))))


  (cl:comment "13. continuant-part-of is reflexive at a time"
    (forall (a t)
     (if (instance-of a independent-continuant t)
      (continuant-part-of a a t))))


  (cl:comment "14. If a has-continuant-part b then if a is an instance of fiat-line then b is an instance of fiat-line or fiat-point "
    (forall (p q t)
     (if (and (has-continuant-part p q t) (instance-of p fiat-line t))
      (or (instance-of q fiat-line t) (instance-of q fiat-point t)))))


  (cl:comment "15. If a material entity has a proper part, then at least one of its proper parts is not a material entity"
    (forall (m t)
     (if
      (and (instance-of m material-entity t)
       (exists (mp) (and (continuant-part-of mp m t) (not (= mp m)))))
      (exists (mp)
       (and (not (= mp m)) (continuant-part-of mp m t)
        (not (instance-of mp immaterial-entity t)))))))


  (cl:comment "16. continuant-part-of has weak supplementation"
    (forall (t x y)
     (if
      (and (instance-of x continuant t) (instance-of y continuant t)
       (instance-of t temporal-region t))
      (if (and (continuant-part-of x y t) (not (= x y)))
       (exists (z)
        (and (instance-of z continuant t) (continuant-part-of z y t)
         (not (= z y))
         (not
          (exists (overlap)
           (and (instance-of overlap continuant t)
            (continuant-part-of overlap x t)
            (continuant-part-of overlap z t))))))))))


  (cl:comment "17. continuant-part-of is transitive at a time"
    (forall (a b c t t2)
     (if
      (and (continuant-part-of a b t) (continuant-part-of b c t2)
       (temporal-part-of t t2))
      (continuant-part-of a c t))))


  (cl:comment "18. proper-continuant-part-of is transitive at a time"
    (forall (a b c t t2)
     (if
      (and (proper-continuant-part-of a b t)
       (proper-continuant-part-of b c t2) (temporal-part-of t t2))
      (proper-continuant-part-of a c t))))


  (cl:comment "19. If at any time that two non-object aggreates exist each is part of the other, then they are identical"
    (forall (a b)
     (if
      (exists (t)
       (and (instance-of a independent-continuant t)
        (not (instance-of a object-aggregate t))
        (instance-of b independent-continuant t)
        (not (instance-of b object-aggregate t))
        (continuant-part-of a b t) (continuant-part-of b a t)))
      (= a b))))


  (cl:comment "20. If a has-continuant-part b then if a is an instance of fiat-surface then b is an instance of continuant-fiat-boundary"
    (forall (p q t)
     (if (and (has-continuant-part p q t) (instance-of p fiat-surface t))
      (instance-of q continuant-fiat-boundary t))))


  (cl:comment "21. If at all times that two object-aggreates exist each is part of the other, then they are identical"
    (forall (a b)
     (if
      (and
       (exists (t)
        (and (instance-of a object-aggregate t)
         (continuant-part-of a b t) (continuant-part-of b a t)))
       (forall (t)
        (iff (continuant-part-of a b t) (continuant-part-of b a t))))
      (= a b))))


  (cl:comment "22. If a has-continuant-part b then if a is an instance of three-dimensional-spatial-region then b is an instance of spatial-region"
    (forall (p q t)
     (if
      (and (has-continuant-part p q t)
       (instance-of p three-dimensional-spatial-region t))
      (instance-of q spatial-region t))))


  (cl:comment "23. If a has-continuant-part b then if a is an instance of material-entity then b is an instance of site or continuant-fiat-boundary or material-entity "
    (forall (p q t)
     (if
      (and (has-continuant-part p q t) (instance-of p material-entity t))
      (or (instance-of q site t)
       (instance-of q continuant-fiat-boundary t)
       (instance-of q material-entity t)))))


  (cl:comment "24. If a has-continuant-part b then if a is an instance of site then b is an instance of site or continuant-fiat-boundary "
    (forall (p q t)
     (if (and (has-continuant-part p q t) (instance-of p site t))
      (or (instance-of q site t)
       (instance-of q continuant-fiat-boundary t)))))


  (cl:comment "25. continuant-part-of and has-continuant-part are inverse relations"
    (forall (t a b)
     (iff (continuant-part-of a b t) (has-continuant-part b a t))))


  (cl:comment "26. continuant-part-of is dissective on third argument, a temporal region"
    (forall (p q r s)
     (if (and (continuant-part-of p q r) (temporal-part-of s r))
      (continuant-part-of p q s))))


  (cl:comment "27. If a continuant-part-of b then if a is an instance of material-entity then b is an instance of material-entity"
    (forall (p q t)
     (if
      (and (continuant-part-of p q t) (instance-of p material-entity t))
      (instance-of q material-entity t))))


  (cl:comment "28. continuant-part-of is time indexed and has domain: continuant and range: continuant"
    (forall (a b t)
     (if (continuant-part-of a b t)
      (and (instance-of a continuant t) (instance-of b continuant t)
       (instance-of t temporal-region t)))))


  (cl:comment "29. If x,y are both part of a whole w, then if x is located in y it is part of y, if y is located in x it is part of w"
    (forall (x y t)
     (if
      (exists (w)
       (and (continuant-part-of x w t) (continuant-part-of y w t)))
      (and (if (located-in x y t) (continuant-part-of x y t))
       (if (located-in y x t) (continuant-part-of y x t))))))


  (cl:comment "30. exists-at is dissective on first argumentwhen it is a continuant"
    (forall (p q r)
     (if (and (exists-at p q) (continuant-part-of r p q))
      (exists-at r q))))


  (cl:comment "31. proper-continuant-part-of is dissective on third argument, a temporal region"
    (forall (p q r s)
     (if (and (proper-continuant-part-of p q r) (temporal-part-of s r))
      (proper-continuant-part-of p q s))))

)))