(cl:comment '
BFO 2020 Axiomatization, generated 2024/01/08
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg(at)gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/generic-dependence.cl

   (cl:outdiscourse exists-at occurrent-part-of specifically-depends-on participates-in inheres-in instance-of temporal-part-of is-carrier-of generically-depends-on is-concretized-by concretizes)

  (cl:comment "concretizes and is-concretized-by are inverse relations [zba-1]"
    (forall (t a b) (iff (concretizes a b t) (is-concretized-by b a t))))


  (cl:comment "generically-depends-on and is-carrier-of are inverse relations [mvp-1]"
    (forall (t a b)
     (iff (generically-depends-on a b t) (is-carrier-of b a t))))


  (cl:comment "concretizes is dissective on third argument, a temporal region [nyz-1]"
    (forall (p q r s)
     (if (and (concretizes p q r) (temporal-part-of s r))
      (concretizes p q s))))


  (cl:comment "A generically dependent continuant is at all times at which it exists concretized by something [ibk-1]"
    (forall (t g)
     (if (instance-of g generically-dependent-continuant t)
      (exists (s tp) (and (temporal-part-of tp t) (concretizes s g tp))))))


  (cl:comment "a g-dependent continuant b g-depends on an independent continuant c at t means: there inheres in c at t an s-dependent continuant which concretizes b at t [otx-1]"
    (forall (g c t)
     (if (generically-depends-on g c t)
      (exists (s tp)
       (and (temporal-part-of tp t) (inheres-in s c)
        (concretizes s g tp))))))


  (cl:comment "concretizes is time indexed and has domain: specifically-dependent-continuant or process  and range: generically-dependent-continuant [rog-1]"
    (forall (a b t)
     (if (concretizes a b t)
      (and
       (or (instance-of a specifically-dependent-continuant t)
        (instance-of a process t))
       (instance-of b generically-dependent-continuant t)
       (instance-of t temporal-region t)))))


  (cl:comment "generically-depends-on is time indexed and has domain: generically-dependent-continuant and range: independent-continuant but not spatial-region [ekp-1]"
    (forall (a b t)
     (if (generically-depends-on a b t)
      (and (instance-of a generically-dependent-continuant t)
       (and (instance-of b independent-continuant t)
        (not (instance-of b spatial-region t)))
       (instance-of t temporal-region t)))))


  (cl:comment "If a specifically-dependent-continuant concretizes a gdc then the gdc generically-depends-on the bearer of the sdc [cik-1]"
    (forall (g b sdc)
     (if
      (and
       (exists (t) (instance-of g generically-dependent-continuant t))
       (exists (t) (instance-of sdc specifically-dependent-continuant t))
       (exists (t) (instance-of b independent-continuant t)))
      (forall (t)
       (if (and (concretizes sdc g t) (inheres-in sdc b))
        (generically-depends-on g b t))))))


  (cl:comment "If a generically dependent continuant participates in a process p then, if it is concretized as a process, that process is part of p, fand if concretized as an sdc then the bearer of that sdc participates in the process [fmm-1]"
    (forall (gdc p t)
     (if
      (and (instance-of gdc generically-dependent-continuant t)
       (participates-in gdc p t))
      (exists (tp b)
       (and (temporal-part-of tp t) (concretizes b gdc tp)
        (or
         (and (instance-of b specifically-dependent-continuant tp)
          (exists (ic)
           (and (specifically-depends-on b ic)
            (participates-in ic p tp))))
         (and (occurrent-part-of b p) (exists-at b tp))))))))

)))