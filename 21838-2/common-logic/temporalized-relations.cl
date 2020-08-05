(cl:comment '
BFO 2020 Axiomatization, generated 2020/07/26
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/temporalized-relations.cl

   (cl:outdiscourse has-proper-continuant-part-at-all-times occupies-spatial-region-at-all-times has-proper-continuant-part has-proper-continuant-part-at-some-time generically-depends-on-at-all-times participates-in-at-some-time continuant-part-of-at-all-times has-continuant-part-at-some-time generically-depends-on generically-depends-on-at-some-time has-member-part-at-some-time location-of-at-all-times concretizes-at-some-time participates-in participates-in-at-all-times occupies-spatial-region occupies-spatial-region-at-some-time is-concretized-by-at-some-time member-part-of-at-some-time is-carrier-of-at-all-times spatially-projects-onto-at-some-time has-participant-at-some-time location-of location-of-at-some-time continuant-part-of continuant-part-of-at-some-time has-member-part has-member-part-at-all-times proper-continuant-part-of-at-some-time is-concretized-by is-concretized-by-at-all-times material-basis-of-at-some-time instance-of universal particular rdf-type has-participant has-participant-at-all-times located-in-at-all-times proper-continuant-part-of proper-continuant-part-of-at-all-times located-in located-in-at-some-time concretizes concretizes-at-all-times member-part-of member-part-of-at-all-times has-material-basis-at-all-times has-continuant-part has-continuant-part-at-all-times is-carrier-of is-carrier-of-at-some-time material-basis-of material-basis-of-at-all-times temporal-part-of spatially-projects-onto spatially-projects-onto-at-all-times has-material-basis exists-at has-material-basis-at-some-time)

  (cl:comment "1. has-material-basis at some time"
    (forall (p q)
     (iff (has-material-basis-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (has-material-basis p q t))))))


  (cl:comment "2. spatially-projects-onto at all times"
    (forall (p q)
     (iff (spatially-projects-onto-at-all-times p q)
      (and
       (exists (t) (and (spatially-projects-onto p q t) (exists-at p t)))
       (forall (t)
        (if (exists-at p t)
         (exists (tp)
          (and (temporal-part-of q tp)
           (spatially-projects-onto p q tp)))))))))


  (cl:comment "3. material-basis-of at all times"
    (forall (p q)
     (iff (material-basis-of-at-all-times p q)
      (and (exists (t) (and (material-basis-of p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (material-basis-of p q t)))))))


  (cl:comment "4. is-carrier-of at some time"
    (forall (p q)
     (iff (is-carrier-of-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (is-carrier-of p q t))))))


  (cl:comment "5. has-continuant-part at all times"
    (forall (p q)
     (iff (has-continuant-part-at-all-times p q)
      (and (exists (t) (and (has-continuant-part p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (has-continuant-part p q t)))))))


  (cl:comment "6. has-material-basis at all times"
    (forall (p q)
     (iff (has-material-basis-at-all-times p q)
      (and (exists (t) (and (has-material-basis p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (has-material-basis p q t)))))))


  (cl:comment "7. member-part-of at all times"
    (forall (p q)
     (iff (member-part-of-at-all-times p q)
      (and (exists (t) (and (member-part-of p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (member-part-of p q t)))))))


  (cl:comment "8. concretizes at all times"
    (forall (p q)
     (iff (concretizes-at-all-times p q)
      (and (exists (t) (and (concretizes p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (concretizes p q t)))))))


  (cl:comment "9. located-in at some time"
    (forall (p q)
     (iff (located-in-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (located-in p q t))))))


  (cl:comment "10. proper-continuant-part-of at all times"
    (forall (p q)
     (iff (proper-continuant-part-of-at-all-times p q)
      (and
       (exists (t)
        (and (proper-continuant-part-of p q t) (exists-at p t)))
       (forall (t)
        (if (exists-at q t) (proper-continuant-part-of p q t)))))))


  (cl:comment "11. located-in at all times"
    (forall (p q)
     (iff (located-in-at-all-times p q)
      (and (exists (t) (and (located-in p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (located-in p q t)))))))


  (cl:comment "12. has-participant at all times"
    (forall (p q)
     (iff (has-participant-at-all-times p q)
      (and (exists (t) (and (has-participant p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (has-participant p q t)))))))


  (cl:comment "13. rdf:type is interpreted as meaning an instance is a given type whenever it exists, and that the instance exists at some point."
    (forall (c i)
     (iff (rdf-type c i)
      (or (and (= c entity) (or (particular i) (universal i)))
       (and (not (= c entity))
        (forall (t) (if (exists-at i t) (instance-of i c t)))
        (exists (t) (exists-at i t)))))))


  (cl:comment "14. material-basis-of at some time"
    (forall (p q)
     (iff (material-basis-of-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (material-basis-of p q t))))))


  (cl:comment "15. is-concretized-by at all times"
    (forall (p q)
     (iff (is-concretized-by-at-all-times p q)
      (and (exists (t) (and (is-concretized-by p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (is-concretized-by p q t)))))))


  (cl:comment "16. proper-continuant-part-of at some time"
    (forall (p q)
     (iff (proper-continuant-part-of-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t)
        (proper-continuant-part-of p q t))))))


  (cl:comment "17. has-member-part at all times"
    (forall (p q)
     (iff (has-member-part-at-all-times p q)
      (and (exists (t) (and (has-member-part p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (has-member-part p q t)))))))


  (cl:comment "18. continuant-part-of at some time"
    (forall (p q)
     (iff (continuant-part-of-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (continuant-part-of p q t))))))


  (cl:comment "19. location-of at some time"
    (forall (p q)
     (iff (location-of-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (location-of p q t))))))


  (cl:comment "20. has-participant at some time"
    (forall (p q)
     (iff (has-participant-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (has-participant p q t))))))


  (cl:comment "21. spatially-projects-onto at some time"
    (forall (p q)
     (iff (spatially-projects-onto-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t)
        (spatially-projects-onto p q t))))))


  (cl:comment "22. is-carrier-of at all times"
    (forall (p q)
     (iff (is-carrier-of-at-all-times p q)
      (and (exists (t) (and (is-carrier-of p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (is-carrier-of p q t)))))))


  (cl:comment "23. member-part-of at some time"
    (forall (p q)
     (iff (member-part-of-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (member-part-of p q t))))))


  (cl:comment "24. is-concretized-by at some time"
    (forall (p q)
     (iff (is-concretized-by-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (is-concretized-by p q t))))))


  (cl:comment "25. occupies-spatial-region at some time"
    (forall (p q)
     (iff (occupies-spatial-region-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t)
        (occupies-spatial-region p q t))))))


  (cl:comment "26. participates-in at all times"
    (forall (p q)
     (iff (participates-in-at-all-times p q)
      (and (exists (t) (and (participates-in p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (participates-in p q t)))))))


  (cl:comment "27. concretizes at some time"
    (forall (p q)
     (iff (concretizes-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (concretizes p q t))))))


  (cl:comment "28. location-of at all times"
    (forall (p q)
     (iff (location-of-at-all-times p q)
      (and (exists (t) (and (location-of p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (location-of p q t)))))))


  (cl:comment "29. has-member-part at some time"
    (forall (p q)
     (iff (has-member-part-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (has-member-part p q t))))))


  (cl:comment "30. generically-depends-on at some time"
    (forall (p q)
     (iff (generically-depends-on-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t)
        (generically-depends-on p q t))))))


  (cl:comment "31. has-continuant-part at some time"
    (forall (p q)
     (iff (has-continuant-part-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t)
        (has-continuant-part p q t))))))


  (cl:comment "32. continuant-part-of at all times"
    (forall (p q)
     (iff (continuant-part-of-at-all-times p q)
      (and (exists (t) (and (continuant-part-of p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (continuant-part-of p q t)))))))


  (cl:comment "33. participates-in at some time"
    (forall (p q)
     (iff (participates-in-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (participates-in p q t))))))


  (cl:comment "34. generically-depends-on at all times"
    (forall (p q)
     (iff (generically-depends-on-at-all-times p q)
      (and
       (exists (t) (and (generically-depends-on p q t) (exists-at p t)))
       (forall (t) (if (exists-at q t) (generically-depends-on p q t)))))))


  (cl:comment "35. has-proper-continuant-part at some time"
    (forall (p q)
     (iff (has-proper-continuant-part-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t)
        (has-proper-continuant-part p q t))))))


  (cl:comment "36. occupies-spatial-region at all times"
    (forall (p q)
     (iff (occupies-spatial-region-at-all-times p q)
      (and
       (exists (t) (and (occupies-spatial-region p q t) (exists-at p t)))
       (forall (t)
        (if (exists-at p t)
         (exists (tp)
          (and (temporal-part-of q tp)
           (occupies-spatial-region p q tp)))))))))


  (cl:comment "37. has-proper-continuant-part at all times"
    (forall (p q)
     (iff (has-proper-continuant-part-at-all-times p q)
      (and
       (exists (t)
        (and (has-proper-continuant-part p q t) (exists-at p t)))
       (forall (t)
        (if (exists-at q t) (has-proper-continuant-part p q t)))))))

)))