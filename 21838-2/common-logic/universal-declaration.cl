(cl:comment '
BFO 2020 Axiomatization, generated 2020/07/26
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/universal declaration.cl

   (cl:outdiscourse particular entity temporal-part-of universal exists-at instance-of)

  (cl:comment "1. two-dimensional-spatial-region is subclass of spatial-region"
    (forall (t x)
     (if (instance-of x two-dimensional-spatial-region t)
      (instance-of x spatial-region t))))


  (cl:comment "2. If something is a one-dimensional-spatial-region at any time then as long as it exists it is a one-dimensional-spatial-region."
    (forall (x)
     (if (exists (t) (instance-of x one-dimensional-spatial-region t))
      (forall (t)
       (if (exists-at x t)
        (instance-of x one-dimensional-spatial-region t))))))


  (cl:comment "3. If something is a relational-quality at any time then as long as it exists it is a relational-quality."
    (forall (x)
     (if (exists (t) (instance-of x relational-quality t))
      (forall (t)
       (if (exists-at x t) (instance-of x relational-quality t))))))


  (cl:comment "4. spatiotemporal-region is subclass of occurrent"
    (forall (t x)
     (if (instance-of x spatiotemporal-region t)
      (instance-of x occurrent t))))


  (cl:comment "5. fiat-surface is a universal"
    (universal fiat-surface))


  (cl:comment "6. three-dimensional-spatial-region is a universal"
    (universal three-dimensional-spatial-region))


  (cl:comment "7. fiat-object-part is a universal"
    (universal fiat-object-part))


  (cl:comment "8. realizable-entity is a universal"
    (universal realizable-entity))


  (cl:comment "9. site is a universal"
    (universal site))


  (cl:comment "10. one-dimensional-temporal-region is a universal"
    (universal one-dimensional-temporal-region))


  (cl:comment "11. site, spatial-region, continuant-fiat-boundary are mutually disjoint"
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


  (cl:comment "12. material-entity, immaterial-entity are mutually disjoint"
    (and
     (not
      (exists (x t)
       (and (instance-of x material-entity t)
        (instance-of x immaterial-entity t))))))


  (cl:comment "13. fiat-point is subclass of continuant-fiat-boundary"
    (forall (t x)
     (if (instance-of x fiat-point t)
      (instance-of x continuant-fiat-boundary t))))


  (cl:comment "14. relational-quality is subclass of quality"
    (forall (t x)
     (if (instance-of x relational-quality t) (instance-of x quality t))))


  (cl:comment "15. occurrent is a universal"
    (universal occurrent))


  (cl:comment "16. quality is a universal"
    (universal quality))


  (cl:comment "17. If something is a zero-dimensional-spatial-region at any time then as long as it exists it is a zero-dimensional-spatial-region."
    (forall (x)
     (if (exists (t) (instance-of x zero-dimensional-spatial-region t))
      (forall (t)
       (if (exists-at x t)
        (instance-of x zero-dimensional-spatial-region t))))))


  (cl:comment "18. fiat-surface is subclass of continuant-fiat-boundary"
    (forall (t x)
     (if (instance-of x fiat-surface t)
      (instance-of x continuant-fiat-boundary t))))


  (cl:comment "19. If something is a continuant-fiat-boundary at any time then as long as it exists it is a continuant-fiat-boundary."
    (forall (x)
     (if (exists (t) (instance-of x continuant-fiat-boundary t))
      (forall (t)
       (if (exists-at x t) (instance-of x continuant-fiat-boundary t))))))


  (cl:comment "20. generically-dependent-continuant is subclass of continuant"
    (forall (t x)
     (if (instance-of x generically-dependent-continuant t)
      (instance-of x continuant t))))


  (cl:comment "21. fiat-line is a universal"
    (universal fiat-line))


  (cl:comment "22. spatiotemporal-region is a universal"
    (universal spatiotemporal-region))


  (cl:comment "23. spatial-region is a universal"
    (universal spatial-region))


  (cl:comment "24. zero-dimensional-temporal-region is a universal"
    (universal zero-dimensional-temporal-region))


  (cl:comment "25. role is subclass of realizable-entity"
    (forall (t x)
     (if (instance-of x role t) (instance-of x realizable-entity t))))


  (cl:comment "26. If something is a independent-continuant at any time then as long as it exists it is a independent-continuant."
    (forall (x)
     (if (exists (t) (instance-of x independent-continuant t))
      (forall (t)
       (if (exists-at x t) (instance-of x independent-continuant t))))))


  (cl:comment "27. specifically-dependent-continuant, independent-continuant, generically-dependent-continuant are mutually disjoint"
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


  (cl:comment "28. continuant is a universal"
    (universal continuant))


  (cl:comment "29. zero-dimensional-spatial-region is subclass of spatial-region"
    (forall (t x)
     (if (instance-of x zero-dimensional-spatial-region t)
      (instance-of x spatial-region t))))


  (cl:comment "30. If something is a disposition at any time then as long as it exists it is a disposition."
    (forall (x)
     (if (exists (t) (instance-of x disposition t))
      (forall (t) (if (exists-at x t) (instance-of x disposition t))))))


  (cl:comment "31. If something is a fiat-point at any time then as long as it exists it is a fiat-point."
    (forall (x)
     (if (exists (t) (instance-of x fiat-point t))
      (forall (t) (if (exists-at x t) (instance-of x fiat-point t))))))


  (cl:comment "32. immaterial-entity is a universal"
    (universal immaterial-entity))


  (cl:comment "33. zero-dimensional-temporal-region is subclass of temporal-region"
    (forall (t x)
     (if (instance-of x zero-dimensional-temporal-region t)
      (instance-of x temporal-region t))))


  (cl:comment "34. If something is a three-dimensional-spatial-region at any time then as long as it exists it is a three-dimensional-spatial-region."
    (forall (x)
     (if (exists (t) (instance-of x three-dimensional-spatial-region t))
      (forall (t)
       (if (exists-at x t)
        (instance-of x three-dimensional-spatial-region t))))))


  (cl:comment "35. temporal-region is subclass of occurrent"
    (forall (t x)
     (if (instance-of x temporal-region t) (instance-of x occurrent t))))


  (cl:comment "36. one-dimensional-temporal-region is subclass of temporal-region"
    (forall (t x)
     (if (instance-of x one-dimensional-temporal-region t)
      (instance-of x temporal-region t))))


  (cl:comment "37. role is a universal"
    (universal role))


  (cl:comment "38. If something is a continuant at any time then as long as it exists it is a continuant."
    (forall (x)
     (if (exists (t) (instance-of x continuant t))
      (forall (t) (if (exists-at x t) (instance-of x continuant t))))))


  (cl:comment "39. If something is a quality at any time then as long as it exists it is a quality."
    (forall (x)
     (if (exists (t) (instance-of x quality t))
      (forall (t) (if (exists-at x t) (instance-of x quality t))))))


  (cl:comment "40. material-entity is subclass of independent-continuant"
    (forall (t x)
     (if (instance-of x material-entity t)
      (instance-of x independent-continuant t))))


  (cl:comment "41. site is subclass of immaterial-entity"
    (forall (t x)
     (if (instance-of x site t) (instance-of x immaterial-entity t))))


  (cl:comment "42. If something is an instance of temporal region at t, then t is part of that temporal region"
    (forall (ti t)
     (if (instance-of ti temporal-region t) (temporal-part-of t ti))))


  (cl:comment "43. quality is subclass of specifically-dependent-continuant"
    (forall (t x)
     (if (instance-of x quality t)
      (instance-of x specifically-dependent-continuant t))))


  (cl:comment "44. Entity is either universal or particular, so not all are instantiated. Instead make a predicate 'entity' analogous to particular universal"
    (forall (x)
     (if
      (exists (t)
       (or (instance-of x continuant t) (instance-of x occurrent t)))
      (entity x))))


  (cl:comment "45. If something is a function at any time then as long as it exists it is a function."
    (forall (x)
     (if (exists (t) (instance-of x function t))
      (forall (t) (if (exists-at x t) (instance-of x function t))))))


  (cl:comment "46. zero-dimensional-spatial-region is a universal"
    (universal zero-dimensional-spatial-region))


  (cl:comment "47. If something is a role at any time then as long as it exists it is a role."
    (forall (x)
     (if (exists (t) (instance-of x role t))
      (forall (t) (if (exists-at x t) (instance-of x role t))))))


  (cl:comment "48. specifically-dependent-continuant is subclass of continuant"
    (forall (t x)
     (if (instance-of x specifically-dependent-continuant t)
      (instance-of x continuant t))))


  (cl:comment "49. disposition, role are mutually disjoint"
    (and
     (not
      (exists (x t)
       (and (instance-of x disposition t) (instance-of x role t))))))


  (cl:comment "50. temporal-interval is subclass of one-dimensional-temporal-region"
    (forall (t x)
     (if (instance-of x temporal-interval t)
      (instance-of x one-dimensional-temporal-region t))))


  (cl:comment "51. fiat-point is a universal"
    (universal fiat-point))


  (cl:comment "52. If something is a fiat-line at any time then as long as it exists it is a fiat-line."
    (forall (x)
     (if (exists (t) (instance-of x fiat-line t))
      (forall (t) (if (exists-at x t) (instance-of x fiat-line t))))))


  (cl:comment "53. independent-continuant is subclass of continuant"
    (forall (t x)
     (if (instance-of x independent-continuant t)
      (instance-of x continuant t))))


  (cl:comment "54. material-entity is a universal"
    (universal material-entity))


  (cl:comment "55. relational-quality is a universal"
    (universal relational-quality))


  (cl:comment "56. fiat-line is subclass of continuant-fiat-boundary"
    (forall (t x)
     (if (instance-of x fiat-line t)
      (instance-of x continuant-fiat-boundary t))))


  (cl:comment "57. disposition is a universal"
    (universal disposition))


  (cl:comment "58. fiat-surface, fiat-line, fiat-point are mutually disjoint"
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


  (cl:comment "59. If something is a immaterial-entity at any time then as long as it exists it is a immaterial-entity."
    (forall (x)
     (if (exists (t) (instance-of x immaterial-entity t))
      (forall (t)
       (if (exists-at x t) (instance-of x immaterial-entity t))))))


  (cl:comment "60. universals are not particulars"
    (not (exists (x) (and (universal x) (particular x)))))


  (cl:comment "61. history is a universal"
    (universal history))


  (cl:comment "62. spatial-region is subclass of immaterial-entity"
    (forall (t x)
     (if (instance-of x spatial-region t)
      (instance-of x immaterial-entity t))))


  (cl:comment "63. object is subclass of material-entity"
    (forall (t x)
     (if (instance-of x object t) (instance-of x material-entity t))))


  (cl:comment "64. process-boundary is a universal"
    (universal process-boundary))


  (cl:comment "65. fiat-object-part is subclass of material-entity"
    (forall (t x)
     (if (instance-of x fiat-object-part t)
      (instance-of x material-entity t))))


  (cl:comment "66. continuant, material-entity, object, fiat-object-part, object-aggregate, site, immaterial-entity, continuant-fiat-boundary, fiat-surface, fiat-line, fiat-point, spatial-region, three-dimensional-spatial-region, two-dimensional-spatial-region, one-dimensional-spatial-region, zero-dimensional-spatial-region, independent-continuant, generically-dependent-continuant, specifically-dependent-continuant, quality, relational-quality, function, disposition, realizable-entity, role, occurrent, process, process-boundary, temporal-region, zero-dimensional-temporal-region, temporal-instant, one-dimensional-temporal-region, temporal-interval, history, spatiotemporal-region are all different"
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


  (cl:comment "67. If something is a two-dimensional-spatial-region at any time then as long as it exists it is a two-dimensional-spatial-region."
    (forall (x)
     (if (exists (t) (instance-of x two-dimensional-spatial-region t))
      (forall (t)
       (if (exists-at x t)
        (instance-of x two-dimensional-spatial-region t))))))


  (cl:comment "68. If something is a material-entity at any time then as long as it exists it is a material-entity."
    (forall (x)
     (if (exists (t) (instance-of x material-entity t))
      (forall (t)
       (if (exists-at x t) (instance-of x material-entity t))))))


  (cl:comment "69. three-dimensional-spatial-region is subclass of spatial-region"
    (forall (t x)
     (if (instance-of x three-dimensional-spatial-region t)
      (instance-of x spatial-region t))))


  (cl:comment "70. temporal-instant is subclass of zero-dimensional-temporal-region"
    (forall (t x)
     (if (instance-of x temporal-instant t)
      (instance-of x zero-dimensional-temporal-region t))))


  (cl:comment "71. generically-dependent-continuant is a universal"
    (universal generically-dependent-continuant))


  (cl:comment "72. process is a universal"
    (universal process))


  (cl:comment "73. one-dimensional-spatial-region is subclass of spatial-region"
    (forall (t x)
     (if (instance-of x one-dimensional-spatial-region t)
      (instance-of x spatial-region t))))


  (cl:comment "74. function is subclass of disposition"
    (forall (t x)
     (if (instance-of x function t) (instance-of x disposition t))))


  (cl:comment "75. quality, realizable-entity are mutually disjoint"
    (and
     (not
      (exists (x t)
       (and (instance-of x quality t)
        (instance-of x realizable-entity t))))))


  (cl:comment "76. specifically-dependent-continuant is a universal"
    (universal specifically-dependent-continuant))


  (cl:comment "77. process is subclass of occurrent"
    (forall (t x)
     (if (instance-of x process t) (instance-of x occurrent t))))


  (cl:comment "78. No occurrent changes type during its existence"
    (forall (o)
     (if (exists (t) (instance-of o occurrent t))
      (forall (u)
       (if (exists (t) (instance-of o u t))
        (forall (t)
         (iff (instance-of o occurrent t) (instance-of o u t))))))))


  (cl:comment "79. process-boundary is subclass of occurrent"
    (forall (t x)
     (if (instance-of x process-boundary t) (instance-of x occurrent t))))


  (cl:comment "80. continuant, occurrent are mutually disjoint"
    (and
     (not
      (exists (x t)
       (and (instance-of x continuant t) (instance-of x occurrent t))))))


  (cl:comment "81. temporal-instant is a universal"
    (universal temporal-instant))


  (cl:comment "82. two-dimensional-spatial-region is a universal"
    (universal two-dimensional-spatial-region))


  (cl:comment "83. If something is a site at any time then as long as it exists it is a site."
    (forall (x)
     (if (exists (t) (instance-of x site t))
      (forall (t) (if (exists-at x t) (instance-of x site t))))))


  (cl:comment "84. one-dimensional-temporal-region, zero-dimensional-temporal-region are mutually disjoint"
    (and
     (not
      (exists (x t)
       (and (instance-of x one-dimensional-temporal-region t)
        (instance-of x zero-dimensional-temporal-region t))))))


  (cl:comment "85. If something is a fiat-surface at any time then as long as it exists it is a fiat-surface."
    (forall (x)
     (if (exists (t) (instance-of x fiat-surface t))
      (forall (t) (if (exists-at x t) (instance-of x fiat-surface t))))))


  (cl:comment "86. temporal-region is a universal"
    (universal temporal-region))


  (cl:comment "87. If something is a specifically-dependent-continuant at any time then as long as it exists it is a specifically-dependent-continuant."
    (forall (x)
     (if (exists (t) (instance-of x specifically-dependent-continuant t))
      (forall (t)
       (if (exists-at x t)
        (instance-of x specifically-dependent-continuant t))))))


  (cl:comment "88. If something is a spatial-region at any time then as long as it exists it is a spatial-region."
    (forall (x)
     (if (exists (t) (instance-of x spatial-region t))
      (forall (t) (if (exists-at x t) (instance-of x spatial-region t))))))


  (cl:comment "89. immaterial-entity is subclass of independent-continuant"
    (forall (t x)
     (if (instance-of x immaterial-entity t)
      (instance-of x independent-continuant t))))


  (cl:comment "90. independent-continuant is a universal"
    (universal independent-continuant))


  (cl:comment "91. process, spatiotemporal-region, process-boundary, temporal-region are mutually disjoint"
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


  (cl:comment "92. one-dimensional-spatial-region is a universal"
    (universal one-dimensional-spatial-region))


  (cl:comment "93. continuant-fiat-boundary is subclass of immaterial-entity"
    (forall (t x)
     (if (instance-of x continuant-fiat-boundary t)
      (instance-of x immaterial-entity t))))


  (cl:comment "94. temporal-interval is a universal"
    (universal temporal-interval))


  (cl:comment "95. If something is a realizable-entity at any time then as long as it exists it is a realizable-entity."
    (forall (x)
     (if (exists (t) (instance-of x realizable-entity t))
      (forall (t)
       (if (exists-at x t) (instance-of x realizable-entity t))))))


  (cl:comment "96. function is a universal"
    (universal function))


  (cl:comment "97. continuant-fiat-boundary is a universal"
    (universal continuant-fiat-boundary))


  (cl:comment "98. zero-dimensional-spatial-region, one-dimensional-spatial-region, two-dimensional-spatial-region, three-dimensional-spatial-region are mutually disjoint"
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


  (cl:comment "99. If something is a generically-dependent-continuant at any time then as long as it exists it is a generically-dependent-continuant."
    (forall (x)
     (if (exists (t) (instance-of x generically-dependent-continuant t))
      (forall (t)
       (if (exists-at x t)
        (instance-of x generically-dependent-continuant t))))))


  (cl:comment "100. object-aggregate is subclass of material-entity"
    (forall (t x)
     (if (instance-of x object-aggregate t)
      (instance-of x material-entity t))))


  (cl:comment "101. disposition is subclass of realizable-entity"
    (forall (t x)
     (if (instance-of x disposition t)
      (instance-of x realizable-entity t))))


  (cl:comment "102. history is subclass of process"
    (forall (t x)
     (if (instance-of x history t) (instance-of x process t))))


  (cl:comment "103. realizable-entity is subclass of specifically-dependent-continuant"
    (forall (t x)
     (if (instance-of x realizable-entity t)
      (instance-of x specifically-dependent-continuant t))))


  (cl:comment "104. object-aggregate is a universal"
    (universal object-aggregate))


  (cl:comment "105. object is a universal"
    (universal object))

)))