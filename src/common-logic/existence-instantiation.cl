(cl:comment '
BFO 2020 Axiomatization, generated 2024/01/08
The most current version of this file will always be at the GitHub repository https://github.com/bfo-ontology/bfo-2020
Author: Alan Ruttenberg - alanruttenberg(at)gmail.com
This work is licensed under a Creative Commons "Attribution 4.0 International" license: https://creativecommons.org/licenses/by/4.0/'

 (cl:text

  (cl:ttl https://basic-formal-ontology.org/2020/formulas/clif/existence-instantiation.cl

   (cl:outdiscourse temporal-part-of continuant-part-of instance-of universal exists-at particular)

  (cl:comment "Particulars exist at some time [nmq-1]"
    (forall (p) (if (particular p) (exists (t) (exists-at p t)))))


  (cl:comment "Every universal is instantiated at least once [mbf-1]"
    (forall (u) (if (universal u) (exists (p t) (instance-of p u t)))))


  (cl:comment "exists-at is dissective on first argument when it is a continuant [uns-1]"
    (forall (p q r)
     (if (and (exists-at p q) (continuant-part-of r p q))
      (exists-at r q))))


  (cl:comment "instance-of is dissective on third argument, a temporal region [qaf-1]"
    (forall (p q r s)
     (if (and (instance-of p q r) (temporal-part-of s r))
      (instance-of p q s))))


  (cl:comment "Relata of exists-at are particulars. [oap-1]"
    (forall (i t)
     (if (exists-at i t)
      (and (particular i) (particular t)
       (instance-of t temporal-region t)))))


  (cl:comment "Relata of instance-of are particular, universal, temporal-region. [lqn-1]"
    (forall (i u t)
     (if (instance-of i u t)
      (and (particular i) (universal u)
       (instance-of t temporal-region t)))))


  (cl:comment "There is always something that exists [nis-1]"
    (forall (t)
     (if (instance-of t temporal-region t)
      (exists (u i)
       (and (not (= i t)) (universal u) (particular i)
        (instance-of i u t))))))


  (cl:comment "if m is a material entity, then there is some one-dimensional temporal region during which m exists [zuw-1]"
    (forall (m)
     (if (exists (t) (instance-of m material-entity t))
      (exists (t)
       (and (instance-of t one-dimensional-temporal-region t)
        (exists-at m t))))))


  (cl:comment "If you exist you instatiate a universal and vice-versa [bee-1]"
    (forall (a t)
     (iff
      (exists (u)
       (and (universal u) (instance-of a u t)
        (instance-of t temporal-region t)))
      (and (particular a) (instance-of t temporal-region t)
       (exists-at a t)))))

)))