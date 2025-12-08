(cl:comment '
BFO 2020 Axiomatization, generated 2023/03/25
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/

These are definitions for the Allen interval algebra in BFO-2020 terms. They have been checked againsts the axioms
documented in https://github.com/gruninger/colore/blob/master/ontologies/allen_interval_algebra/mappings/theorems/allen2boundedmeeting/axiom%201.in
There is no OWL equivalent at this point. Some or all of these relations may have Relation Ontology IRIs, and these might form the basis
for an OWL version.
See https://en.wikipedia.org/wiki/Allen%27s_interval_algebra
'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/allen-relations.cl

   (cl:outdiscourse started-by overlapped-by met-by finished-by contains after starts overlaps meets finishes intervals-equal during precedes has-first-instant has-last-instant instance-of before)

  (cl:comment "i1 is before i2 if the last instant of i1 precedes the first instant of i2 [zmj-1]"
    (forall (x y)
     (iff (before x y)
      (and (instance-of x temporal-interval x)
       (instance-of y temporal-interval y)
       (exists (xe ys)
        (and (has-last-instant x xe) (has-first-instant y ys)
         (precedes xe ys)))))))


  (cl:comment "i1 is during i2 if first instant of i1 precedes the first instant of i2 and the last instant of i2 precedes the last instant of i1 [xjs-1]"
    (forall (x y)
     (iff (during x y)
      (and (instance-of x temporal-interval x)
       (instance-of y temporal-interval y)
       (exists (xs xe ys ye)
        (and (has-first-instant x xs) (has-first-instant y ys)
         (has-last-instant x xe) (has-last-instant y ye) (precedes ys xs)
         (precedes xe ye)))))))


  (cl:comment "Two intervals are equal if they have the same first and last instants [ndx-1]"
    (forall (x y)
     (iff (intervals-equal x y)
      (exists (s e)
       (and (instance-of x temporal-interval x)
        (instance-of y temporal-interval y) (has-first-instant x s)
        (has-first-instant y s) (has-last-instant x e)
        (has-last-instant y e))))))


  (cl:comment "i1 finishes i2 if they have the same last instant and the first instant of i2 precedes the first instant of i1 [dfj-1]"
    (forall (x y)
     (iff (finishes x y)
      (exists (e xs ys)
       (and (instance-of x temporal-interval x)
        (instance-of y temporal-interval y) (has-last-instant x e)
        (has-last-instant y e) (has-first-instant x xs)
        (has-first-instant y ys) (precedes ys xs))))))


  (cl:comment "i1 meets i2 if the last instant of i1 is the first instant of i2 [jsc-1]"
    (forall (x y)
     (iff (meets x y)
      (exists (t)
       (and (instance-of x temporal-interval x)
        (instance-of y temporal-interval y) (has-last-instant x t)
        (has-first-instant y t))))))


  (cl:comment "i1 overlaps i2 if the first instant of i2 is inside i1 and the last instant of i2 is outside it [xex-1]"
    (forall (x y)
     (iff (overlaps x y)
      (and
       (exists (xs xe ys ye)
        (and (instance-of x temporal-interval x)
         (instance-of y temporal-interval y) (has-first-instant x xs)
         (has-first-instant y ys) (has-last-instant x xe)
         (has-last-instant y ye) (precedes xs ys) (precedes ys xe)
         (precedes xe ye)))))))


  (cl:comment "i1 starts i2 if they have the same first instant and the last instant of i1 precedes the last instant of i2 [gdu-1]"
    (forall (x y)
     (iff (starts x y)
      (and (instance-of x temporal-interval x)
       (instance-of y temporal-interval y)
       (exists (s xe ye)
        (and (has-first-instant x s) (has-first-instant y s)
         (has-last-instant x xe) (has-last-instant y ye)
         (precedes xe ye)))))))


  (cl:comment "after and before are inverse relations [ege-1]"
    (forall (a b) (iff (after a b) (before b a))))


  (cl:comment "during and contains are inverse relations [ubs-1]"
    (forall (a b) (iff (during a b) (contains b a))))


  (cl:comment "finished-by and finishes are inverse relations [jos-1]"
    (forall (a b) (iff (finished-by a b) (finishes b a))))


  (cl:comment "met-by and meets are inverse relations [fwt-1]"
    (forall (a b) (iff (met-by a b) (meets b a))))


  (cl:comment "overlapped-by and overlaps are inverse relations [vlv-1]"
    (forall (a b) (iff (overlapped-by a b) (overlaps b a))))


  (cl:comment "started-by and starts are inverse relations [lwk-1]"
    (forall (a b) (iff (started-by a b) (starts b a))))


  (cl:comment "after has domain temporal-interval and range temporal-interval [kdk-1]"
    (forall (a b)
     (if (after a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))


  (cl:comment "before has domain temporal-interval and range temporal-interval [kvm-1]"
    (forall (a b)
     (if (before a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))


  (cl:comment "contains has domain temporal-interval and range temporal-interval [nbl-1]"
    (forall (a b)
     (if (contains a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))


  (cl:comment "during has domain temporal-interval and range temporal-interval [uhp-1]"
    (forall (a b)
     (if (during a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))


  (cl:comment "finished-by has domain temporal-interval and range temporal-interval [uvt-1]"
    (forall (a b)
     (if (finished-by a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))


  (cl:comment "finishes has domain temporal-interval and range temporal-interval [dye-1]"
    (forall (a b)
     (if (finishes a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))


  (cl:comment "intervals-equal has domain temporal-interval and range temporal-interval [iup-1]"
    (forall (a b)
     (if (intervals-equal a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))


  (cl:comment "meets has domain temporal-interval and range temporal-interval [ncc-1]"
    (forall (a b)
     (if (meets a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))


  (cl:comment "met-by has domain temporal-interval and range temporal-interval [axp-1]"
    (forall (a b)
     (if (met-by a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))


  (cl:comment "overlapped-by has domain temporal-interval and range temporal-interval [pix-1]"
    (forall (a b)
     (if (overlapped-by a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))


  (cl:comment "overlaps has domain temporal-interval and range temporal-interval [hzl-1]"
    (forall (a b)
     (if (overlaps a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))


  (cl:comment "started-by has domain temporal-interval and range temporal-interval [uyi-1]"
    (forall (a b)
     (if (started-by a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))


  (cl:comment "starts has domain temporal-interval and range temporal-interval [ydj-1]"
    (forall (a b)
     (if (starts a b)
      (and (exists (t) (instance-of a temporal-interval t))
       (exists (t) (instance-of b temporal-interval t))))))

)))
