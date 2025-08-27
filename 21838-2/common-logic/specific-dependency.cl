(cl:comment '
BFO 2020 Axiomatization, generated 2024/01/08
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg(at)gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/specific-dependency.cl

   (cl:outdiscourse exists-at has-first-instant occupies-temporal-region continuant-part-of instance-of temporal-part-of participates-in specifically-depended-on-by specifically-depends-on material-basis-of has-material-basis has-realization realizes bearer-of inheres-in)

  (cl:comment "inheres-in and bearer-of are inverse relations [dzz-1]"
    (forall (a b) (iff (inheres-in a b) (bearer-of b a))))


  (cl:comment "realizes and has-realization are inverse relations [pvk-1]"
    (forall (a b) (iff (realizes a b) (has-realization b a))))


  (cl:comment "has-material-basis and material-basis-of are inverse relations [tla-1]"
    (forall (t a b)
     (iff (has-material-basis a b t) (material-basis-of b a t))))


  (cl:comment "specifically-depends-on and specifically-depended-on-by are inverse relations [yct-1]"
    (forall (a b)
     (iff (specifically-depends-on a b)
      (specifically-depended-on-by b a))))


  (cl:comment "When a role is realized the bearer of the role participates in the realization process [grx-1]"
    (forall (r p b)
     (if (and (realizes p r) (inheres-in r b))
      (exists (t) (participates-in b p t)))))


  (cl:comment "has-material-basis is dissective on third argument, a temporal region [hnl-1]"
    (forall (p q r s)
     (if (and (has-material-basis p q r) (temporal-part-of s r))
      (has-material-basis p q s))))


  (cl:comment "realizes has domain process and range realizable-entity [oot-1]"
    (forall (a b)
     (if (realizes a b)
      (and (exists (t) (instance-of a process t))
       (exists (t) (instance-of b realizable-entity t))))))


  (cl:comment "specifically-depends-on is transitive [myu-1]"
    (forall (a b c)
     (if
      (and (specifically-depends-on a b) (specifically-depends-on b c)
       (not (= a c)))
      (specifically-depends-on a c))))


  (cl:comment "if s s-depends_on c then s and c never share common parts (s,c continuants) [nfe-1]"
    (forall (s c)
     (if (specifically-depends-on s c)
      (not
       (exists (w t)
        (and (continuant-part-of w s t) (continuant-part-of w c t)))))))


  (cl:comment "A realizable entity exists at least at the beginning of the realization process [vhg-1]"
    (forall (r p)
     (if (realizes p r)
      (exists (proct first)
       (and (occupies-temporal-region p proct)
        (has-first-instant proct first) (exists-at r first))))))


  (cl:comment "has-material-basis is time indexed and has domain: disposition and range: material-entity [cfs-1]"
    (forall (a b t)
     (if (has-material-basis a b t)
      (and (instance-of a disposition t)
       (instance-of b material-entity t)
       (instance-of t temporal-region t)))))


  (cl:comment "If s s-depends-on c then there's at least one time when they both exist and whenever s exists, c must also exist [iyu-1]"
    (forall (s c)
     (if (specifically-depends-on s c)
      (and (exists (t) (and (exists-at s t) (exists-at c t)))
       (forall (t) (if (exists-at s t) (exists-at c t)))))))


  (cl:comment "No role changes type during its existence [bks-1]"
    (forall (o)
     (if (exists (t) (instance-of o role t))
      (forall (u)
       (if (exists (t) (instance-of o u t))
        (forall (t) (iff (instance-of o role t) (instance-of o u t))))))))


  (cl:comment "DEFINITION: b is a relational quality = Def. b is a quality and there exists distinct c and d such that at all times t, b inheres in c if and only b specifically-depends-on. [dbp-1]"
    (forall (b)
     (iff (exists (t) (instance-of b relational-quality t))
      (and
       (exists (c d)
        (and (not (= c d)) (inheres-in b c)
         (specifically-depends-on b d)))
       (exists (t) (instance-of b quality t))))))


  (cl:comment "a inheres_in b =Def. a is a specifically dependent continuant and b is an independent continuant that is not a spatial region and a s-depends_on b. [tht-1]"
    (forall (a b)
     (iff (inheres-in a b)
      (and (specifically-depends-on a b)
       (exists (t)
        (and (instance-of a specifically-dependent-continuant t)
         (instance-of b independent-continuant t)
         (not (instance-of b spatial-region t))))))))


  (cl:comment "Definition of specifically dependent continuant. [akq-1]"
    (forall (s)
     (iff
      (exists (t) (instance-of s specifically-dependent-continuant t))
      (exists (c t)
       (and (instance-of s continuant t)
        (instance-of c independent-continuant t)
        (not (instance-of c spatial-region t))
        (specifically-depends-on s c))))))


  (cl:comment "The material basis of a disposition is part of the bearer of the disposition [uxo-1]"
    (forall (m d b)
     (if
      (and (exists (t) (instance-of m material-entity t))
       (exists (t) (instance-of d disposition t))
       (exists (t) (instance-of b material-entity t)) (inheres-in d b))
      (forall (t)
       (if (has-material-basis d m t) (continuant-part-of m b t))))))


  (cl:comment "specifically-depends-on has domain specifically-dependent-continuant and range specifically-dependent-continuant or independent-continuant but not spatial-region  [kkl-1]"
    (forall (a b)
     (if (specifically-depends-on a b)
      (and
       (exists (t) (instance-of a specifically-dependent-continuant t))
       (exists (t)
        (or (instance-of b specifically-dependent-continuant t)
         (and (instance-of b independent-continuant t)
          (not (instance-of b spatial-region t)))))))))


  (cl:comment "At every time a specific dependent s participates in a process p there's a part of that time, during which there's an independent-continuant that s s-depends on, and that participates in p at that time [cgn-1]"
    (forall (sdc p t)
     (if
      (and (instance-of sdc specifically-dependent-continuant t)
       (participates-in sdc p t))
      (exists (tp ic)
       (and (instance-of tp temporal-region tp) (temporal-part-of tp t)
        (instance-of ic independent-continuant tp)
        (not (instance-of ic spatial-region tp))
        (specifically-depends-on sdc ic) (participates-in ic p tp))))))

)))