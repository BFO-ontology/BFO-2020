(cl:comment '
BFO 2020 Axiomatization, generated 2024/01/08
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg(at)gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/continuant-mereology.cl

   (cl:outdiscourse occupies-spatial-region temporal-part-of exists-at has-proper-continuant-part proper-continuant-part-of instance-of has-continuant-part continuant-part-of)

  (cl:comment "continuant-part-of and has-continuant-part are inverse relations [eld-1]"
    (forall (t a b)
     (iff (continuant-part-of a b t) (has-continuant-part b a t))))


  (cl:comment "continuant-part-of is reflexive at a time [mcd-1]"
    (forall (a t)
     (if (instance-of a independent-continuant t)
      (continuant-part-of a a t))))


  (cl:comment "proper-continuant-part-of and has-proper-continuant-part are inverse relations [hpm-1]"
    (forall (t a b)
     (iff (proper-continuant-part-of a b t)
      (has-proper-continuant-part b a t))))


  (cl:comment "exists-at is dissective on first argumentwhen it is a continuant [uns-1]"
    (forall (p q r)
     (if (and (exists-at p q) (continuant-part-of r p q))
      (exists-at r q))))


  (cl:comment "A fiat point has no parts other than itself [jgo-1]"
    (forall (fp t p)
     (if (and (instance-of fp fiat-point t) (continuant-part-of p fp t))
      (= p fp))))


  (cl:comment "continuant-part-of is dissective on third argument, a temporal region [mqp-1]"
    (forall (p q r s)
     (if (and (continuant-part-of p q r) (temporal-part-of s r))
      (continuant-part-of p q s))))


  (cl:comment "If a has-continuant-part b then if a is an instance of fiat-point then b is an instance of fiat-point [jqd-1]"
    (forall (p q t)
     (if (and (has-continuant-part p q t) (instance-of p fiat-point t))
      (instance-of q fiat-point t))))


  (cl:comment "x proper continuant part of y means x is a continuant part of y but y is not continuant part of x [sls-1]"
    (forall (x y t)
     (iff (proper-continuant-part-of x y t)
      (and (continuant-part-of x y t) (not (continuant-part-of y x t))))))


  (cl:comment "proper-continuant-part-of is dissective on third argument, a temporal region [vjv-1]"
    (forall (p q r s)
     (if (and (proper-continuant-part-of p q r) (temporal-part-of s r))
      (proper-continuant-part-of p q s))))


  (cl:comment "If a continuant-part-of b then if a is an instance of material-entity then b is an instance of material-entity [dok-1]"
    (forall (p q t)
     (if
      (and (continuant-part-of p q t) (instance-of p material-entity t))
      (instance-of q material-entity t))))


  (cl:comment "If a continuant-part-of b then if a is an instance of spatial-region then b is an instance of spatial-region, and vice-versa [kbr-1]"
    (forall (p q t)
     (if (continuant-part-of p q t)
      (iff (instance-of p spatial-region t)
       (and (instance-of q spatial-region t))))))


  (cl:comment "If a has-continuant-part b then if a is an instance of fiat-surface then b is an instance of continuant-fiat-boundary [ysp-1]"
    (forall (p q t)
     (if (and (has-continuant-part p q t) (instance-of p fiat-surface t))
      (instance-of q continuant-fiat-boundary t))))


  (cl:comment "If a has-continuant-part b then if a is an instance of three-dimensional-spatial-region then b is an instance of spatial-region [fzg-1]"
    (forall (p q t)
     (if
      (and (has-continuant-part p q t)
       (instance-of p three-dimensional-spatial-region t))
      (instance-of q spatial-region t))))


  (cl:comment "If a has-continuant-part b then if a is an instance of continuant-fiat-boundary then b is an instance of continuant-fiat-boundary [ixo-1]"
    (forall (p q t)
     (if
      (and (has-continuant-part p q t)
       (instance-of p continuant-fiat-boundary t))
      (instance-of q continuant-fiat-boundary t))))


  (cl:comment "If a continuant-part-of b then if a is an instance of site then b is an instance of site or material-entity  [izr-1]"
    (forall (p q t)
     (if (and (continuant-part-of p q t) (instance-of p site t))
      (or (instance-of q site t) (instance-of q material-entity t)))))


  (cl:comment "If a continuant-part-of b then if a is an instance of independent-continuant then b is an instance of independent-continuant, and vice-versa [cez-1]"
    (forall (p q t)
     (if (continuant-part-of p q t)
      (iff (instance-of p independent-continuant t)
       (and (instance-of q independent-continuant t))))))


  (cl:comment "continuant-part-of is transitive at a time [plp-1]"
    (forall (a b c t t2)
     (if
      (and (continuant-part-of a b t) (continuant-part-of b c t2)
       (temporal-part-of t t2))
      (continuant-part-of a c t))))


  (cl:comment "continuant-part-of is time indexed and has domain: continuant and range: continuant [bdd-1]"
    (forall (a b t)
     (if (continuant-part-of a b t)
      (and (instance-of a continuant t) (instance-of b continuant t)
       (instance-of t temporal-region t)))))


  (cl:comment "If a has-continuant-part b then if a is an instance of fiat-line then b is an instance of fiat-line or fiat-point  [cwp-1]"
    (forall (p q t)
     (if (and (has-continuant-part p q t) (instance-of p fiat-line t))
      (or (instance-of q fiat-line t) (instance-of q fiat-point t)))))


  (cl:comment "If a has-continuant-part b then if a is an instance of site then b is an instance of site or continuant-fiat-boundary  [mjj-1]"
    (forall (p q t)
     (if (and (has-continuant-part p q t) (instance-of p site t))
      (or (instance-of q site t)
       (instance-of q continuant-fiat-boundary t)))))


  (cl:comment "proper-continuant-part-of is time indexed and has domain: continuant and range: continuant [kte-1]"
    (forall (a b t)
     (if (proper-continuant-part-of a b t)
      (and (instance-of a continuant t) (instance-of b continuant t)
       (instance-of t temporal-region t)))))


  (cl:comment "If a has-continuant-part b then if a is an instance of zero-dimensional-spatial-region then b is an instance of zero-dimensional-spatial-region [bfv-1]"
    (forall (p q t)
     (if
      (and (has-continuant-part p q t)
       (instance-of p zero-dimensional-spatial-region t))
      (instance-of q zero-dimensional-spatial-region t))))


  (cl:comment "proper-continuant-part-of is transitive at a time [xpg-1]"
    (forall (a b c t t2)
     (if
      (and (proper-continuant-part-of a b t)
       (proper-continuant-part-of b c t2) (temporal-part-of t t2))
      (proper-continuant-part-of a c t))))


  (cl:comment "A fiat line occupies a one-dimensional spatial region [kcq-1]"
    (forall (x t)
     (if (instance-of x fiat-line t)
      (exists (s tp)
       (and (temporal-part-of tp t) (occupies-spatial-region x s tp)
        (instance-of s one-dimensional-spatial-region tp))))))


  (cl:comment "A fiat point occupies a zero-dimensional spatial region [alm-1]"
    (forall (x t)
     (if (instance-of x fiat-point t)
      (exists (tp s)
       (and (temporal-part-of tp t) (occupies-spatial-region x s tp)
        (instance-of s zero-dimensional-spatial-region tp))))))


  (cl:comment "A fiat surface occupies a two-dimensional spatial region [fpl-1]"
    (forall (x t)
     (if (instance-of x fiat-surface t)
      (exists (s tp)
       (and (temporal-part-of tp t) (occupies-spatial-region x s tp)
        (instance-of s two-dimensional-spatial-region tp))))))


  (cl:comment "If a has-continuant-part b then if a is an instance of material-entity then b is an instance of site or continuant-fiat-boundary or material-entity  [mic-1]"
    (forall (p q t)
     (if
      (and (has-continuant-part p q t) (instance-of p material-entity t))
      (or (instance-of q site t)
       (instance-of q continuant-fiat-boundary t)
       (instance-of q material-entity t)))))


  (cl:comment "If a has-continuant-part b then if a is an instance of one-dimensional-spatial-region then b is an instance of one-dimensional-spatial-region or zero-dimensional-spatial-region  [wne-1]"
    (forall (p q t)
     (if
      (and (has-continuant-part p q t)
       (instance-of p one-dimensional-spatial-region t))
      (or (instance-of q one-dimensional-spatial-region t)
       (instance-of q zero-dimensional-spatial-region t)))))


  (cl:comment "If at all times that two object-aggreates exist each is part of the other, then they are identical [glc-1]"
    (forall (a b)
     (if
      (and
       (exists (t)
        (and (instance-of a object-aggregate t)
         (continuant-part-of a b t) (continuant-part-of b a t)))
       (forall (t)
        (iff (continuant-part-of a b t) (continuant-part-of b a t))))
      (= a b))))


  (cl:comment "The dimensionality of the region of something occupying a one dimensional spatial region does not change [qfe-1]"
    (forall (m s)
     (if
      (exists (t)
       (and (occupies-spatial-region m s t)
        (instance-of s one-dimensional-spatial-region t)))
      (forall (t1 s1)
       (if (occupies-spatial-region m s1 t1)
        (instance-of s1 one-dimensional-spatial-region t1))))))


  (cl:comment "The dimensionality of the region of something occupying a two dimensional spatial region does not change [dor-1]"
    (forall (m s)
     (if
      (exists (t)
       (and (occupies-spatial-region m s t)
        (instance-of s two-dimensional-spatial-region t)))
      (forall (t1 s1)
       (if (occupies-spatial-region m s1 t1)
        (instance-of s1 two-dimensional-spatial-region t1))))))


  (cl:comment "The dimensionality of the region of something occupying a zero dimensional spatial region does not change [fok-1]"
    (forall (m s)
     (if
      (exists (t)
       (and (occupies-spatial-region m s t)
        (instance-of s zero-dimensional-spatial-region t)))
      (forall (t1 s1)
       (if (occupies-spatial-region m s1 t1)
        (instance-of s1 zero-dimensional-spatial-region t1))))))


  (cl:comment "The dimensionality of the region of something occupying a three dimensional spatial region does not change [rlf-1]"
    (forall (m s)
     (if
      (exists (t)
       (and (occupies-spatial-region m s t)
        (instance-of s three-dimensional-spatial-region t)))
      (forall (t1 s1)
       (if (occupies-spatial-region m s1 t1)
        (instance-of s1 three-dimensional-spatial-region t1))))))


  (cl:comment "If a material entity has a proper part, then at least one of its proper parts is not an immaterial entity [adm-1]"
    (forall (m t)
     (if
      (and (instance-of m material-entity t)
       (exists (mp) (and (continuant-part-of mp m t) (not (= mp m)))))
      (exists (mp)
       (and (not (= mp m)) (continuant-part-of mp m t)
        (not (instance-of mp immaterial-entity t)))))))


  (cl:comment "If a has-continuant-part b then if a is an instance of two-dimensional-spatial-region then b is an instance of two-dimensional-spatial-region or one-dimensional-spatial-region or zero-dimensional-spatial-region  [hbn-1]"
    (forall (p q t)
     (if
      (and (has-continuant-part p q t)
       (instance-of p two-dimensional-spatial-region t))
      (or (instance-of q two-dimensional-spatial-region t)
       (instance-of q one-dimensional-spatial-region t)
       (instance-of q zero-dimensional-spatial-region t)))))


  (cl:comment "If at any time that two non-object aggreates exist each is part of the other, then they are identical [tab-1]"
    (forall (a b)
     (if
      (exists (t)
       (and (instance-of a independent-continuant t)
        (not (instance-of a object-aggregate t))
        (instance-of b independent-continuant t)
        (not (instance-of b object-aggregate t))
        (continuant-part-of a b t) (continuant-part-of b a t)))
      (= a b))))


  (cl:comment "continuant-part-of has weak supplementation [fyf-1]"
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


  (cl:comment "continuant-part-of has a unique product at a time [gzr-1]"
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

)))