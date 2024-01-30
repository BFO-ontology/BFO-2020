(cl:comment '
BFO 2020 Axiomatization, generated 2024/01/08
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg(at)gmail.com
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


  (cl:comment "spatial-region is a universal [rej-1]"
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


  (cl:comment "history is subclass of process [zuj-1]"
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
    (and (not (= continuant material-entity))
         (not (= continuant object))
         (not (= continuant fiat-object-part))
         (not (= continuant object-aggregate))
         (not (= continuant site))
         (not (= continuant immaterial-entity))
         (not (= continuant continuant-fiat-boundary))
         (not (= continuant fiat-surface))
         (not (= continuant fiat-line))
         (not (= continuant fiat-point))
         (not (= continuant spatial-region))
         (not (= continuant three-dimensional-spatial-region))
         (not (= continuant two-dimensional-spatial-region))
         (not (= continuant one-dimensional-spatial-region))
         (not (= continuant zero-dimensional-spatial-region))
         (not (= continuant independent-continuant))
         (not (= continuant generically-dependent-continuant))
         (not (= continuant specifically-dependent-continuant))
         (not (= continuant quality))
         (not (= continuant relational-quality))
         (not (= continuant function))
         (not (= continuant disposition))
         (not (= continuant realizable-entity))
         (not (= continuant role))
         (not (= continuant occurrent))
         (not (= continuant process))
         (not (= continuant process-boundary))
         (not (= continuant temporal-region))
         (not (= continuant zero-dimensional-temporal-region))
         (not (= continuant temporal-instant))
         (not (= continuant one-dimensional-temporal-region))
         (not (= continuant temporal-interval))
         (not (= continuant history))
         (not (= continuant spatiotemporal-region))
         (not (= material-entity object))
         (not (= material-entity fiat-object-part))
         (not (= material-entity object-aggregate))
         (not (= material-entity site))
         (not (= material-entity immaterial-entity))
         (not (= material-entity continuant-fiat-boundary))
         (not (= material-entity fiat-surface))
         (not (= material-entity fiat-line))
         (not (= material-entity fiat-point))
         (not (= material-entity spatial-region))
         (not (= material-entity three-dimensional-spatial-region))
         (not (= material-entity two-dimensional-spatial-region))
         (not (= material-entity one-dimensional-spatial-region))
         (not (= material-entity zero-dimensional-spatial-region))
         (not (= material-entity independent-continuant))
         (not (= material-entity generically-dependent-continuant))
         (not (= material-entity specifically-dependent-continuant))
         (not (= material-entity quality))
         (not (= material-entity relational-quality))
         (not (= material-entity function))
         (not (= material-entity disposition))
         (not (= material-entity realizable-entity))
         (not (= material-entity role))
         (not (= material-entity occurrent))
         (not (= material-entity process))
         (not (= material-entity process-boundary))
         (not (= material-entity temporal-region))
         (not (= material-entity zero-dimensional-temporal-region))
         (not (= material-entity temporal-instant))
         (not (= material-entity one-dimensional-temporal-region))
         (not (= material-entity temporal-interval))
         (not (= material-entity history))
         (not (= material-entity spatiotemporal-region))
         (not (= object fiat-object-part))
         (not (= object object-aggregate))
         (not (= object site))
         (not (= object immaterial-entity))
         (not (= object continuant-fiat-boundary))
         (not (= object fiat-surface))
         (not (= object fiat-line))
         (not (= object fiat-point))
         (not (= object spatial-region))
         (not (= object three-dimensional-spatial-region))
         (not (= object two-dimensional-spatial-region))
         (not (= object one-dimensional-spatial-region))
         (not (= object zero-dimensional-spatial-region))
         (not (= object independent-continuant))
         (not (= object generically-dependent-continuant))
         (not (= object specifically-dependent-continuant))
         (not (= object quality))
         (not (= object relational-quality))
         (not (= object function))
         (not (= object disposition))
         (not (= object realizable-entity))
         (not (= object role))
         (not (= object occurrent))
         (not (= object process))
         (not (= object process-boundary))
         (not (= object temporal-region))
         (not (= object zero-dimensional-temporal-region))
         (not (= object temporal-instant))
         (not (= object one-dimensional-temporal-region))
         (not (= object temporal-interval))
         (not (= object history))
         (not (= object spatiotemporal-region))
         (not (= fiat-object-part object-aggregate))
         (not (= fiat-object-part site))
         (not (= fiat-object-part immaterial-entity))
         (not (= fiat-object-part continuant-fiat-boundary))
         (not (= fiat-object-part fiat-surface))
         (not (= fiat-object-part fiat-line))
         (not (= fiat-object-part fiat-point))
         (not (= fiat-object-part spatial-region))
         (not (= fiat-object-part three-dimensional-spatial-region))
         (not (= fiat-object-part two-dimensional-spatial-region))
         (not (= fiat-object-part one-dimensional-spatial-region))
         (not (= fiat-object-part zero-dimensional-spatial-region))
         (not (= fiat-object-part independent-continuant))
         (not (= fiat-object-part generically-dependent-continuant))
         (not (= fiat-object-part specifically-dependent-continuant))
         (not (= fiat-object-part quality))
         (not (= fiat-object-part relational-quality))
         (not (= fiat-object-part function))
         (not (= fiat-object-part disposition))
         (not (= fiat-object-part realizable-entity))
         (not (= fiat-object-part role))
         (not (= fiat-object-part occurrent))
         (not (= fiat-object-part process))
         (not (= fiat-object-part process-boundary))
         (not (= fiat-object-part temporal-region))
         (not (= fiat-object-part zero-dimensional-temporal-region))
         (not (= fiat-object-part temporal-instant))
         (not (= fiat-object-part one-dimensional-temporal-region))
         (not (= fiat-object-part temporal-interval))
         (not (= fiat-object-part history))
         (not (= fiat-object-part spatiotemporal-region))
         (not (= object-aggregate site))
         (not (= object-aggregate immaterial-entity))
         (not (= object-aggregate continuant-fiat-boundary))
         (not (= object-aggregate fiat-surface))
         (not (= object-aggregate fiat-line))
         (not (= object-aggregate fiat-point))
         (not (= object-aggregate spatial-region))
         (not (= object-aggregate three-dimensional-spatial-region))
         (not (= object-aggregate two-dimensional-spatial-region))
         (not (= object-aggregate one-dimensional-spatial-region))
         (not (= object-aggregate zero-dimensional-spatial-region))
         (not (= object-aggregate independent-continuant))
         (not (= object-aggregate generically-dependent-continuant))
         (not (= object-aggregate specifically-dependent-continuant))
         (not (= object-aggregate quality))
         (not (= object-aggregate relational-quality))
         (not (= object-aggregate function))
         (not (= object-aggregate disposition))
         (not (= object-aggregate realizable-entity))
         (not (= object-aggregate role))
         (not (= object-aggregate occurrent))
         (not (= object-aggregate process))
         (not (= object-aggregate process-boundary))
         (not (= object-aggregate temporal-region))
         (not (= object-aggregate zero-dimensional-temporal-region))
         (not (= object-aggregate temporal-instant))
         (not (= object-aggregate one-dimensional-temporal-region))
         (not (= object-aggregate temporal-interval))
         (not (= object-aggregate history))
         (not (= object-aggregate spatiotemporal-region))
         (not (= site immaterial-entity))
         (not (= site continuant-fiat-boundary))
         (not (= site fiat-surface))
         (not (= site fiat-line))
         (not (= site fiat-point))
         (not (= site spatial-region))
         (not (= site three-dimensional-spatial-region))
         (not (= site two-dimensional-spatial-region))
         (not (= site one-dimensional-spatial-region))
         (not (= site zero-dimensional-spatial-region))
         (not (= site independent-continuant))
         (not (= site generically-dependent-continuant))
         (not (= site specifically-dependent-continuant))
         (not (= site quality))
         (not (= site relational-quality))
         (not (= site function))
         (not (= site disposition))
         (not (= site realizable-entity))
         (not (= site role))
         (not (= site occurrent))
         (not (= site process))
         (not (= site process-boundary))
         (not (= site temporal-region))
         (not (= site zero-dimensional-temporal-region))
         (not (= site temporal-instant))
         (not (= site one-dimensional-temporal-region))
         (not (= site temporal-interval))
         (not (= site history))
         (not (= site spatiotemporal-region))
         (not (= immaterial-entity continuant-fiat-boundary))
         (not (= immaterial-entity fiat-surface))
         (not (= immaterial-entity fiat-line))
         (not (= immaterial-entity fiat-point))
         (not (= immaterial-entity spatial-region))
         (not (= immaterial-entity three-dimensional-spatial-region))
         (not (= immaterial-entity two-dimensional-spatial-region))
         (not (= immaterial-entity one-dimensional-spatial-region))
         (not (= immaterial-entity zero-dimensional-spatial-region))
         (not (= immaterial-entity independent-continuant))
         (not (= immaterial-entity generically-dependent-continuant))
         (not (= immaterial-entity specifically-dependent-continuant))
         (not (= immaterial-entity quality))
         (not (= immaterial-entity relational-quality))
         (not (= immaterial-entity function))
         (not (= immaterial-entity disposition))
         (not (= immaterial-entity realizable-entity))
         (not (= immaterial-entity role))
         (not (= immaterial-entity occurrent))
         (not (= immaterial-entity process))
         (not (= immaterial-entity process-boundary))
         (not (= immaterial-entity temporal-region))
         (not (= immaterial-entity zero-dimensional-temporal-region))
         (not (= immaterial-entity temporal-instant))
         (not (= immaterial-entity one-dimensional-temporal-region))
         (not (= immaterial-entity temporal-interval))
         (not (= immaterial-entity history))
         (not (= immaterial-entity spatiotemporal-region))
         (not (= continuant-fiat-boundary fiat-surface))
         (not (= continuant-fiat-boundary fiat-line))
         (not (= continuant-fiat-boundary fiat-point))
         (not (= continuant-fiat-boundary spatial-region))
         (not (= continuant-fiat-boundary
                 three-dimensional-spatial-region))
         (not (= continuant-fiat-boundary
                 two-dimensional-spatial-region))
         (not (= continuant-fiat-boundary
                 one-dimensional-spatial-region))
         (not (= continuant-fiat-boundary
                 zero-dimensional-spatial-region))
         (not (= continuant-fiat-boundary independent-continuant))
         (not (= continuant-fiat-boundary
                 generically-dependent-continuant))
         (not (= continuant-fiat-boundary
                 specifically-dependent-continuant))
         (not (= continuant-fiat-boundary quality))
         (not (= continuant-fiat-boundary relational-quality))
         (not (= continuant-fiat-boundary function))
         (not (= continuant-fiat-boundary disposition))
         (not (= continuant-fiat-boundary realizable-entity))
         (not (= continuant-fiat-boundary role))
         (not (= continuant-fiat-boundary occurrent))
         (not (= continuant-fiat-boundary process))
         (not (= continuant-fiat-boundary process-boundary))
         (not (= continuant-fiat-boundary temporal-region))
         (not (= continuant-fiat-boundary
                 zero-dimensional-temporal-region))
         (not (= continuant-fiat-boundary temporal-instant))
         (not (= continuant-fiat-boundary
                 one-dimensional-temporal-region))
         (not (= continuant-fiat-boundary temporal-interval))
         (not (= continuant-fiat-boundary history))
         (not (= continuant-fiat-boundary spatiotemporal-region))
         (not (= fiat-surface fiat-line))
         (not (= fiat-surface fiat-point))
         (not (= fiat-surface spatial-region))
         (not (= fiat-surface three-dimensional-spatial-region))
         (not (= fiat-surface two-dimensional-spatial-region))
         (not (= fiat-surface one-dimensional-spatial-region))
         (not (= fiat-surface zero-dimensional-spatial-region))
         (not (= fiat-surface independent-continuant))
         (not (= fiat-surface generically-dependent-continuant))
         (not (= fiat-surface specifically-dependent-continuant))
         (not (= fiat-surface quality))
         (not (= fiat-surface relational-quality))
         (not (= fiat-surface function))
         (not (= fiat-surface disposition))
         (not (= fiat-surface realizable-entity))
         (not (= fiat-surface role))
         (not (= fiat-surface occurrent))
         (not (= fiat-surface process))
         (not (= fiat-surface process-boundary))
         (not (= fiat-surface temporal-region))
         (not (= fiat-surface zero-dimensional-temporal-region))
         (not (= fiat-surface temporal-instant))
         (not (= fiat-surface one-dimensional-temporal-region))
         (not (= fiat-surface temporal-interval))
         (not (= fiat-surface history))
         (not (= fiat-surface spatiotemporal-region))
         (not (= fiat-line fiat-point))
         (not (= fiat-line spatial-region))
         (not (= fiat-line three-dimensional-spatial-region))
         (not (= fiat-line two-dimensional-spatial-region))
         (not (= fiat-line one-dimensional-spatial-region))
         (not (= fiat-line zero-dimensional-spatial-region))
         (not (= fiat-line independent-continuant))
         (not (= fiat-line generically-dependent-continuant))
         (not (= fiat-line specifically-dependent-continuant))
         (not (= fiat-line quality))
         (not (= fiat-line relational-quality))
         (not (= fiat-line function))
         (not (= fiat-line disposition))
         (not (= fiat-line realizable-entity))
         (not (= fiat-line role))
         (not (= fiat-line occurrent))
         (not (= fiat-line process))
         (not (= fiat-line process-boundary))
         (not (= fiat-line temporal-region))
         (not (= fiat-line zero-dimensional-temporal-region))
         (not (= fiat-line temporal-instant))
         (not (= fiat-line one-dimensional-temporal-region))
         (not (= fiat-line temporal-interval))
         (not (= fiat-line history))
         (not (= fiat-line spatiotemporal-region))
         (not (= fiat-point spatial-region))
         (not (= fiat-point three-dimensional-spatial-region))
         (not (= fiat-point two-dimensional-spatial-region))
         (not (= fiat-point one-dimensional-spatial-region))
         (not (= fiat-point zero-dimensional-spatial-region))
         (not (= fiat-point independent-continuant))
         (not (= fiat-point generically-dependent-continuant))
         (not (= fiat-point specifically-dependent-continuant))
         (not (= fiat-point quality))
         (not (= fiat-point relational-quality))
         (not (= fiat-point function))
         (not (= fiat-point disposition))
         (not (= fiat-point realizable-entity))
         (not (= fiat-point role))
         (not (= fiat-point occurrent))
         (not (= fiat-point process))
         (not (= fiat-point process-boundary))
         (not (= fiat-point temporal-region))
         (not (= fiat-point zero-dimensional-temporal-region))
         (not (= fiat-point temporal-instant))
         (not (= fiat-point one-dimensional-temporal-region))
         (not (= fiat-point temporal-interval))
         (not (= fiat-point history))
         (not (= fiat-point spatiotemporal-region))
         (not (= spatial-region three-dimensional-spatial-region))
         (not (= spatial-region two-dimensional-spatial-region))
         (not (= spatial-region one-dimensional-spatial-region))
         (not (= spatial-region zero-dimensional-spatial-region))
         (not (= spatial-region independent-continuant))
         (not (= spatial-region generically-dependent-continuant))
         (not (= spatial-region specifically-dependent-continuant))
         (not (= spatial-region quality))
         (not (= spatial-region relational-quality))
         (not (= spatial-region function))
         (not (= spatial-region disposition))
         (not (= spatial-region realizable-entity))
         (not (= spatial-region role))
         (not (= spatial-region occurrent))
         (not (= spatial-region process))
         (not (= spatial-region process-boundary))
         (not (= spatial-region temporal-region))
         (not (= spatial-region zero-dimensional-temporal-region))
         (not (= spatial-region temporal-instant))
         (not (= spatial-region one-dimensional-temporal-region))
         (not (= spatial-region temporal-interval))
         (not (= spatial-region history))
         (not (= spatial-region spatiotemporal-region))
         (not (= three-dimensional-spatial-region
                 two-dimensional-spatial-region))
         (not (= three-dimensional-spatial-region
                 one-dimensional-spatial-region))
         (not (= three-dimensional-spatial-region
                 zero-dimensional-spatial-region))
         (not (= three-dimensional-spatial-region
                 independent-continuant))
         (not (= three-dimensional-spatial-region
                 generically-dependent-continuant))
         (not (= three-dimensional-spatial-region
                 specifically-dependent-continuant))
         (not (= three-dimensional-spatial-region quality))
         (not (= three-dimensional-spatial-region relational-quality))
         (not (= three-dimensional-spatial-region function))
         (not (= three-dimensional-spatial-region disposition))
         (not (= three-dimensional-spatial-region realizable-entity))
         (not (= three-dimensional-spatial-region role))
         (not (= three-dimensional-spatial-region occurrent))
         (not (= three-dimensional-spatial-region process))
         (not (= three-dimensional-spatial-region process-boundary))
         (not (= three-dimensional-spatial-region temporal-region))
         (not (= three-dimensional-spatial-region
                 zero-dimensional-temporal-region))
         (not (= three-dimensional-spatial-region temporal-instant))
         (not (= three-dimensional-spatial-region
                 one-dimensional-temporal-region))
         (not (= three-dimensional-spatial-region temporal-interval))
         (not (= three-dimensional-spatial-region history))
         (not (= three-dimensional-spatial-region spatiotemporal-region))
         (not (= two-dimensional-spatial-region
                 one-dimensional-spatial-region))
         (not (= two-dimensional-spatial-region
                 zero-dimensional-spatial-region))
         (not (= two-dimensional-spatial-region independent-continuant))
         (not (= two-dimensional-spatial-region
                 generically-dependent-continuant))
         (not (= two-dimensional-spatial-region
                 specifically-dependent-continuant))
         (not (= two-dimensional-spatial-region quality))
         (not (= two-dimensional-spatial-region relational-quality))
         (not (= two-dimensional-spatial-region function))
         (not (= two-dimensional-spatial-region disposition))
         (not (= two-dimensional-spatial-region realizable-entity))
         (not (= two-dimensional-spatial-region role))
         (not (= two-dimensional-spatial-region occurrent))
         (not (= two-dimensional-spatial-region process))
         (not (= two-dimensional-spatial-region process-boundary))
         (not (= two-dimensional-spatial-region temporal-region))
         (not (= two-dimensional-spatial-region
                 zero-dimensional-temporal-region))
         (not (= two-dimensional-spatial-region temporal-instant))
         (not (= two-dimensional-spatial-region
                 one-dimensional-temporal-region))
         (not (= two-dimensional-spatial-region temporal-interval))
         (not (= two-dimensional-spatial-region history))
         (not (= two-dimensional-spatial-region spatiotemporal-region))
         (not (= one-dimensional-spatial-region
                 zero-dimensional-spatial-region))
         (not (= one-dimensional-spatial-region independent-continuant))
         (not (= one-dimensional-spatial-region
                 generically-dependent-continuant))
         (not (= one-dimensional-spatial-region
                 specifically-dependent-continuant))
         (not (= one-dimensional-spatial-region quality))
         (not (= one-dimensional-spatial-region relational-quality))
         (not (= one-dimensional-spatial-region function))
         (not (= one-dimensional-spatial-region disposition))
         (not (= one-dimensional-spatial-region realizable-entity))
         (not (= one-dimensional-spatial-region role))
         (not (= one-dimensional-spatial-region occurrent))
         (not (= one-dimensional-spatial-region process))
         (not (= one-dimensional-spatial-region process-boundary))
         (not (= one-dimensional-spatial-region temporal-region))
         (not (= one-dimensional-spatial-region
                 zero-dimensional-temporal-region))
         (not (= one-dimensional-spatial-region temporal-instant))
         (not (= one-dimensional-spatial-region
                 one-dimensional-temporal-region))
         (not (= one-dimensional-spatial-region temporal-interval))
         (not (= one-dimensional-spatial-region history))
         (not (= one-dimensional-spatial-region spatiotemporal-region))
         (not (= zero-dimensional-spatial-region independent-continuant))
         (not (= zero-dimensional-spatial-region
                 generically-dependent-continuant))
         (not (= zero-dimensional-spatial-region
                 specifically-dependent-continuant))
         (not (= zero-dimensional-spatial-region quality))
         (not (= zero-dimensional-spatial-region relational-quality))
         (not (= zero-dimensional-spatial-region function))
         (not (= zero-dimensional-spatial-region disposition))
         (not (= zero-dimensional-spatial-region realizable-entity))
         (not (= zero-dimensional-spatial-region role))
         (not (= zero-dimensional-spatial-region occurrent))
         (not (= zero-dimensional-spatial-region process))
         (not (= zero-dimensional-spatial-region process-boundary))
         (not (= zero-dimensional-spatial-region temporal-region))
         (not (= zero-dimensional-spatial-region
                 zero-dimensional-temporal-region))
         (not (= zero-dimensional-spatial-region temporal-instant))
         (not (= zero-dimensional-spatial-region
                 one-dimensional-temporal-region))
         (not (= zero-dimensional-spatial-region temporal-interval))
         (not (= zero-dimensional-spatial-region history))
         (not (= zero-dimensional-spatial-region spatiotemporal-region))
         (not (= independent-continuant
                 generically-dependent-continuant))
         (not (= independent-continuant
                 specifically-dependent-continuant))
         (not (= independent-continuant quality))
         (not (= independent-continuant relational-quality))
         (not (= independent-continuant function))
         (not (= independent-continuant disposition))
         (not (= independent-continuant realizable-entity))
         (not (= independent-continuant role))
         (not (= independent-continuant occurrent))
         (not (= independent-continuant process))
         (not (= independent-continuant process-boundary))
         (not (= independent-continuant temporal-region))
         (not (= independent-continuant
                 zero-dimensional-temporal-region))
         (not (= independent-continuant temporal-instant))
         (not (= independent-continuant one-dimensional-temporal-region))
         (not (= independent-continuant temporal-interval))
         (not (= independent-continuant history))
         (not (= independent-continuant spatiotemporal-region))
         (not (= generically-dependent-continuant
                 specifically-dependent-continuant))
         (not (= generically-dependent-continuant quality))
         (not (= generically-dependent-continuant relational-quality))
         (not (= generically-dependent-continuant function))
         (not (= generically-dependent-continuant disposition))
         (not (= generically-dependent-continuant realizable-entity))
         (not (= generically-dependent-continuant role))
         (not (= generically-dependent-continuant occurrent))
         (not (= generically-dependent-continuant process))
         (not (= generically-dependent-continuant process-boundary))
         (not (= generically-dependent-continuant temporal-region))
         (not (= generically-dependent-continuant
                 zero-dimensional-temporal-region))
         (not (= generically-dependent-continuant temporal-instant))
         (not (= generically-dependent-continuant
                 one-dimensional-temporal-region))
         (not (= generically-dependent-continuant temporal-interval))
         (not (= generically-dependent-continuant history))
         (not (= generically-dependent-continuant spatiotemporal-region))
         (not (= specifically-dependent-continuant quality))
         (not (= specifically-dependent-continuant relational-quality))
         (not (= specifically-dependent-continuant function))
         (not (= specifically-dependent-continuant disposition))
         (not (= specifically-dependent-continuant realizable-entity))
         (not (= specifically-dependent-continuant role))
         (not (= specifically-dependent-continuant occurrent))
         (not (= specifically-dependent-continuant process))
         (not (= specifically-dependent-continuant process-boundary))
         (not (= specifically-dependent-continuant temporal-region))
         (not (= specifically-dependent-continuant
                 zero-dimensional-temporal-region))
         (not (= specifically-dependent-continuant temporal-instant))
         (not (= specifically-dependent-continuant
                 one-dimensional-temporal-region))
         (not (= specifically-dependent-continuant temporal-interval))
         (not (= specifically-dependent-continuant history))
         (not (= specifically-dependent-continuant
                 spatiotemporal-region))
         (not (= quality relational-quality))
         (not (= quality function))
         (not (= quality disposition))
         (not (= quality realizable-entity))
         (not (= quality role))
         (not (= quality occurrent))
         (not (= quality process))
         (not (= quality process-boundary))
         (not (= quality temporal-region))
         (not (= quality zero-dimensional-temporal-region))
         (not (= quality temporal-instant))
         (not (= quality one-dimensional-temporal-region))
         (not (= quality temporal-interval))
         (not (= quality history))
         (not (= quality spatiotemporal-region))
         (not (= relational-quality function))
         (not (= relational-quality disposition))
         (not (= relational-quality realizable-entity))
         (not (= relational-quality role))
         (not (= relational-quality occurrent))
         (not (= relational-quality process))
         (not (= relational-quality process-boundary))
         (not (= relational-quality temporal-region))
         (not (= relational-quality zero-dimensional-temporal-region))
         (not (= relational-quality temporal-instant))
         (not (= relational-quality one-dimensional-temporal-region))
         (not (= relational-quality temporal-interval))
         (not (= relational-quality history))
         (not (= relational-quality spatiotemporal-region))
         (not (= function disposition))
         (not (= function realizable-entity))
         (not (= function role))
         (not (= function occurrent))
         (not (= function process))
         (not (= function process-boundary))
         (not (= function temporal-region))
         (not (= function zero-dimensional-temporal-region))
         (not (= function temporal-instant))
         (not (= function one-dimensional-temporal-region))
         (not (= function temporal-interval))
         (not (= function history))
         (not (= function spatiotemporal-region))
         (not (= disposition realizable-entity))
         (not (= disposition role))
         (not (= disposition occurrent))
         (not (= disposition process))
         (not (= disposition process-boundary))
         (not (= disposition temporal-region))
         (not (= disposition zero-dimensional-temporal-region))
         (not (= disposition temporal-instant))
         (not (= disposition one-dimensional-temporal-region))
         (not (= disposition temporal-interval))
         (not (= disposition history))
         (not (= disposition spatiotemporal-region))
         (not (= realizable-entity role))
         (not (= realizable-entity occurrent))
         (not (= realizable-entity process))
         (not (= realizable-entity process-boundary))
         (not (= realizable-entity temporal-region))
         (not (= realizable-entity zero-dimensional-temporal-region))
         (not (= realizable-entity temporal-instant))
         (not (= realizable-entity one-dimensional-temporal-region))
         (not (= realizable-entity temporal-interval))
         (not (= realizable-entity history))
         (not (= realizable-entity spatiotemporal-region))
         (not (= role occurrent))
         (not (= role process))
         (not (= role process-boundary))
         (not (= role temporal-region))
         (not (= role zero-dimensional-temporal-region))
         (not (= role temporal-instant))
         (not (= role one-dimensional-temporal-region))
         (not (= role temporal-interval))
         (not (= role history))
         (not (= role spatiotemporal-region))
         (not (= occurrent process))
         (not (= occurrent process-boundary))
         (not (= occurrent temporal-region))
         (not (= occurrent zero-dimensional-temporal-region))
         (not (= occurrent temporal-instant))
         (not (= occurrent one-dimensional-temporal-region))
         (not (= occurrent temporal-interval))
         (not (= occurrent history))
         (not (= occurrent spatiotemporal-region))
         (not (= process process-boundary))
         (not (= process temporal-region))
         (not (= process zero-dimensional-temporal-region))
         (not (= process temporal-instant))
         (not (= process one-dimensional-temporal-region))
         (not (= process temporal-interval))
         (not (= process history))
         (not (= process spatiotemporal-region))
         (not (= process-boundary temporal-region))
         (not (= process-boundary zero-dimensional-temporal-region))
         (not (= process-boundary temporal-instant))
         (not (= process-boundary one-dimensional-temporal-region))
         (not (= process-boundary temporal-interval))
         (not (= process-boundary history))
         (not (= process-boundary spatiotemporal-region))
         (not (= temporal-region zero-dimensional-temporal-region))
         (not (= temporal-region temporal-instant))
         (not (= temporal-region one-dimensional-temporal-region))
         (not (= temporal-region temporal-interval))
         (not (= temporal-region history))
         (not (= temporal-region spatiotemporal-region))
         (not (= zero-dimensional-temporal-region temporal-instant))
         (not (= zero-dimensional-temporal-region
                 one-dimensional-temporal-region))
         (not (= zero-dimensional-temporal-region temporal-interval))
         (not (= zero-dimensional-temporal-region history))
         (not (= zero-dimensional-temporal-region spatiotemporal-region))
         (not (= temporal-instant one-dimensional-temporal-region))
         (not (= temporal-instant temporal-interval))
         (not (= temporal-instant history))
         (not (= temporal-instant spatiotemporal-region))
         (not (= one-dimensional-temporal-region temporal-interval))
         (not (= one-dimensional-temporal-region history))
         (not (= one-dimensional-temporal-region spatiotemporal-region))
         (not (= temporal-interval history))
         (not (= temporal-interval spatiotemporal-region))
         (not (= history spatiotemporal-region))))


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