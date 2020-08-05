(cl:comment '
BFO 2020 Axiomatization, generated 2020/07/26
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/order.cl

   (cl:outdiscourse preceded-by temporal-part-of has-first-instant has-last-instant temporally-projects-onto occupies-temporal-region occurrent-part-of precedes instance-of)

  (cl:comment "1. temporal instants are totally ordered"
    (forall (t1 t2)
     (if
      (and (instance-of t1 temporal-instant t1)
       (instance-of t2 temporal-instant t2))
      (or (precedes t1 t2) (precedes t2 t1) (= t1 t2)))))


  (cl:comment "2. precedes has domain occurrent and range occurrent"
    (forall (a b)
     (if (precedes a b)
      (and (exists (t) (instance-of a occurrent t))
       (exists (t) (instance-of b occurrent t))))))


  (cl:comment "3. If you are part of something that precedes something else, you also precede it"
    (forall (o1 o2 o1p o2p)
     (if
      (and (occurrent-part-of o1p o1) (occurrent-part-of o2p o2)
       (precedes o1 o2))
      (precedes o1p o2p))))


  (cl:comment "4. If you temporally occupy part of something that precedes something else, you also precede it"
    (forall (o1 o2)
     (iff
      (exists (t1 t2)
       (and
        (or (occupies-temporal-region o1 t1)
         (temporally-projects-onto o1 t1) (= t1 o1))
        (or (occupies-temporal-region o2 t2)
         (temporally-projects-onto o2 t2) (= t2 o2))
        (precedes t1 t2)))
      (precedes o1 o2))))


  (cl:comment "5. If one temporal region precedes another then the first last time point precedes the second first time point"
    (forall (t1 t2 l1 f2)
     (if
      (and (precedes t1 t2) (has-last-instant t1 l1)
       (has-first-instant t2 f2) (not (= l1 f2)))
      (precedes l1 f2))))


  (cl:comment "6. First instant of a temporal region that is not an instant precedes last instant"
    (forall (t ft lt)
     (if
      (and (not (instance-of t temporal-instant t))
       (has-first-instant t ft) (has-last-instant t lt))
      (precedes ft lt))))


  (cl:comment "7. precedes is antisymmetric"
    (forall (a b) (if (precedes a b) (not (precedes b a)))))


  (cl:comment "8. If two processes that occupy temporal intervals do not overlap, one of them precedes the other"
    (forall (o1 o2 t1 t2)
     (if
      (and (occupies-temporal-region o1 t1)
       (occupies-temporal-region o2 t2)
       (instance-of t1 temporal-interval t1)
       (instance-of t2 temporal-interval t2)
       (not
        (exists (part)
         (and (temporal-part-of part t1) (temporal-part-of part t2)))))
      (or (precedes o1 o2) (precedes o2 o1)))))


  (cl:comment "9. If two temporal intervals do not overlap then one of them precedes the other"
    (forall (t1 t2)
     (if
      (and (instance-of t1 temporal-interval t1)
       (instance-of t2 temporal-interval t2)
       (not
        (exists (part)
         (and (temporal-part-of part t1) (temporal-part-of part t2)))))
      (or (precedes t1 t2) (precedes t2 t1)))))


  (cl:comment "10. precedes is transitive"
    (forall (a b c)
     (if (and (precedes a b) (precedes b c)) (precedes a c))))


  (cl:comment "11. precedes and preceded-by are inverse relations"
    (forall (a b) (iff (precedes a b) (preceded-by b a))))


  (cl:comment "12. If the last instant of a temporal region precedes the first instant of another, then the first region precedes the second"
    (forall (i1 i2 l1 f2)
     (if
      (and (has-last-instant i1 l1) (has-first-instant i2 f2)
       (precedes l1 f2))
      (precedes i1 i2))))


  (cl:comment "13. A first instant is either part of an extended region or precedes it"
    (forall (l i)
     (if
      (and (instance-of l temporal-instant l)
       (instance-of i temporal-region i)
       (not (instance-of i temporal-instant i)) (has-last-instant i l))
      (iff (not (temporal-part-of l i)) (precedes i l)))))


  (cl:comment "14. if one occurrent precedes another then they do not overlap temporally"
    (forall (p q)
     (if (or (precedes p q) (precedes q p))
      (not
       (exists (overlap)
        (and (temporal-part-of overlap p)
         (temporal-part-of overlap q)))))))


  (cl:comment "15. If the last instant of a temporal region is the first instant of another, the first region precedes the second"
    (forall (i1 i2 l1 f2)
     (if
      (and (not (instance-of i1 temporal-instant i1))
       (not (instance-of i2 temporal-instant i2))
       (has-last-instant i1 l1) (has-first-instant i2 f2) (= l1 f2))
      (precedes i1 i2))))


  (cl:comment "16. A first instant is either part of an extended region or precedes it"
    (forall (f i)
     (if
      (and (instance-of f temporal-instant f)
       (instance-of i temporal-region i)
       (not (instance-of i temporal-instant i)) (has-first-instant i f))
      (iff (not (temporal-part-of f i)) (precedes f i)))))

)))