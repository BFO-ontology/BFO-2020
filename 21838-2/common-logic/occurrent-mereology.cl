(cl:comment '
BFO 2020 Axiomatization, generated 2020/07/26
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/occurrent mereology.cl

   (cl:outdiscourse continuant-part-of exists-at spatially-projects-onto temporally-projects-onto occupies-spatiotemporal-region has-proper-occurrent-part proper-temporal-part-of proper-occurrent-part-of has-occurrent-part has-last-instant has-first-instant occurrent-part-of occupies-temporal-region temporal-part-of instance-of)

  (cl:comment "1. a process boundary is any temporal part of a process that has no proper temporal parts."
    (forall (pb)
     (iff (exists (t) (instance-of pb process-boundary t))
      (and
       (exists (p)
        (and (temporal-part-of pb p)
         (exists (t) (instance-of p process t))))
       (exists (t)
        (and (occupies-temporal-region pb t)
         (instance-of t temporal-instant t)))))))


  (cl:comment "2. If a occurrent-part-of b then if a is an instance of process-boundary then b is an instance of process or process-boundary "
    (forall (p q)
     (if (occurrent-part-of p q)
      (if (exists (t) (instance-of p process-boundary t))
       (exists (t)
        (or (instance-of q process t)
         (instance-of q process-boundary t)))))))


  (cl:comment "3. definition of temporal part for temporal regions"
    (forall (b c)
     (if
      (and (exists (t) (instance-of b temporal-region t))
       (exists (t) (instance-of c temporal-region t)))
      (iff (temporal-part-of b c) (occurrent-part-of b c)))))


  (cl:comment "4. At least one process boundary needs to be at the first or last instant of the process it bounds"
    (forall (p)
     (if (exists (tp) (instance-of p process tp))
      (exists (pb tb tp)
       (and (occupies-temporal-region p tp) (occurrent-part-of pb p)
        (occupies-temporal-region pb tb)
        (instance-of pb process-boundary tb)
        (exists (ltp ftp)
         (and (has-first-instant tp ftp) (has-last-instant tp ltp)
          (or (= tb ftp) (= tb ltp)))))))))


  (cl:comment "5. occurrent-part-of has a unique product"
    (forall (x y)
     (if
      (exists (t)
       (and (instance-of x occurrent t) (instance-of y occurrent t)
        (instance-of t temporal-region t)))
      (if
       (exists (w) (and (occurrent-part-of w x) (occurrent-part-of w y)))
       (exists (z)
        (forall (w)
         (iff (occurrent-part-of w z)
          (and (occurrent-part-of w x) (occurrent-part-of w y)))))))))


  (cl:comment "6. If a has-occurrent-part b then if a is an instance of process-boundary then b is an instance of process-boundary"
    (forall (p q)
     (if (has-occurrent-part p q)
      (if (exists (t) (instance-of p process-boundary t))
       (exists (t) (instance-of q process-boundary t))))))


  (cl:comment "7. occurrent-part-of has domain occurrent and range occurrent"
    (forall (a b)
     (if (occurrent-part-of a b)
      (and (exists (t) (instance-of a occurrent t))
       (exists (t) (instance-of b occurrent t))))))


  (cl:comment "8. occurrent-part-of is antisymmetric"
    (forall (a b)
     (if (and (occurrent-part-of a b) (occurrent-part-of b a)) (= a b))))


  (cl:comment "9. A proper occurrent part of b means a is an occurrent part of b and a is not the same as b"
    (forall (x y)
     (iff (proper-occurrent-part-of x y)
      (and (occurrent-part-of x y) (not (= x y))))))


  (cl:comment "10. proper-temporal-part-of has domain occurrent and range occurrent"
    (forall (a b)
     (if (proper-temporal-part-of a b)
      (and (exists (t) (instance-of a occurrent t))
       (exists (t) (instance-of b occurrent t))))))


  (cl:comment "11. every process has a process boundary"
    (forall (p)
     (if (exists (t) (instance-of p process t))
      (exists (pb t)
       (and (instance-of pb process-boundary t)
        (occurrent-part-of pb p))))))


  (cl:comment "12. proper-occurrent-part-of and has-proper-occurrent-part are inverse relations"
    (forall (a b)
     (iff (proper-occurrent-part-of a b) (has-proper-occurrent-part b a))))


  (cl:comment "13. b is a temporal part of  process or process boundary c if b is occurrent-part-of c and b's spatiotemporal region is temporal-part-of c's spatiotemporal region"
    (forall (b c)
     (if
      (and
       (exists (t)
        (or (instance-of b process t)
         (instance-of c process-boundary t)))
       (exists (t)
        (or (instance-of b process t)
         (instance-of c process-boundary t))))
      (iff (temporal-part-of b c)
       (exists (bs cs)
        (and (occurrent-part-of b c)
         (occupies-spatiotemporal-region b bs)
         (occupies-spatiotemporal-region c cs)
         (temporal-part-of bs cs)))))))


  (cl:comment "14. b temporal part c (both spatiotemporal regions) iff b temporal projection is part of c's temporal projection, and for all parts of b's existence, if it spatially-projects-onto s at that time, then so does c"
    (forall (b c)
     (if
      (and (exists (t) (instance-of b spatiotemporal-region t))
       (exists (t) (instance-of c spatiotemporal-region t)))
      (iff (temporal-part-of b c)
       (exists (tb tc) (temporally-projects-onto b tb)
        (temporally-projects-onto c tc)
        (and (occurrent-part-of tb tc)
         (forall (tp)
          (if
           (and (occurrent-part-of tp tb)
            (exists (s) (spatially-projects-onto b s tp)))
           (exists (s)
            (and (spatially-projects-onto b s tp)
             (spatially-projects-onto c s tp)))))))))))


  (cl:comment "15. If a occurrent-part-of b then if a is an instance of process then b is an instance of process"
    (forall (p q)
     (if (occurrent-part-of p q)
      (if (exists (t) (instance-of p process t))
       (exists (t) (instance-of q process t))))))


  (cl:comment "16. If a occurrent-part-of b then if a is an instance of spatiotemporal-region then b is an instance of spatiotemporal-region, and vice-versa"
    (forall (p q)
     (if (occurrent-part-of p q)
      (iff (exists (t) (instance-of p spatiotemporal-region t))
       (exists (t) (instance-of q spatiotemporal-region t))))))


  (cl:comment "17. If one occurrent is part of another, then the temporal region on which the former projects is a part of the temporal region on which the latter projects"
    (forall (o1 o2)
     (if (occurrent-part-of o1 o2)
      (forall (t) (if (exists-at o1 t) (exists-at o2 t))))))


  (cl:comment "18. occurrent-part-of and has-occurrent-part are inverse relations"
    (forall (a b) (iff (occurrent-part-of a b) (has-occurrent-part b a))))


  (cl:comment "19. Two spatiotemporal regions are parts when they are temporal parts and their spatial projects are always parts"
    (forall (st1 st2)
     (if
      (and (exists (t) (instance-of st1 spatiotemporal-region t))
       (exists (t) (instance-of st2 spatiotemporal-region t)))
      (iff (occurrent-part-of st1 st2)
       (and
        (exists (t1 t2)
         (and (temporally-projects-onto st1 t1)
          (temporally-projects-onto st2 t2) (temporal-part-of t1 t2)))
        (forall (t)
         (if (exists-at st1 t)
          (exists (s1 s2 tp)
           (and (temporal-part-of tp t)
            (spatially-projects-onto st1 s1 tp)
            (spatially-projects-onto st2 s2 tp)
            (continuant-part-of s1 s2 tp))))))))))


  (cl:comment "20. occurrent-part-of is reflexive"
    (forall (a)
     (if (exists (t) (instance-of a occurrent t))
      (occurrent-part-of a a))))


  (cl:comment "21. If a occurrent-part-of b then if a is an instance of temporal-region then b is an instance of temporal-region, and vice-versa"
    (forall (p q)
     (if (occurrent-part-of p q)
      (iff (exists (t) (instance-of p temporal-region t))
       (exists (t) (instance-of q temporal-region t))))))


  (cl:comment "22. proper-occurrent-part-of has domain occurrent and range occurrent"
    (forall (a b)
     (if (proper-occurrent-part-of a b)
      (and (exists (t) (instance-of a occurrent t))
       (exists (t) (instance-of b occurrent t))))))


  (cl:comment "23. If a has-occurrent-part b then if a is an instance of process then b is an instance of process or process-boundary "
    (forall (p q)
     (if (has-occurrent-part p q)
      (if (exists (t) (instance-of p process t))
       (exists (t)
        (or (instance-of q process t)
         (instance-of q process-boundary t)))))))


  (cl:comment "24. occurrent-part-of is transitive"
    (forall (a b c)
     (if (and (occurrent-part-of a b) (occurrent-part-of b c))
      (occurrent-part-of a c))))

)))