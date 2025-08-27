(cl:comment '
BFO 2020 Axiomatization, generated 2024/01/08
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg(at)gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/spatial.cl

   (cl:outdiscourse instance-of spatially-projects-onto occupies-spatial-region continuant-part-of temporal-part-of exists-at occurrent-part-of location-of located-in environs occurs-in)

  (cl:comment "occurs-in and environs are inverse relations [uys-1]"
    (forall (a b) (iff (occurs-in a b) (environs b a))))


  (cl:comment "located-in and location-of are inverse relations [kaw-1]"
    (forall (t a b) (iff (located-in a b t) (location-of b a t))))


  (cl:comment "occurs-in is dissective on first argumentwhen it is an occurrent [jil-1]"
    (forall (p q r)
     (if (and (occurs-in p q) (occurrent-part-of r p)) (occurs-in r q))))


  (cl:comment "If a process (or process-boundary) occurs in a continuant, that continuant exists at least as long as the process does [dxv-1]"
    (forall (p c)
     (if (occurs-in p c)
      (forall (t) (if (exists-at p t) (exists-at c t))))))


  (cl:comment "located-in is dissective on third argument, a temporal region [put-1]"
    (forall (p q r s)
     (if (and (located-in p q r) (temporal-part-of s r))
      (located-in p q s))))


  (cl:comment "located-in is a lower bound on second argument [evu-1]"
    (forall (p q r s)
     (if (and (located-in p q r) (continuant-part-of q s r))
      (located-in p s r))))


  (cl:comment "located-in is dissective on first argumentwhen it is a continuant [wty-1]"
    (forall (p q r s)
     (if (and (located-in p q r) (continuant-part-of s p r))
      (located-in s q r))))


  (cl:comment "occupies-spatial-region is functional on second argument [zls-1]"
    (forall (p q r s)
     (if
      (and (occupies-spatial-region p q r)
       (occupies-spatial-region p s r))
      (= q s))))


  (cl:comment "occupies-spatial-region is dissective on third argument, a temporal region [mud-1]"
    (forall (p q r s)
     (if (and (occupies-spatial-region p q r) (temporal-part-of s r))
      (occupies-spatial-region p q s))))


  (cl:comment "spatially-projects-onto is dissective on third argument, a temporal region [ivt-1]"
    (forall (p q r s)
     (if (and (spatially-projects-onto p q r) (temporal-part-of s r))
      (spatially-projects-onto p q s))))


  (cl:comment "located-in is transitive at a time [ets-1]"
    (forall (a b c t t2)
     (if
      (and (located-in a b t) (located-in b c t2)
       (temporal-part-of t t2))
      (located-in a c t))))


  (cl:comment "If a location-of b then if a is an instance of continuant-fiat-boundary then b is an instance of continuant-fiat-boundary [wte-1]"
    (forall (p q t)
     (if
      (and (location-of p q t)
       (instance-of p continuant-fiat-boundary t))
      (instance-of q continuant-fiat-boundary t))))


  (cl:comment "All spatial regions are part of a 3-dimensional spatial region [xcx-1]"
    (forall (s t)
     (if (instance-of s spatial-region t)
      (exists (s3)
       (and (instance-of s3 three-dimensional-spatial-region t)
        (continuant-part-of s s3 t))))))


  (cl:comment "occurs-in is lower bound location [czc-1]"
    (forall (p c1 c2)
     (if
      (and (occurs-in p c1)
       (forall (t)
        (iff (exists-at p t)
         (and (exists-at c2 t) (continuant-part-of c1 c2 t)))))
      (occurs-in p c2))))


  (cl:comment "If something is located in something else then the region of the first is part of the region of the second [uas-1]"
    (forall (a b t)
     (if (located-in a b t)
      (exists (r1 r2 t2)
       (and (temporal-part-of t2 t) (occupies-spatial-region a r1 t2)
        (occupies-spatial-region b r2 t2)
        (continuant-part-of r1 r2 t2))))))


  (cl:comment "occurs-in has domain process or process-boundary  and range material-entity or site  [tfw-1]"
    (forall (a b)
     (if (occurs-in a b)
      (and
       (exists (t)
        (or (instance-of a process t)
         (instance-of a process-boundary t)))
       (exists (t)
        (or (instance-of b material-entity t) (instance-of b site t)))))))


  (cl:comment "spatial regions don't change what they are part of. [mlb-1]"
    (forall (s sp)
     (if
      (exists (t)
       (and (instance-of s spatial-region t)
        (continuant-part-of sp s t)))
      (forall (t)
       (if (exists (s-prime) (continuant-part-of s-prime s t))
        (continuant-part-of sp s t))))))


  (cl:comment "occupies-spatial-region is time indexed and has domain: independent-continuant but not spatial-region and range: spatial-region [lzw-1]"
    (forall (a b t)
     (if (occupies-spatial-region a b t)
      (and
       (and (instance-of a independent-continuant t)
        (not (instance-of a spatial-region t)))
       (instance-of b spatial-region t)
       (instance-of t temporal-region t)))))


  (cl:comment "If there are two independent continuants that are not spatial regions, and one is part of the other, then it is located in the other [bao-1]"
    (forall (a b t)
     (if
      (and (continuant-part-of a b t)
       (instance-of a independent-continuant t)
       (not (instance-of a spatial-region t))
       (instance-of b independent-continuant t)
       (not (instance-of b spatial-region t)))
      (located-in a b t))))


  (cl:comment "spatial-region is the union of zero-dimensional-spatial-region, one-dimensional-spatial-region, two-dimensional-spatial-region, and three-dimensional-spatial-region  [wnm-1]"
    (forall (i t)
     (if (instance-of i spatial-region t)
      (or (instance-of i zero-dimensional-spatial-region t)
       (instance-of i one-dimensional-spatial-region t)
       (instance-of i two-dimensional-spatial-region t)
       (instance-of i three-dimensional-spatial-region t)))))


  (cl:comment "No two material entities occupy the same space unless they coincide [scr-1]"
    (forall (m1 m2 s t)
     (if
      (and (instance-of m1 material-entity t)
       (occupies-spatial-region m1 s t)
       (instance-of m2 material-entity t)
       (occupies-spatial-region m2 s t))
      (or (and (continuant-part-of m2 m1 t) (continuant-part-of m1 m2 t))
       (= m1 m2)))))


  (cl:comment "located-in is time indexed and has domain: independent-continuant but not spatial-region and range: independent-continuant but not spatial-region [bge-1]"
    (forall (a b t)
     (if (located-in a b t)
      (and
       (and (instance-of a independent-continuant t)
        (not (instance-of a spatial-region t)))
       (and (instance-of b independent-continuant t)
        (not (instance-of b spatial-region t)))
       (instance-of t temporal-region t)))))


  (cl:comment "at all times t, there's a part of t when c occupies-spatial-region r iff every part of c occupies a part of r, and there isn't a smaller part of r that c occupies. [grv-1]"
    (forall (c r t)
     (if
      (and (instance-of c independent-continuant t)
       (not (instance-of c spatial-region t))
       (instance-of r spatial-region t))
      (exists (t2)
       (and (temporal-part-of t2 t)
        (iff (occupies-spatial-region c r t2)
         (and
          (forall (cp)
           (if (continuant-part-of cp c t2)
            (forall (rp)
             (if (occupies-spatial-region cp rp t2)
              (continuant-part-of rp r t2)))))
          (not
           (exists (rprime)
            (and (not (= rprime r)) (continuant-part-of rprime r t2)
             (occupies-spatial-region c rprime t2)))))))))))

)))