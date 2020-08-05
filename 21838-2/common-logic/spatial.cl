(cl:comment '
BFO 2020 Axiomatization, generated 2020/07/26
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/spatial.cl

   (cl:outdiscourse environs spatially-projects-onto occurrent-part-of location-of exists-at occurs-in temporal-part-of occupies-spatial-region located-in instance-of continuant-part-of)

  (cl:comment "1. If there are two independent continuants that are not spatial regions, and one is part of the other, then it is located in the other"
    (forall (a b t)
     (if
      (and (continuant-part-of a b t)
       (instance-of a independent-continuant t)
       (not (instance-of a spatial-region t))
       (instance-of b independent-continuant t)
       (not (instance-of b spatial-region t)))
      (located-in a b t))))


  (cl:comment "2. occupies-spatial-region is dissective on third argument, a temporal region"
    (forall (p q r s)
     (if (and (occupies-spatial-region p q r) (temporal-part-of s r))
      (occupies-spatial-region p q s))))


  (cl:comment "3. occurs-in has domain process or process-boundary  and range material-entity or site "
    (forall (a b)
     (if (occurs-in a b)
      (and
       (exists (t)
        (or (instance-of a process t)
         (instance-of a process-boundary t)))
       (exists (t)
        (or (instance-of b material-entity t) (instance-of b site t)))))))


  (cl:comment "4. occurs-in is lower bound location"
    (forall (p c1 c2)
     (if
      (and (occurs-in p c1)
       (forall (t)
        (iff (exists-at p t)
         (and (exists-at c2 t) (continuant-part-of c1 c2 t)))))
      (occurs-in p c2))))


  (cl:comment "5. If a process (or process-boundary) occurs in a continuant, that continuant exists at least as long as the process does"
    (forall (p c)
     (if (occurs-in p c)
      (forall (t) (if (exists-at p t) (exists-at c t))))))


  (cl:comment "6. located-in is transitive at a time"
    (forall (a b c t t2)
     (if
      (and (located-in a b t) (located-in b c t2)
       (temporal-part-of t t2))
      (located-in a c t))))


  (cl:comment "7. located-in is a lower bound on second argument"
    (forall (p q r s)
     (if (and (located-in p q r) (continuant-part-of q s r))
      (located-in p s r))))


  (cl:comment "8. located-in and location-of are inverse relations"
    (forall (t a b) (iff (located-in a b t) (location-of b a t))))


  (cl:comment "9. occurs-in is dissective on first argumentwhen it is an occurrent"
    (forall (p q r)
     (if (and (occurs-in p q) (occurrent-part-of r p)) (occurs-in r q))))


  (cl:comment "10. at all times t, there's a part of t when c occupies-spatial-region r iff every part of c occupies a part of r, and there isn't a smaller part of r that c occupies."
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


  (cl:comment "11. located-in is time indexed and has domain: independent-continuant but not spatial-region and range: independent-continuant but not spatial-region"
    (forall (a b t)
     (if (located-in a b t)
      (and
       (and (instance-of a independent-continuant t)
        (not (instance-of a spatial-region t)))
       (and (instance-of b independent-continuant t)
        (not (instance-of b spatial-region t)))
       (instance-of t temporal-region t)))))


  (cl:comment "12. If something is located in something else then the region of the first is part of the region of the second"
    (forall (a b t)
     (if (located-in a b t)
      (exists (r1 r2 t2)
       (and (temporal-part-of t2 t) (occupies-spatial-region a r1 t2)
        (occupies-spatial-region b r2 t2)
        (continuant-part-of r1 r2 t2))))))


  (cl:comment "13. located-in is dissective on third argument, a temporal region"
    (forall (p q r s)
     (if (and (located-in p q r) (temporal-part-of s r))
      (located-in p q s))))


  (cl:comment "14. spatial regions don't change what they are part of."
    (forall (s sp)
     (if
      (exists (t)
       (and (instance-of s spatial-region t)
        (continuant-part-of sp s t)))
      (forall (t)
       (if (exists (s-prime) (continuant-part-of s-prime s t))
        (continuant-part-of sp s t))))))


  (cl:comment "15. spatially-projects-onto is dissective on third argument, a temporal region"
    (forall (p q r s)
     (if (and (spatially-projects-onto p q r) (temporal-part-of s r))
      (spatially-projects-onto p q s))))


  (cl:comment "16. No two material entities occupy the same space unless they coincide"
    (forall (m1 m2 s t)
     (if
      (and (instance-of m1 material-entity t)
       (occupies-spatial-region m1 s t)
       (instance-of m2 material-entity t)
       (occupies-spatial-region m2 s t))
      (or (and (continuant-part-of m2 m1 t) (continuant-part-of m1 m2 t))
       (= m1 m2)))))


  (cl:comment "17. located-in is dissective on first argumentwhen it is a continuant"
    (forall (p q r s)
     (if (and (located-in p q r) (continuant-part-of s p r))
      (located-in s q r))))


  (cl:comment "18. occurs-in and environs are inverse relations"
    (forall (a b) (iff (occurs-in a b) (environs b a))))


  (cl:comment "19. If a location-of b then if a is an instance of continuant-fiat-boundary then b is an instance of continuant-fiat-boundary"
    (forall (p q t)
     (if
      (and (location-of p q t)
       (instance-of p continuant-fiat-boundary t))
      (instance-of q continuant-fiat-boundary t))))


  (cl:comment "20. occupies-spatial-region is time indexed and has domain: independent-continuant but not spatial-region and range: spatial-region"
    (forall (a b t)
     (if (occupies-spatial-region a b t)
      (and
       (and (instance-of a independent-continuant t)
        (not (instance-of a spatial-region t)))
       (instance-of b spatial-region t)
       (instance-of t temporal-region t)))))


  (cl:comment "21. occupies-spatial-region is functional on second argument"
    (forall (p q r s)
     (if
      (and (occupies-spatial-region p q r)
       (occupies-spatial-region p s r))
      (= q s))))


  (cl:comment "22. All spatial regions are part of a 3-dimensional spatial region"
    (forall (s t)
     (if (instance-of s spatial-region t)
      (exists (s3)
       (and (instance-of s3 three-dimensional-spatial-region t)
        (continuant-part-of s s3 t))))))

)))