(cl:comment '
BFO 2020 Axiomatization, generated 2020/07/26
Author: Alan Ruttenberg - alanruttenberg@gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/specific dependency.cl

   (cl:outdiscourse temporal-part-of material-basis-of participates-in specifically-depended-on-by has-realization exists-at has-first-instant occupies-temporal-region realizes bearer-of specifically-depends-on continuant-part-of has-material-basis inheres-in instance-of)

  (cl:comment "1. The material basis of a disposition is part of the bearer of the disposition"
    (forall (m d b)
     (if
      (and (exists (t) (instance-of m material-entity t))
       (exists (t) (instance-of d disposition t))
       (exists (t) (instance-of b material-entity t)) (inheres-in d b))
      (forall (t)
       (if (has-material-basis d m t) (continuant-part-of m b t))))))


  (cl:comment "2. specifically-depends-on is transitive"
    (forall (a b c)
     (if
      (and (specifically-depends-on a b) (specifically-depends-on b c)
       (not (= a c)))
      (specifically-depends-on a c))))


  (cl:comment "3. Definition of specifically dependent continuant."
    (forall (s)
     (iff
      (exists (t) (instance-of s specifically-dependent-continuant t))
      (exists (c t)
       (and (instance-of s continuant t)
        (instance-of c independent-continuant t)
        (not (instance-of c spatial-region t))
        (specifically-depends-on s c))))))


  (cl:comment "4. inheres-in and bearer-of are inverse relations"
    (forall (a b) (iff (inheres-in a b) (bearer-of b a))))


  (cl:comment "5. realizes has domain process and range realizable-entity"
    (forall (a b)
     (if (realizes a b)
      (and (exists (t) (instance-of a process t))
       (exists (t) (instance-of b realizable-entity t))))))


  (cl:comment "6. A role exists at least at the beginning of the realization process"
    (forall (r p)
     (if (realizes p r)
      (exists (proct first)
       (and (occupies-temporal-region p proct)
        (has-first-instant proct first) (exists-at r first))))))


  (cl:comment "7. realizes and has-realization are inverse relations"
    (forall (a b) (iff (realizes a b) (has-realization b a))))


  (cl:comment "8. if s s-depends_on c at t then s and c do not share common parts (s,c continuants)"
    (forall (s c)
     (if (specifically-depends-on s c)
      (not
       (exists (w t)
        (and (continuant-part-of w s t) (continuant-part-of w c t)))))))


  (cl:comment "9. If x s-depends-on y then there's at least one time when they both exist"
    (forall (s c)
     (if (specifically-depends-on s c)
      (and (exists (t) (and (exists-at s t) (exists-at c t)))
       (forall (t) (if (exists-at s t) (exists-at c t)))))))


  (cl:comment "10. specifically-depends-on and specifically-depended-on-by are inverse relations"
    (forall (a b)
     (iff (specifically-depends-on a b)
      (specifically-depended-on-by b a))))


  (cl:comment "11. At every time a specific dependent s participates in a process p there's a part of that time, during which there's an independent-continuant that s s-depends on, and that participates in p at that time"
    (forall (sdc p t)
     (if
      (and (instance-of sdc specifically-dependent-continuant t)
       (participates-in sdc p t))
      (exists (tp ic)
       (and (instance-of tp temporal-region tp)
        (instance-of ic independent-continuant tp)
        (not (instance-of ic spatial-region tp))
        (specifically-depends-on sdc ic) (participates-in ic p tp))))))


  (cl:comment "12. DEFINITION: b is a relational quality = Def. b is a quality and there exists distinct c and d such that at all times t, b inheres in c at t if and only b specifically-depends-on d at t."
    (forall (b)
     (iff (exists (t) (instance-of b relational-quality t))
      (and
       (exists (c d)
        (and (not (= c d)) (inheres-in b c)
         (specifically-depends-on b d)))
       (exists (t) (instance-of b quality t))))))


  (cl:comment "13. a inheres_in b at t =Def. a is a specifically dependent continuant and b is an independent continuant that is not a spatial region and a s-depends_on b at t."
    (forall (a b)
     (iff (inheres-in a b)
      (and (specifically-depends-on a b)
       (exists (t)
        (and (instance-of a specifically-dependent-continuant t)
         (instance-of b independent-continuant t)
         (not (instance-of b spatial-region t))))))))


  (cl:comment "14. specifically-depends-on has domain specifically-dependent-continuant and range specifically-dependent-continuant or independent-continuant but not spatial-region "
    (forall (a b)
     (if (specifically-depends-on a b)
      (and
       (exists (t) (instance-of a specifically-dependent-continuant t))
       (exists (t)
        (or (instance-of b specifically-dependent-continuant t)
         (and (instance-of b independent-continuant t)
          (not (instance-of b spatial-region t)))))))))


  (cl:comment "15. has-material-basis and material-basis-of are inverse relations"
    (forall (t a b)
     (iff (has-material-basis a b t) (material-basis-of b a t))))


  (cl:comment "16. has-material-basis is dissective on third argument, a temporal region"
    (forall (p q r s)
     (if (and (has-material-basis p q r) (temporal-part-of s r))
      (has-material-basis p q s))))


  (cl:comment "17. When a role is realized the bearer of the role participates in the realization process"
    (forall (r p b)
     (if (and (realizes p r) (inheres-in r b))
      (exists (t) (participates-in b p t)))))


  (cl:comment "18. inheres-in has domain specifically-dependent-continuant and range independent-continuant but not spatial-region"
    (forall (a b)
     (if (inheres-in a b)
      (and
       (exists (t) (instance-of a specifically-dependent-continuant t))
       (exists (t)
        (and (instance-of b independent-continuant t)
         (not (instance-of b spatial-region t))))))))


  (cl:comment "19. has-material-basis is time indexed and has domain: disposition and range: material-entity"
    (forall (a b t)
     (if (has-material-basis a b t)
      (and (instance-of a disposition t)
       (instance-of b material-entity t)
       (instance-of t temporal-region t)))))

)))