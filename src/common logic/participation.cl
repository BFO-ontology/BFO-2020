(cl:comment '
BFO 2020 Axiomatization, generated 2024/01/08
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg(at)gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/participation.cl

   (cl:outdiscourse exists-at occurrent-part-of concretizes specifically-depends-on occupies-temporal-region temporal-part-of instance-of has-participant participates-in)

  (cl:comment "participates-in and has-participant are inverse relations [xjr-1]"
    (forall (t a b) (iff (participates-in a b t) (has-participant b a t))))


  (cl:comment "At every time a process exists it has a participant [trl-1]"
    (forall (p t)
     (if (instance-of p process t) (exists (c) (participates-in c p t)))))


  (cl:comment "participates-in is dissective on third argument, a temporal region [yjm-1]"
    (forall (p q r s)
     (if (and (participates-in p q r) (temporal-part-of s r))
      (participates-in p q s))))


  (cl:comment "If c participates in p at t and p occupies-temporal-region r then t is part of r [kxe-1]"
    (forall (c p r t)
     (if (and (occupies-temporal-region p r) (participates-in c p t))
      (temporal-part-of t r))))


  (cl:comment "participates-in is time indexed and has domain: independent-continuant but not spatial-region or specifically-dependent-continuant or generically-dependent-continuant  and range: process [ild-1]"
    (forall (a b t)
     (if (participates-in a b t)
      (and
       (or
        (and (instance-of a independent-continuant t)
         (not (instance-of a spatial-region t)))
        (instance-of a specifically-dependent-continuant t)
        (instance-of a generically-dependent-continuant t))
       (instance-of b process t) (instance-of t temporal-region t)))))


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