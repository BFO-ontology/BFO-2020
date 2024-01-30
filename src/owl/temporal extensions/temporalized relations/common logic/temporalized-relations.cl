(cl:comment '
BFO 2020 Axiomatization, generated 2024/01/08
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg(at)gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/temporalized-relations.cl

   (cl:outdiscourse has-proper-continuant-part-at-all-times proper-continuant-part-of-at-all-times spatially-projects-onto-at-all-times occupies-spatial-region-at-all-times generically-depends-on-at-all-times has-continuant-part-at-all-times has-material-basis-at-all-times continuant-part-of-at-all-times material-basis-of-at-all-times is-concretized-by-at-all-times participates-in-at-all-times has-participant-at-all-times has-member-part-at-all-times member-part-of-at-all-times is-carrier-of-at-all-times location-of-at-all-times concretizes-at-all-times located-in-at-all-times has-proper-continuant-part has-proper-continuant-part-at-some-time proper-continuant-part-of proper-continuant-part-of-at-some-time spatially-projects-onto spatially-projects-onto-at-some-time occupies-spatial-region occupies-spatial-region-at-some-time generically-depends-on generically-depends-on-at-some-time has-continuant-part has-continuant-part-at-some-time has-material-basis has-material-basis-at-some-time continuant-part-of continuant-part-of-at-some-time material-basis-of material-basis-of-at-some-time is-concretized-by is-concretized-by-at-some-time instance-of rdf-type participates-in participates-in-at-some-time has-participant has-participant-at-some-time has-member-part has-member-part-at-some-time member-part-of member-part-of-at-some-time is-carrier-of is-carrier-of-at-some-time location-of location-of-at-some-time concretizes concretizes-at-some-time located-in exists-at located-in-at-some-time)

  (cl:comment "located-in at some time [asd-1]"
    (forall (p q)
     (iff (located-in-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (located-in p q t))))))


  (cl:comment "concretizes at some time [gkc-1]"
    (forall (p q)
     (iff (concretizes-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (concretizes p q t))))))


  (cl:comment "location-of at some time [spm-1]"
    (forall (p q)
     (iff (location-of-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (location-of p q t))))))


  (cl:comment "is-carrier-of at some time [qkm-1]"
    (forall (p q)
     (iff (is-carrier-of-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (is-carrier-of p q t))))))


  (cl:comment "member-part-of at some time [kax-1]"
    (forall (p q)
     (iff (member-part-of-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (member-part-of p q t))))))


  (cl:comment "has-member-part at some time [smy-1]"
    (forall (p q)
     (iff (has-member-part-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (has-member-part p q t))))))


  (cl:comment "has-participant at some time [ebs-1]"
    (forall (p q)
     (iff (has-participant-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (has-participant p q t))))))


  (cl:comment "participates-in at some time [oia-1]"
    (forall (p q)
     (iff (participates-in-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (participates-in p q t))))))


  (cl:comment "rdf:type is interpreted as meaning an instance is a given type whenever it exists, and that the instance exists at some point. [fyy-1]"
    (forall (c i)
     (iff (rdf-type c i)
      (and (forall (t) (if (exists-at i t) (instance-of i c t)))
       (exists (t) (exists-at i t))))))


  (cl:comment "is-concretized-by at some time [zgk-1]"
    (forall (p q)
     (iff (is-concretized-by-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (is-concretized-by p q t))))))


  (cl:comment "material-basis-of at some time [exa-1]"
    (forall (p q)
     (iff (material-basis-of-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (material-basis-of p q t))))))


  (cl:comment "continuant-part-of at some time [lzq-1]"
    (forall (p q)
     (iff (continuant-part-of-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (continuant-part-of p q t))))))


  (cl:comment "has-material-basis at some time [fqc-1]"
    (forall (p q)
     (iff (has-material-basis-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t) (has-material-basis p q t))))))


  (cl:comment "has-continuant-part at some time [jvz-1]"
    (forall (p q)
     (iff (has-continuant-part-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t)
        (has-continuant-part p q t))))))


  (cl:comment "generically-depends-on at some time [vrq-1]"
    (forall (p q)
     (iff (generically-depends-on-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t)
        (generically-depends-on p q t))))))


  (cl:comment "occupies-spatial-region at some time [yci-1]"
    (forall (p q)
     (iff (occupies-spatial-region-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t)
        (occupies-spatial-region p q t))))))


  (cl:comment "spatially-projects-onto at some time [epa-1]"
    (forall (p q)
     (iff (spatially-projects-onto-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t)
        (spatially-projects-onto p q t))))))


  (cl:comment "proper-continuant-part-of at some time [sql-1]"
    (forall (p q)
     (iff (proper-continuant-part-of-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t)
        (proper-continuant-part-of p q t))))))


  (cl:comment "has-proper-continuant-part at some time [ule-1]"
    (forall (p q)
     (iff (has-proper-continuant-part-at-some-time p q)
      (exists (t)
       (and (exists-at p t) (exists-at q t)
        (has-proper-continuant-part p q t))))))


  (cl:comment "located-in at all times [vdo-1]"
    (forall (p q)
     (iff (located-in-at-all-times p q)
      (and (exists (t) (and (located-in p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (located-in p q t)))))))


  (cl:comment "concretizes at all times [uge-1]"
    (forall (p q)
     (iff (concretizes-at-all-times p q)
      (and (exists (t) (and (concretizes p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (concretizes p q t)))))))


  (cl:comment "location-of at all times [imi-1]"
    (forall (p q)
     (iff (location-of-at-all-times p q)
      (and (exists (t) (and (location-of p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (location-of p q t)))))))


  (cl:comment "is-carrier-of at all times [fya-1]"
    (forall (p q)
     (iff (is-carrier-of-at-all-times p q)
      (and (exists (t) (and (is-carrier-of p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (is-carrier-of p q t)))))))


  (cl:comment "member-part-of at all times [maf-1]"
    (forall (p q)
     (iff (member-part-of-at-all-times p q)
      (and (exists (t) (and (member-part-of p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (member-part-of p q t)))))))


  (cl:comment "has-member-part at all times [xwi-1]"
    (forall (p q)
     (iff (has-member-part-at-all-times p q)
      (and (exists (t) (and (has-member-part p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (has-member-part p q t)))))))


  (cl:comment "has-participant at all times [wyo-1]"
    (forall (p q)
     (iff (has-participant-at-all-times p q)
      (and (exists (t) (and (has-participant p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (has-participant p q t)))))))


  (cl:comment "participates-in at all times [ghl-1]"
    (forall (p q)
     (iff (participates-in-at-all-times p q)
      (and (exists (t) (and (participates-in p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (participates-in p q t)))))))


  (cl:comment "is-concretized-by at all times [qhq-1]"
    (forall (p q)
     (iff (is-concretized-by-at-all-times p q)
      (and (exists (t) (and (is-concretized-by p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (is-concretized-by p q t)))))))


  (cl:comment "material-basis-of at all times [scx-1]"
    (forall (p q)
     (iff (material-basis-of-at-all-times p q)
      (and (exists (t) (and (material-basis-of p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (material-basis-of p q t)))))))


  (cl:comment "continuant-part-of at all times [ztt-1]"
    (forall (p q)
     (iff (continuant-part-of-at-all-times p q)
      (and (exists (t) (and (continuant-part-of p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (continuant-part-of p q t)))))))


  (cl:comment "has-material-basis at all times [qdl-1]"
    (forall (p q)
     (iff (has-material-basis-at-all-times p q)
      (and (exists (t) (and (has-material-basis p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (has-material-basis p q t)))))))


  (cl:comment "has-continuant-part at all times [uhy-1]"
    (forall (p q)
     (iff (has-continuant-part-at-all-times p q)
      (and (exists (t) (and (has-continuant-part p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (has-continuant-part p q t)))))))


  (cl:comment "generically-depends-on at all times [wie-1]"
    (forall (p q)
     (iff (generically-depends-on-at-all-times p q)
      (and
       (exists (t) (and (generically-depends-on p q t) (exists-at p t)))
       (forall (t) (if (exists-at p t) (generically-depends-on p q t)))))))


  (cl:comment "occupies-spatial-region at all times [tpr-1]"
    (forall (p q)
     (iff (occupies-spatial-region-at-all-times p q)
      (and
       (exists (t) (and (occupies-spatial-region p q t) (exists-at p t)))
       (forall (t)
        (if (exists-at p t) (occupies-spatial-region p q t)))))))


  (cl:comment "spatially-projects-onto at all times [ogh-1]"
    (forall (p q)
     (iff (spatially-projects-onto-at-all-times p q)
      (and
       (exists (t) (and (spatially-projects-onto p q t) (exists-at p t)))
       (forall (t)
        (if (exists-at p t) (spatially-projects-onto p q t)))))))


  (cl:comment "proper-continuant-part-of at all times [jiz-1]"
    (forall (p q)
     (iff (proper-continuant-part-of-at-all-times p q)
      (and
       (exists (t)
        (and (proper-continuant-part-of p q t) (exists-at p t)))
       (forall (t)
        (if (exists-at p t) (proper-continuant-part-of p q t)))))))


  (cl:comment "has-proper-continuant-part at all times [mxe-1]"
    (forall (p q)
     (iff (has-proper-continuant-part-at-all-times p q)
      (and
       (exists (t)
        (and (has-proper-continuant-part p q t) (exists-at p t)))
       (forall (t)
        (if (exists-at p t) (has-proper-continuant-part p q t)))))))

)))