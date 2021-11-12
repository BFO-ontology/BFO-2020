(cl:comment '
BFO 2020 Axiomatization, generated 2021/11/12
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/universal-declaration.cl

   (cl:outdiscourse exists-at entity temporal-part-of instance-of particular universal)

  (cl:comment "role is a universal [ewm-1]"
    (universal role))


  (cl:comment "site is a universal [yhb-1]"
    (universal site))


  (cl:comment "object is a universal [kxo-1]"
    (universal object))


  (cl:comment "history is a universal [gki-1]"
    (universal history))


  (cl:comment "process is a universal [bsm-1]"
    (universal process))


  (cl:comment "quality is a universal [mit-1]"
    (universal quality))


  (cl:comment "function is a universal [rym-1]"
    (universal function))


  (cl:comment "fiat-line is a universal [spk-1]"
    (universal fiat-line))


  (cl:comment "occurrent is a universal [lkt-1]"
    (universal occurrent))


  (cl:comment "continuant is a universal [axs-1]"
    (universal continuant))


  (cl:comment "fiat-point is a universal [rns-1]"
    (universal fiat-point))


  (cl:comment "disposition is a universal [mld-1]"
    (universal disposition))


  (cl:comment "fiat-surface is a universal [ebw-1]"
    (universal fiat-surface))


  (cl:comment "spatial-region is a universal [qga-1]"
    (universal spatial-region))


  (cl:comment "material-entity is a universal [hru-1]"
    (universal material-entity))


  (cl:comment "temporal-region is a universal [toj-1]"
    (universal temporal-region))


  (cl:comment "fiat-object-part is a universal [csp-1]"
    (universal fiat-object-part))


  (cl:comment "object-aggregate is a universal [cqv-1]"
    (universal object-aggregate))


  (cl:comment "process-boundary is a universal [zqv-1]"
    (universal process-boundary))


  (cl:comment "temporal-instant is a universal [bjs-1]"
    (universal temporal-instant))


  (cl:comment "immaterial-entity is a universal [zcc-1]"
    (universal immaterial-entity))


  (cl:comment "realizable-entity is a universal [gpp-1]"
    (universal realizable-entity))


  (cl:comment "temporal-interval is a universal [kuz-1]"
    (universal temporal-interval))


  (cl:comment "relational-quality is a universal [zrp-1]"
    (universal relational-quality))


  (cl:comment "spatiotemporal-region is a universal [mdh-1]"
    (universal spatiotemporal-region))


  (cl:comment "independent-continuant is a universal [ufw-1]"
    (universal independent-continuant))


  (cl:comment "continuant-fiat-boundary is a universal [zvi-1]"
    (universal continuant-fiat-boundary))


  (cl:comment "one-dimensional-spatial-region is a universal [zwl-1]"
    (universal one-dimensional-spatial-region))


  (cl:comment "two-dimensional-spatial-region is a universal [whi-1]"
    (universal two-dimensional-spatial-region))


  (cl:comment "one-dimensional-temporal-region is a universal [qar-1]"
    (universal one-dimensional-temporal-region))


  (cl:comment "zero-dimensional-spatial-region is a universal [vij-1]"
    (universal zero-dimensional-spatial-region))


  (cl:comment "generically-dependent-continuant is a universal [qiz-1]"
    (universal generically-dependent-continuant))


  (cl:comment "three-dimensional-spatial-region is a universal [qov-1]"
    (universal three-dimensional-spatial-region))


  (cl:comment "zero-dimensional-temporal-region is a universal [bau-1]"
    (universal zero-dimensional-temporal-region))


  (cl:comment "specifically-dependent-continuant is a universal [wda-1]"
    (universal specifically-dependent-continuant))


  (cl:comment "universals are not particulars [qkp-1]"
    (not (exists (x) (and (universal x) (particular x)))))


  (cl:comment "history is subclass of process [abo-1]"
    (forall (t x)
     (if (instance-of x history t) (instance-of x process t))))


  (cl:comment "process is subclass of occurrent [lso-1]"
    (forall (t x)
     (if (instance-of x process t) (instance-of x occurrent t))))


  (cl:comment "function is subclass of disposition [lnj-1]"
    (forall (t x)
     (if (instance-of x function t) (instance-of x disposition t))))


  (cl:comment "object is subclass of material-entity [vbm-1]"
    (forall (t x)
     (if (instance-of x object t) (instance-of x material-entity t))))


  (cl:comment "role is subclass of realizable-entity [tcp-1]"
    (forall (t x)
     (if (instance-of x role t) (instance-of x realizable-entity t))))


  (cl:comment "site is subclass of immaterial-entity [tcd-1]"
    (forall (t x)
     (if (instance-of x site t) (instance-of x immaterial-entity t))))


  (cl:comment "If something is an instance of temporal region at t, then t is part of that temporal region [njq-1]"
    (forall (ti t)
     (if (instance-of ti temporal-region t) (temporal-part-of t ti))))


  (cl:comment "temporal-region is subclass of occurrent [ejl-1]"
    (forall (t x)
     (if (instance-of x temporal-region t) (instance-of x occurrent t))))


  (cl:comment "disposition, role are mutually disjoint [bwk-1]"
    (and
     (not
      (exists (x t)
       (and (instance-of x disposition t) (instance-of x role t))))))


  (cl:comment "process-boundary is subclass of occurrent [xot-1]"
    (forall (t x)
     (if (instance-of x process-boundary t) (instance-of x occurrent t))))


  (cl:comment "relational-quality is subclass of quality [taj-1]"
    (forall (t x)
     (if (instance-of x relational-quality t) (instance-of x quality t))))


  (cl:comment "disposition is subclass of realizable-entity [fxd-1]"
    (forall (t x)
     (if (instance-of x disposition t)
      (instance-of x realizable-entity t))))


  (cl:comment "continuant, occurrent are mutually disjoint [wrf-1]"
    (and
     (not
      (exists (x t)
       (and (instance-of x continuant t) (instance-of x occurrent t))))))


  (cl:comment "spatiotemporal-region is subclass of occurrent [les-1]"
    (forall (t x)
     (if (instance-of x spatiotemporal-region t)
      (instance-of x occurrent t))))


  (cl:comment "fiat-object-part is subclass of material-entity [lal-1]"
    (forall (t x)
     (if (instance-of x fiat-object-part t)
      (instance-of x material-entity t))))


  (cl:comment "object-aggregate is subclass of material-entity [fda-1]"
    (forall (t x)
     (if (instance-of x object-aggregate t)
      (instance-of x material-entity t))))


  (cl:comment "spatial-region is subclass of immaterial-entity [bre-1]"
    (forall (t x)
     (if (instance-of x spatial-region t)
      (instance-of x immaterial-entity t))))


  (cl:comment "independent-continuant is subclass of continuant [wyq-1]"
    (forall (t x)
     (if (instance-of x independent-continuant t)
      (instance-of x continuant t))))


  (cl:comment "fiat-line is subclass of continuant-fiat-boundary [dhy-1]"
    (forall (t x)
     (if (instance-of x fiat-line t)
      (instance-of x continuant-fiat-boundary t))))


  (cl:comment "quality, realizable-entity are mutually disjoint [ksk-1]"
    (and
     (not
      (exists (x t)
       (and (instance-of x quality t)
        (instance-of x realizable-entity t))))))


  (cl:comment "fiat-point is subclass of continuant-fiat-boundary [xlm-1]"
    (forall (t x)
     (if (instance-of x fiat-point t)
      (instance-of x continuant-fiat-boundary t))))


  (cl:comment "fiat-surface is subclass of continuant-fiat-boundary [kfj-1]"
    (forall (t x)
     (if (instance-of x fiat-surface t)
      (instance-of x continuant-fiat-boundary t))))


  (cl:comment "material-entity is subclass of independent-continuant [faf-1]"
    (forall (t x)
     (if (instance-of x material-entity t)
      (instance-of x independent-continuant t))))


  (cl:comment "immaterial-entity is subclass of independent-continuant [bzp-1]"
    (forall (t x)
     (if (instance-of x immaterial-entity t)
      (instance-of x independent-continuant t))))


  (cl:comment "quality is subclass of specifically-dependent-continuant [nbm-1]"
    (forall (t x)
     (if (instance-of x quality t)
      (instance-of x specifically-dependent-continuant t))))


  (cl:comment "continuant-fiat-boundary is subclass of immaterial-entity [tgs-1]"
    (forall (t x)
     (if (instance-of x continuant-fiat-boundary t)
      (instance-of x immaterial-entity t))))


  (cl:comment "material-entity, immaterial-entity are mutually disjoint [sij-1]"
    (and
     (not
      (exists (x t)
       (and (instance-of x material-entity t)
        (instance-of x immaterial-entity t))))))


  (cl:comment "generically-dependent-continuant is subclass of continuant [zyw-1]"
    (forall (t x)
     (if (instance-of x generically-dependent-continuant t)
      (instance-of x continuant t))))


  (cl:comment "specifically-dependent-continuant is subclass of continuant [dhv-1]"
    (forall (t x)
     (if (instance-of x specifically-dependent-continuant t)
      (instance-of x continuant t))))


  (cl:comment "one-dimensional-spatial-region is subclass of spatial-region [fzn-1]"
    (forall (t x)
     (if (instance-of x one-dimensional-spatial-region t)
      (instance-of x spatial-region t))))


  (cl:comment "two-dimensional-spatial-region is subclass of spatial-region [abo-1]"
    (forall (t x)
     (if (instance-of x two-dimensional-spatial-region t)
      (instance-of x spatial-region t))))


  (cl:comment "zero-dimensional-spatial-region is subclass of spatial-region [abh-1]"
    (forall (t x)
     (if (instance-of x zero-dimensional-spatial-region t)
      (instance-of x spatial-region t))))


  (cl:comment "one-dimensional-temporal-region is subclass of temporal-region [fpd-1]"
    (forall (t x)
     (if (instance-of x one-dimensional-temporal-region t)
      (instance-of x temporal-region t))))


  (cl:comment "three-dimensional-spatial-region is subclass of spatial-region [apt-1]"
    (forall (t x)
     (if (instance-of x three-dimensional-spatial-region t)
      (instance-of x spatial-region t))))


  (cl:comment "zero-dimensional-temporal-region is subclass of temporal-region [pvu-1]"
    (forall (t x)
     (if (instance-of x zero-dimensional-temporal-region t)
      (instance-of x temporal-region t))))


  (cl:comment "temporal-instant is subclass of zero-dimensional-temporal-region [bjp-1]"
    (forall (t x)
     (if (instance-of x temporal-instant t)
      (instance-of x zero-dimensional-temporal-region t))))


  (cl:comment "temporal-interval is subclass of one-dimensional-temporal-region [fye-1]"
    (forall (t x)
     (if (instance-of x temporal-interval t)
      (instance-of x one-dimensional-temporal-region t))))


  (cl:comment "Entity is either universal or particular, so not all are instantiated. Instead make a predicate 'entity' analogous to particular universal [vgn-1]"
    (forall (x)
     (if
      (exists (t)
       (or (instance-of x continuant t) (instance-of x occurrent t)))
      (entity x))))


  (cl:comment "realizable-entity is subclass of specifically-dependent-continuant [qix-1]"
    (forall (t x)
     (if (instance-of x realizable-entity t)
      (instance-of x specifically-dependent-continuant t))))


  (cl:comment "If something is a role at any time then as long as it exists it is a role. [hxo-1]"
    (forall (x)
     (if (exists (t) (instance-of x role t))
      (forall (t) (if (exists-at x t) (instance-of x role t))))))


  (cl:comment "If something is a site at any time then as long as it exists it is a site. [txn-1]"
    (forall (x)
     (if (exists (t) (instance-of x site t))
      (forall (t) (if (exists-at x t) (instance-of x site t))))))


  (cl:comment "If something is a quality at any time then as long as it exists it is a quality. [jdo-1]"
    (forall (x)
     (if (exists (t) (instance-of x quality t))
      (forall (t) (if (exists-at x t) (instance-of x quality t))))))


  (cl:comment "If something is a function at any time then as long as it exists it is a function. [hww-1]"
    (forall (x)
     (if (exists (t) (instance-of x function t))
      (forall (t) (if (exists-at x t) (instance-of x function t))))))


  (cl:comment "one-dimensional-temporal-region, zero-dimensional-temporal-region are mutually disjoint [zkj-1]"
    (and
     (not
      (exists (x t)
       (and (instance-of x one-dimensional-temporal-region t)
        (instance-of x zero-dimensional-temporal-region t))))))


  (cl:comment "If something is a fiat-line at any time then as long as it exists it is a fiat-line. [ylr-1]"
    (forall (x)
     (if (exists (t) (instance-of x fiat-line t))
      (forall (t) (if (exists-at x t) (instance-of x fiat-line t))))))


  (cl:comment "If something is a continuant at any time then as long as it exists it is a continuant. [ghs-1]"
    (forall (x)
     (if (exists (t) (instance-of x continuant t))
      (forall (t) (if (exists-at x t) (instance-of x continuant t))))))


  (cl:comment "If something is a fiat-point at any time then as long as it exists it is a fiat-point. [cqf-1]"
    (forall (x)
     (if (exists (t) (instance-of x fiat-point t))
      (forall (t) (if (exists-at x t) (instance-of x fiat-point t))))))


  (cl:comment "If something is a disposition at any time then as long as it exists it is a disposition. [ijx-1]"
    (forall (x)
     (if (exists (t) (instance-of x disposition t))
      (forall (t) (if (exists-at x t) (instance-of x disposition t))))))


  (cl:comment "If something is a fiat-surface at any time then as long as it exists it is a fiat-surface. [dyv-1]"
    (forall (x)
     (if (exists (t) (instance-of x fiat-surface t))
      (forall (t) (if (exists-at x t) (instance-of x fiat-surface t))))))


  (cl:comment "If something is a spatial-region at any time then as long as it exists it is a spatial-region. [thk-1]"
    (forall (x)
     (if (exists (t) (instance-of x spatial-region t))
      (forall (t) (if (exists-at x t) (instance-of x spatial-region t))))))


  (cl:comment "If something is a material-entity at any time then as long as it exists it is a material-entity. [opd-1]"
    (forall (x)
     (if (exists (t) (instance-of x material-entity t))
      (forall (t)
       (if (exists-at x t) (instance-of x material-entity t))))))


  (cl:comment "If something is a immaterial-entity at any time then as long as it exists it is a immaterial-entity. [nlc-1]"
    (forall (x)
     (if (exists (t) (instance-of x immaterial-entity t))
      (forall (t)
       (if (exists-at x t) (instance-of x immaterial-entity t))))))


  (cl:comment "If something is a realizable-entity at any time then as long as it exists it is a realizable-entity. [gsg-1]"
    (forall (x)
     (if (exists (t) (instance-of x realizable-entity t))
      (forall (t)
       (if (exists-at x t) (instance-of x realizable-entity t))))))


  (cl:comment "If something is a relational-quality at any time then as long as it exists it is a relational-quality. [jyh-1]"
    (forall (x)
     (if (exists (t) (instance-of x relational-quality t))
      (forall (t)
       (if (exists-at x t) (instance-of x relational-quality t))))))


  (cl:comment "If something is a independent-continuant at any time then as long as it exists it is a independent-continuant. [otk-1]"
    (forall (x)
     (if (exists (t) (instance-of x independent-continuant t))
      (forall (t)
       (if (exists-at x t) (instance-of x independent-continuant t))))))


  (cl:comment "If something is a continuant-fiat-boundary at any time then as long as it exists it is a continuant-fiat-boundary. [yuh-1]"
    (forall (x)
     (if (exists (t) (instance-of x continuant-fiat-boundary t))
      (forall (t)
       (if (exists-at x t) (instance-of x continuant-fiat-boundary t))))))


  (cl:comment "If something is a one-dimensional-spatial-region at any time then as long as it exists it is a one-dimensional-spatial-region. [bld-1]"
    (forall (x)
     (if (exists (t) (instance-of x one-dimensional-spatial-region t))
      (forall (t)
       (if (exists-at x t)
        (instance-of x one-dimensional-spatial-region t))))))


  (cl:comment "If something is a two-dimensional-spatial-region at any time then as long as it exists it is a two-dimensional-spatial-region. [uld-1]"
    (forall (x)
     (if (exists (t) (instance-of x two-dimensional-spatial-region t))
      (forall (t)
       (if (exists-at x t)
        (instance-of x two-dimensional-spatial-region t))))))


  (cl:comment "If something is a zero-dimensional-spatial-region at any time then as long as it exists it is a zero-dimensional-spatial-region. [vsa-1]"
    (forall (x)
     (if (exists (t) (instance-of x zero-dimensional-spatial-region t))
      (forall (t)
       (if (exists-at x t)
        (instance-of x zero-dimensional-spatial-region t))))))


  (cl:comment "If something is a generically-dependent-continuant at any time then as long as it exists it is a generically-dependent-continuant. [iup-1]"
    (forall (x)
     (if (exists (t) (instance-of x generically-dependent-continuant t))
      (forall (t)
       (if (exists-at x t)
        (instance-of x generically-dependent-continuant t))))))


  (cl:comment "If something is a three-dimensional-spatial-region at any time then as long as it exists it is a three-dimensional-spatial-region. [qpr-1]"
    (forall (x)
     (if (exists (t) (instance-of x three-dimensional-spatial-region t))
      (forall (t)
       (if (exists-at x t)
        (instance-of x three-dimensional-spatial-region t))))))


  (cl:comment "If something is a specifically-dependent-continuant at any time then as long as it exists it is a specifically-dependent-continuant. [hke-1]"
    (forall (x)
     (if (exists (t) (instance-of x specifically-dependent-continuant t))
      (forall (t)
       (if (exists-at x t)
        (instance-of x specifically-dependent-continuant t))))))


  (cl:comment "No occurrent changes type during its existence [ayr-1]"
    (forall (o)
     (if (exists (t) (instance-of o occurrent t))
      (forall (u)
       (if (exists (t) (instance-of o u t))
        (forall (t)
         (iff (instance-of o occurrent t) (instance-of o u t))))))))


  (cl:comment "fiat-surface, fiat-line, fiat-point are mutually disjoint [sjf-1]"
    (and
     (not
      (exists (x t)
       (and (instance-of x fiat-surface t) (instance-of x fiat-line t))))
     (not
      (exists (x t)
       (and (instance-of x fiat-surface t)
        (instance-of x fiat-point t))))
     (not
      (exists (x t)
       (and (instance-of x fiat-line t) (instance-of x fiat-point t))))))


  (cl:comment "site, spatial-region, continuant-fiat-boundary are mutually disjoint [twc-1]"
    (and
     (not
      (exists (x t)
       (and (instance-of x site t) (instance-of x spatial-region t))))
     (not
      (exists (x t)
       (and (instance-of x site t)
        (instance-of x continuant-fiat-boundary t))))
     (not
      (exists (x t)
       (and (instance-of x spatial-region t)
        (instance-of x continuant-fiat-boundary t))))))


  (cl:comment "specifically-dependent-continuant, independent-continuant, generically-dependent-continuant are mutually disjoint [cig-1]"
    (and
     (not
      (exists (x t)
       (and (instance-of x specifically-dependent-continuant t)
        (instance-of x independent-continuant t))))
     (not
      (exists (x t)
       (and (instance-of x specifically-dependent-continuant t)
        (instance-of x generically-dependent-continuant t))))
     (not
      (exists (x t)
       (and (instance-of x independent-continuant t)
        (instance-of x generically-dependent-continuant t))))))


  (cl:comment "process, spatiotemporal-region, process-boundary, temporal-region are mutually disjoint [mem-1]"
    (and
     (not
      (exists (x t)
       (and (instance-of x process t)
        (instance-of x spatiotemporal-region t))))
     (not
      (exists (x t)
       (and (instance-of x process t)
        (instance-of x process-boundary t))))
     (not
      (exists (x t)
       (and (instance-of x process t)
        (instance-of x temporal-region t))))
     (not
      (exists (x t)
       (and (instance-of x spatiotemporal-region t)
        (instance-of x process-boundary t))))
     (not
      (exists (x t)
       (and (instance-of x spatiotemporal-region t)
        (instance-of x temporal-region t))))
     (not
      (exists (x t)
       (and (instance-of x process-boundary t)
        (instance-of x temporal-region t))))))


  (cl:comment "continuant, material-entity, object, fiat-object-part, object-aggregate, site, immaterial-entity, continuant-fiat-boundary, fiat-surface, fiat-line, fiat-point, spatial-region, three-dimensional-spatial-region, two-dimensional-spatial-region, one-dimensional-spatial-region, zero-dimensional-spatial-region, independent-continuant, generically-dependent-continuant, specifically-dependent-continuant, quality, relational-quality, function, disposition, realizable-entity, role, occurrent, process, process-boundary, temporal-region, zero-dimensional-temporal-region, temporal-instant, one-dimensional-temporal-region, temporal-interval, history, spatiotemporal-region are all different [xtf-1]"
    (distinct continuant material-entity object fiat-object-part
     object-aggregate site immaterial-entity continuant-fiat-boundary
     fiat-surface fiat-line fiat-point spatial-region
     three-dimensional-spatial-region two-dimensional-spatial-region
     one-dimensional-spatial-region zero-dimensional-spatial-region
     independent-continuant generically-dependent-continuant
     specifically-dependent-continuant quality relational-quality
     function disposition realizable-entity role occurrent process
     process-boundary temporal-region zero-dimensional-temporal-region
     temporal-instant one-dimensional-temporal-region temporal-interval
     history spatiotemporal-region))


  (cl:comment "zero-dimensional-spatial-region, one-dimensional-spatial-region, two-dimensional-spatial-region, three-dimensional-spatial-region are mutually disjoint [luc-1]"
    (and
     (not
      (exists (x t)
       (and (instance-of x zero-dimensional-spatial-region t)
        (instance-of x one-dimensional-spatial-region t))))
     (not
      (exists (x t)
       (and (instance-of x zero-dimensional-spatial-region t)
        (instance-of x two-dimensional-spatial-region t))))
     (not
      (exists (x t)
       (and (instance-of x zero-dimensional-spatial-region t)
        (instance-of x three-dimensional-spatial-region t))))
     (not
      (exists (x t)
       (and (instance-of x one-dimensional-spatial-region t)
        (instance-of x two-dimensional-spatial-region t))))
     (not
      (exists (x t)
       (and (instance-of x one-dimensional-spatial-region t)
        (instance-of x three-dimensional-spatial-region t))))
     (not
      (exists (x t)
       (and (instance-of x two-dimensional-spatial-region t)
        (instance-of x three-dimensional-spatial-region t))))))

)))