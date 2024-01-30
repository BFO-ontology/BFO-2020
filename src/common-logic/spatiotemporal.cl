(cl:comment '
BFO 2020 Axiomatization, generated 2024/01/08
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg(at)gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/spatiotemporal.cl

   (cl:outdiscourse occurrent-part-of instance-of occupies-spatial-region located-in occurs-in occupies-spatiotemporal-region spatially-projects-onto temporally-projects-onto temporal-part-of exists-at occupies-temporal-region)

  (cl:comment "If something occupies a temporal region, then it exists at that region [bmc-1]"
    (forall (a t) (if (occupies-temporal-region a t) (exists-at a t))))


  (cl:comment "exists-at is a lower bound on first argument [jqz-1]"
    (forall (p q r)
     (if (and (exists-at p q) (temporal-part-of p r)) (exists-at r q))))


  (cl:comment "occupies-temporal-region is functional on second argument [wzd-1]"
    (forall (p q r)
     (if
      (and (occupies-temporal-region p q) (occupies-temporal-region p r))
      (= q r))))


  (cl:comment "temporally-projects-onto is functional on second argument [jtq-1]"
    (forall (p q r)
     (if
      (and (temporally-projects-onto p q) (temporally-projects-onto p r))
      (= q r))))


  (cl:comment "spatially-projects-onto is functional on second argument [fdb-1]"
    (forall (p q r s)
     (if
      (and (spatially-projects-onto p q r)
       (spatially-projects-onto p s r))
      (= q s))))


  (cl:comment "occupies-spatiotemporal-region is functional on second argument [uqt-1]"
    (forall (p q r)
     (if
      (and (occupies-spatiotemporal-region p q)
       (occupies-spatiotemporal-region p r))
      (= q r))))


  (cl:comment "occurs-in is a lower bound on second argument [yex-1]"
    (forall (p c1 c2)
     (if
      (and (occurs-in p c1)
       (forall (t) (iff (exists-at p t) (located-in c1 c2 t))))
      (occurs-in p c2))))


  (cl:comment "If a occupies-spatial-region b then if a is an instance of site then b is an instance of three-dimensional-spatial-region [uqb-1]"
    (forall (p q t)
     (if (and (occupies-spatial-region p q t) (instance-of p site t))
      (instance-of q three-dimensional-spatial-region t))))


  (cl:comment "The temporal region during which a process occurs is the same as that which the spatiotemporal region the process occupies temporally projects onto [cur-1]"
    (forall (p t)
     (iff (occupies-temporal-region p t)
      (exists (st)
       (and (occupies-spatiotemporal-region p st)
        (temporally-projects-onto st t))))))


  (cl:comment "temporally-projects-onto has domain spatiotemporal-region and range temporal-region [cvr-2]"
    (forall (a b)
     (if (temporally-projects-onto a b)
      (and (exists (t) (instance-of a spatiotemporal-region t))
       (instance-of b temporal-region b)))))


  (cl:comment "If a occupies-spatial-region b then if a is an instance of material-entity then b is an instance of three-dimensional-spatial-region [ocw-1]"
    (forall (p q t)
     (if
      (and (occupies-spatial-region p q t)
       (instance-of p material-entity t))
      (instance-of q three-dimensional-spatial-region t))))


  (cl:comment "A process boundary occupies a spatiotemporal instant [atz-1]"
    (forall (pb tr)
     (if
      (and (exists (t) (instance-of pb process-boundary t))
       (occupies-temporal-region pb tr))
      (instance-of tr temporal-instant tr))))


  (cl:comment "for every process there's a corresponding spatiotemporal-region [qyy-1]"
    (forall (p)
     (if
      (exists (t)
       (or (instance-of p process t) (instance-of p process-boundary t)))
      (exists (s) (occupies-spatiotemporal-region p s)))))


  (cl:comment "Spatiotemporal regions always project on to some temporal region [scq-1]"
    (forall (st)
     (if (exists (t) (instance-of st spatiotemporal-region t))
      (exists (t)
       (and (instance-of t temporal-region t)
        (temporally-projects-onto st t))))))


  (cl:comment "Every temporal region is a projection from a spatiotemporal region [xco-2]"
    (forall (tr)
     (if (instance-of tr temporal-region tr)
      (exists (st)
       (and (exists (t) (instance-of st spatiotemporal-region t))
        (temporally-projects-onto st tr))))))


  (cl:comment "spatially-projects-onto is time indexed and has domain: spatiotemporal-region and range: spatial-region [blj-1]"
    (forall (a b t)
     (if (spatially-projects-onto a b t)
      (and (instance-of a spatiotemporal-region t)
       (instance-of b spatial-region t)
       (instance-of t temporal-region t)))))


  (cl:comment "occupies-temporal-region has domain process or process-boundary  and range temporal-region [lyx-2]"
    (forall (a b)
     (if (occupies-temporal-region a b)
      (and
       (exists (t)
        (or (instance-of a process t)
         (instance-of a process-boundary t)))
       (instance-of b temporal-region b)))))


  (cl:comment "Spatiotemporal regions always project on to some spatial region at any time [geq-1]"
    (forall (st t)
     (if (instance-of st spatiotemporal-region t)
      (exists (s tp)
       (and (temporal-part-of tp t) (instance-of s spatial-region tp)
        (spatially-projects-onto st s tp))))))


  (cl:comment "Every spatial region is a projection from a spatiotemporal region [mdb-1]"
    (forall (sr)
     (if (exists (t) (instance-of sr spatial-region t))
      (exists (st)
       (and (exists (t) (instance-of st spatiotemporal-region t))
        (exists (t) (spatially-projects-onto st sr t)))))))


  (cl:comment "occupies-spatiotemporal-region has domain process or process-boundary  and range spatiotemporal-region [vvo-1]"
    (forall (a b)
     (if (occupies-spatiotemporal-region a b)
      (and
       (exists (t)
        (or (instance-of a process t)
         (instance-of a process-boundary t)))
       (exists (t) (instance-of b spatiotemporal-region t))))))


  (cl:comment "A process occupies at least a temporal interval [fzy-1]"
    (forall (proc tr)
     (if
      (and (exists (t) (instance-of proc process t))
       (occupies-temporal-region proc tr))
      (exists (interval)
       (and (instance-of interval temporal-interval interval)
        (temporal-part-of interval tr))))))


  (cl:comment "If one occurrent is part of another, then the temporal region of the first is part of the temporal region of the second [jiv-1]"
    (forall (o1 o2 t1 t2)
     (if
      (and
       (exists (t)
        (or (instance-of o1 process t)
         (instance-of o1 process-boundary t)))
       (exists (t) (instance-of o2 process t)) (occurrent-part-of o1 o2)
       (occupies-temporal-region o1 t1) (occupies-temporal-region o2 t2))
      (temporal-part-of t1 t2))))


  (cl:comment "If one process or process boundary is part of another, then their corresponding temporal regions are also in a parthood relation [iqe-1]"
    (forall (o1 o2 st1 st2)
     (if
      (and
       (exists (t)
        (or (instance-of o1 process t)
         (instance-of o1 process-boundary t)))
       (exists (t)
        (or (instance-of o2 process t)
         (instance-of o2 process-boundary t)))
       (occurrent-part-of o1 o2) (occupies-spatiotemporal-region o1 st1)
       (occupies-spatiotemporal-region o2 st2))
      (occurrent-part-of st1 st2))))


  (cl:comment "If a process or process boundary is part of another, their spatiotemporal regions are part too [kqv-1]"
    (forall (p1 p2)
     (if
      (and
       (or (exists (t) (instance-of p1 process t))
        (exists (t) (instance-of p1 process-boundary t)))
       (or (exists (t) (instance-of p2 process t))
        (exists (t) (instance-of p2 process-boundary t))))
      (iff (occurrent-part-of p1 p2)
       (exists (st1 st2)
        (and (occupies-spatiotemporal-region p1 st1)
         (occupies-spatiotemporal-region p2 st2)
         (occurrent-part-of st1 st2)))))))


  (cl:comment "process or process-boundary p occupies-temporal-region t iff every part of p temporally occupies a part of t, and there isn't a smaller part of t that p occupies. [tao-1]"
    (forall (o t)
     (if
      (and
       (or (exists (t1) (instance-of o process t1))
        (exists (t1) (instance-of o process-boundary t1)))
       (instance-of t temporal-region t))
      (iff (occupies-temporal-region o t)
       (and
        (forall (op)
         (if (occurrent-part-of op o)
          (forall (tp)
           (if (occupies-temporal-region op tp)
            (occurrent-part-of tp t)))))
        (not
         (exists (tprime)
          (and (not (= tprime t)) (occurrent-part-of tprime t)
           (occupies-temporal-region o tprime)))))))))


  (cl:comment "process p (or boundary) occupies-spatiotemporal-region st iff every part of p  occupies-spatiotemporal-region a part of st, and there isn't a smaller part of st that p occupies. [dki-1]"
    (forall (o st)
     (if
      (and
       (or (exists (t1) (instance-of o process t1))
        (exists (t1) (instance-of o process-boundary t1)))
       (exists (t1) (instance-of st spatiotemporal-region t1)))
      (iff (occupies-spatiotemporal-region o st)
       (and
        (forall (op)
         (if (occurrent-part-of op o)
          (forall (stp)
           (if (occupies-spatiotemporal-region op stp)
            (occurrent-part-of stp st)))))
        (not
         (exists (stprime)
          (and (not (= stprime st)) (occurrent-part-of stprime st)
           (occupies-spatiotemporal-region o stprime)))))))))

)))