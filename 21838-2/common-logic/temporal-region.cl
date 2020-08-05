(cl:comment '
BFO 2020 Axiomatization, generated 2020/07/26
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/temporal region.cl

   (cl:outdiscourse occurrent-part-of first-instant-of last-instant-of has-proper-temporal-part proper-temporal-part-of has-temporal-part temporal-part-of precedes has-last-instant has-first-instant instance-of)

  (cl:comment "1. An interval has no gaps"
    (forall (i start end)
     (if
      (and (instance-of i temporal-interval i)
       (has-first-instant i start) (has-last-instant i end))
      (not
       (exists (gap gap-start gap-end)
        (and (not (instance-of gap temporal-instant gap))
         (has-first-instant gap gap-start) (has-last-instant gap gap-end)
         (or (precedes gap-end end)
          (and (temporal-part-of end i) (= gap-end end)))
         (or (precedes start gap-start)
          (and (temporal-part-of start i) (= gap-start start)))
         (not (temporal-part-of gap i))))))))


  (cl:comment "2. has-last-instant is functional on second argument"
    (forall (p q r)
     (if (and (has-last-instant p q) (has-last-instant p r)) (= q r))))


  (cl:comment "3. temporal instants are totally ordered"
    (forall (t1 t2)
     (if
      (and (instance-of t1 temporal-instant t1)
       (instance-of t2 temporal-instant t2))
      (or (precedes t1 t2) (precedes t2 t1) (= t1 t2)))))


  (cl:comment "4. has-last-instant has domain temporal-region and range temporal-instant"
    (forall (a b)
     (if (has-last-instant a b)
      (and (exists (t) (instance-of a temporal-region t))
       (exists (t) (instance-of b temporal-instant t))))))


  (cl:comment "5. temporal-part-of has unique-product"
    (forall (x y)
     (if
      (and (instance-of x temporal-region x)
       (instance-of y temporal-region y))
      (if
       (exists (o) (and (temporal-part-of o x) (temporal-part-of o y)))
       (exists (z) (instance-of z temporal-region z)
        (forall (w)
         (if
          (and (instance-of w temporal-region w)
           (instance-of z temporal-region z))
          (iff (temporal-part-of w z)
           (and (temporal-part-of w x) (temporal-part-of w y))))))))))


  (cl:comment "6. If a has-temporal-part b then if a is an instance of one-dimensional-temporal-region then b is an instance of one-dimensional-temporal-region or zero-dimensional-temporal-region "
    (forall (p q)
     (if (has-temporal-part p q)
      (if (exists (t) (instance-of p one-dimensional-temporal-region t))
       (exists (t)
        (or (instance-of q one-dimensional-temporal-region t)
         (instance-of q zero-dimensional-temporal-region t)))))))


  (cl:comment "7. any temporal instant that precedes the last instant of an interval and which is preceded by the first instant is part of the interval"
    (forall (i)
     (if (instance-of i temporal-region i)
      (exists (t1 t2)
       (and (has-first-instant i t1) (has-last-instant i t2))))))


  (cl:comment "8. two intervals are identical if their first and last instants are the same and if an instant is part of one of the intervals it is also part of the other"
    (forall (i1 i2)
     (if
      (and (instance-of i1 temporal-interval i1)
       (instance-of i2 temporal-interval i2))
      (if
       (exists (f l)
        (and (has-first-instant i1 f) (has-first-instant i2 f)
         (has-last-instant i1 l) (has-last-instant i2 l)
         (iff (temporal-part-of l i1) (temporal-part-of l i2))
         (iff (temporal-part-of f i1) (temporal-part-of f i2))))
       (= i1 i2)))))


  (cl:comment "9. temporal-part-of is reflexive"
    (forall (a)
     (if (exists (t) (instance-of a temporal-region t))
      (temporal-part-of a a))))


  (cl:comment "10. proper-temporal-part-of is transitive"
    (forall (a b c)
     (if
      (and (proper-temporal-part-of a b) (proper-temporal-part-of b c))
      (proper-temporal-part-of a c))))


  (cl:comment "11. has-first-instant has domain temporal-region and range temporal-instant"
    (forall (a b)
     (if (has-first-instant a b)
      (and (exists (t) (instance-of a temporal-region t))
       (exists (t) (instance-of b temporal-instant t))))))


  (cl:comment "12. If something is an instance of temporal region at t, then t is part of that temporal region"
    (forall (ti t)
     (if (instance-of ti temporal-region t) (temporal-part-of t ti))))


  (cl:comment "13. If a has-temporal-part b then if a is an instance of zero-dimensional-temporal-region then b is an instance of zero-dimensional-temporal-region"
    (forall (p q)
     (if (has-temporal-part p q)
      (if (exists (t) (instance-of p zero-dimensional-temporal-region t))
       (exists (t) (instance-of q zero-dimensional-temporal-region t))))))


  (cl:comment "14. proper-temporal-part-of and has-proper-temporal-part are inverse relations"
    (forall (a b)
     (iff (proper-temporal-part-of a b) (has-proper-temporal-part b a))))


  (cl:comment "15. any temporal instant that precedes the last instant of an interval and which is preceded by the first instant is part of the interval"
    (forall (t r)
     (if
      (and (instance-of t temporal-instant t)
       (instance-of r temporal-interval r))
      (or (has-first-instant r t) (has-last-instant r t)
       (iff
        (exists (f l)
         (and (instance-of r temporal-interval r) (has-first-instant r f)
          (has-last-instant r l) (precedes t l) (precedes f t)))
        (proper-temporal-part-of t r))))))


  (cl:comment "16. If one temporal region precedes another then the first last time point precedes the second first time point"
    (forall (t1 t2 l1 f2)
     (if
      (and (precedes t1 t2) (has-last-instant t1 l1)
       (has-first-instant t2 f2) (not (= l1 f2)))
      (precedes l1 f2))))


  (cl:comment "17. First instant of a temporal region that is not an instant precedes last instant"
    (forall (t ft lt)
     (if
      (and (not (instance-of t temporal-instant t))
       (has-first-instant t ft) (has-last-instant t lt))
      (precedes ft lt))))


  (cl:comment "18. The last temporal instant is such that every part of the interval that doesn't have the last instant as part precedes it"
    (forall (li i)
     (if
      (and (instance-of li temporal-instant li)
       (instance-of i temporal-region i)
       (not (instance-of i temporal-instant i)))
      (if (has-last-instant i li)
       (and
        (forall (ip)
         (if (and (temporal-part-of ip i) (not (temporal-part-of li ip)))
          (precedes ip li))))))))


  (cl:comment "19. a proper temporal part of b means a is a temporal part of b and b a is not the same as b"
    (forall (x y)
     (iff (proper-temporal-part-of x y)
      (and (temporal-part-of x y) (not (= x y))))))


  (cl:comment "20. If a temporal-part-of b then if a is an instance of temporal-region then b is an instance of temporal-region, and vice-versa"
    (forall (p q)
     (if (temporal-part-of p q)
      (iff (exists (t) (instance-of p temporal-region t))
       (exists (t) (instance-of q temporal-region t))))))


  (cl:comment "21. If two temporal intervals do not overlap then one of them precedes the other"
    (forall (t1 t2)
     (if
      (and (instance-of t1 temporal-interval t1)
       (instance-of t2 temporal-interval t2)
       (not
        (exists (part)
         (and (temporal-part-of part t1) (temporal-part-of part t2)))))
      (or (precedes t1 t2) (precedes t2 t1)))))


  (cl:comment "22. has-last-instant and last-instant-of are inverse relations"
    (forall (a b) (iff (has-last-instant a b) (last-instant-of b a))))


  (cl:comment "23. If a temporal-part-of b then if a is an instance of one-dimensional-temporal-region then b is an instance of one-dimensional-temporal-region"
    (forall (p q)
     (if (temporal-part-of p q)
      (if (exists (t) (instance-of p one-dimensional-temporal-region t))
       (exists (t) (instance-of q one-dimensional-temporal-region t))))))


  (cl:comment "24. temporal-part-of has domain occurrent and range occurrent"
    (forall (a b)
     (if (temporal-part-of a b)
      (and (exists (t) (instance-of a occurrent t))
       (exists (t) (instance-of b occurrent t))))))


  (cl:comment "25. A one-dimensional temporal region has at least one interval as part"
    (forall (t)
     (if (and (instance-of t one-dimensional-temporal-region t))
      (exists (p)
       (and (temporal-part-of p t) (instance-of p temporal-interval p))))))


  (cl:comment "26. temporal-part-of is transitive"
    (forall (a b c)
     (if (and (temporal-part-of a b) (temporal-part-of b c))
      (temporal-part-of a c))))


  (cl:comment "27. has-first-instant is functional on second argument"
    (forall (p q r)
     (if (and (has-first-instant p q) (has-first-instant p r)) (= q r))))


  (cl:comment "28. intervals have no gaps - strong version - every two instants without another in between bound an interval"
    (forall (i start end)
     (if
      (and (instance-of i temporal-interval i)
       (has-first-instant i start) (has-last-instant i end))
      (forall (t1 t2)
       (if
        (and (temporal-part-of t1 i) (temporal-part-of t2 i)
         (instance-of t1 temporal-instant t1)
         (instance-of t2 temporal-instant t2) (precedes t1 t2)
         (not
          (exists (t3)
           (and (instance-of t3 temporal-instant t3) (precedes t1 t3)
            (precedes t3 t2)))))
        (exists (fill)
         (and (instance-of fill temporal-interval fill)
          (has-first-instant fill t1) (has-last-instant fill t2)
          (temporal-part-of fill i))))))))


  (cl:comment "29. intervals have no internal gaps"
    (forall (i start end)
     (if
      (and (instance-of i temporal-interval i)
       (has-first-instant i start) (has-last-instant i end))
      (not
       (exists (gap gap-start gap-end)
        (and (has-first-instant gap gap-start)
         (has-last-instant gap gap-end) (precedes gap-end end)
         (precedes start gap-start) (not (temporal-part-of gap i))))))))


  (cl:comment "30. The only part of a temporal instant is itself"
    (forall (p q)
     (if
      (and (exists (t) (instance-of p temporal-instant t))
       (has-temporal-part p q))
      (= p q))))


  (cl:comment "31. temporal-part-of and has-temporal-part are inverse relations"
    (forall (a b) (iff (temporal-part-of a b) (has-temporal-part b a))))


  (cl:comment "32. The first temporal instant is such that it precedes every part of the interval that doesn't have the first instant as part"
    (forall (fi i)
     (if
      (and (instance-of fi temporal-instant fi)
       (instance-of i temporal-region i)
       (not (instance-of i temporal-instant i)))
      (if (has-first-instant i fi)
       (forall (ip)
        (if (and (temporal-part-of ip i) (not (temporal-part-of fi ip)))
         (precedes fi ip)))))))


  (cl:comment "33. If the last instant of a temporal region precedes the first instant of another, then the first region precedes the second"
    (forall (i1 i2 l1 f2)
     (if
      (and (has-last-instant i1 l1) (has-first-instant i2 f2)
       (precedes l1 f2))
      (precedes i1 i2))))


  (cl:comment "34. temporal regions are instances at themselves"
    (forall (a u)
     (if
      (exists (t)
       (and (instance-of a temporal-region t) (instance-of a u t)))
      (instance-of a u a))))


  (cl:comment "35. has-first-instant and first-instant-of are inverse relations"
    (forall (a b) (iff (has-first-instant a b) (first-instant-of b a))))


  (cl:comment "36. A first instant is either part of an extended region or precedes it"
    (forall (l i)
     (if
      (and (instance-of l temporal-instant l)
       (instance-of i temporal-region i)
       (not (instance-of i temporal-instant i)) (has-last-instant i l))
      (iff (not (temporal-part-of l i)) (precedes i l)))))


  (cl:comment "37. temporal-part-of for occurrents implies occurrent-part-of"
    (forall (a b) (if (temporal-part-of a b) (occurrent-part-of a b))))


  (cl:comment "38. temporal-part-of is antisymmetric"
    (forall (a b)
     (if (and (temporal-part-of a b) (temporal-part-of b a)) (= a b))))


  (cl:comment "39. If the last instant of a temporal region is the first instant of another, the first region precedes the second"
    (forall (i1 i2 l1 f2)
     (if
      (and (not (instance-of i1 temporal-instant i1))
       (not (instance-of i2 temporal-instant i2))
       (has-last-instant i1 l1) (has-first-instant i2 f2) (= l1 f2))
      (precedes i1 i2))))


  (cl:comment "40. temporal-part-of is reflexive"
    (forall (a)
     (if (exists (t) (instance-of a occurrent t)) (temporal-part-of a a))))


  (cl:comment "41. instance-of is dissective on third argument, a temporal region"
    (forall (p q r s)
     (if (and (instance-of p q r) (temporal-part-of s r))
      (instance-of p q s))))


  (cl:comment "42. The first and last time points for an instant are the instant itself"
    (forall (i)
     (iff (instance-of i temporal-instant i)
      (and (has-first-instant i i) (has-last-instant i i)))))


  (cl:comment "43. A first instant is either part of an extended region or precedes it"
    (forall (f i)
     (if
      (and (instance-of f temporal-instant f)
       (instance-of i temporal-region i)
       (not (instance-of i temporal-instant i)) (has-first-instant i f))
      (iff (not (temporal-part-of f i)) (precedes f i)))))


  (cl:comment "44. All temporal regions are part of a temporal interval"
    (forall (t)
     (if (instance-of t temporal-region t)
      (exists (i)
       (and (instance-of i temporal-interval i) (temporal-part-of t i))))))


  (cl:comment "45. temporal-part-of has weak-supplementation"
    (forall (x y)
     (if
      (and (instance-of x temporal-region x)
       (instance-of y temporal-region y))
      (if (proper-temporal-part-of x y)
       (exists (z)
        (and (proper-temporal-part-of z y)
         (not
          (exists (overlap)
           (and (instance-of overlap temporal-region overlap)
            (temporal-part-of overlap x)
            (temporal-part-of overlap z))))))))))


  (cl:comment "46. proper-temporal-part-of is asymmetric"
    (forall (a b)
     (if (proper-temporal-part-of a b)
      (not (proper-temporal-part-of b a)))))

)))