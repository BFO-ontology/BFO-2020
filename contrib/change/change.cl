(cl:comment '
Axiomatization of change in BFO2020 as described in the FOIS 2025 paper
Towards Representing Change in the BFO
Authors: Werner Ceusters, Alan Ruttenberg
version 2025/06/29 - work in progress

This work is licensed under a Creative Commons "Attribution 4.0 International" license:
https://creativecommons.org/licengses/by/4.0/'

History:
 - Since 2025/03/15:
 -	corrected ett-03: added process-boundary as exclusion next to process
 -  corrected ins-03: added that t1 and t2 may not be identical and that c must exist at t2
 -  time indexing removed from happens-in as it is between occurrents
To be done:
	- distinct declarations including with BFO2020
	- disjoint declarations
	- further subtyping of changes (increases, decreases, motions, part loss and acquisitions, ...)
	- tighter integration with BFO2020 relations
	- ...'

 (cl:text

  (cl:ttl Proposal for BFO2020 extension for changes

   (cl:outdiscourse 
		change-profile-of
		changes-to
		mono-sequential-change-of
		exists-at
		exists-throughout
		gains-type
		happens-in
		happens-throughout
		happens-to
		has-first-instant
		has-last-instant
		individuates-at
		instance-of
		is-sequence-part-of
		loses-type
		occupies-temporal-region
		occurrent-part-of
		participates-in
		particular
		precedes
		proper-temporal-part-of
		proper-occurrent-part-of
		replaces-type
		temporal-part-of
		temporal-layer-of
		ceases-to-exist-at
		uni-equivalent
		universal

 )


	(cl:comment "PART 1: SOME PREDICATES WITH TEMPORAL CHARACTERISTICS")

	(cl:comment "exists-throughout has as domain particular and as range temporal-region [ett-01]"
		(forall (p t) 
			(if (exists-throughout p t)
				(and (instance-of t temporal-region t)
					 (particular p)))))


	(cl:comment "p exists-throughout t means that every temporal-region at which p exists is a temporal part of t [ett-02]"
		(forall (p t) 
			(if (exists-throughout p t)
				(forall (t1)
					(iff (exists-at p t1)
						 (temporal-part-of t1 t))))))


	(cl:comment "if a process p occupies-temporal-region t, then p exists-throughout t [ett-03]"
		(forall (p t) 
			(iff (occupies-temporal-region p t)
				 (and (exists-throughout p t)
					  (or (instance-of p process t)
						  (instance-of p process-boundary t))))))


	(cl:comment "there is precisely one temporal region at which a particular exists-throughout [ett-04]"
		(forall (p t) 
			(if (exists-throughout p t)
				(forall (t1)
					(if (exists-throughout p t1)
						(= t1 t))))))


	(cl:comment "happens-throughout has domain change and range temporal region [htr-01]"
		(forall (ch t) 
			(if (happens-throughout ch t)
				(and (instance-of t temporal-region t)
					 (instance-of ch change t)))))


	(cl:comment "x exists-throughout t if x happens-throughout t [htr-02]"
		(forall (ch t) 
			(if (happens-throughout ch t)
				(exists-throughout ch t))))


	(cl:comment "if x exists-throughout t and x is a change, x happens throughout t [htr-03]"
		(forall (x t) 
			(if (and (exists-throughout x t)
					 (instance-of x change t))
				(happens-throughout x t))))


	(cl:comment "there is precisely one temporal region at which a change happens-throughout [htr-04]"
		(forall (ch t) 
			(if (happens-throughout ch t)
				(forall (t1)
					(if (happens-throughout ch t1)
						(= t1 t))))))


	(cl:comment "at any time t a change ch exists, t is a temporal part of the temporal region throughout which ch happens [htr-05]"
		(forall (ch t) 
			(if (instance-of ch change t)
				(exists (tr)
					(and (happens-throughout ch tr)
						 (temporal-part-of t tr))))))


	(cl:comment "PART 2: CHANGE")

	(cl:comment "a change is an occurrent that happens (1) to at least one continuant c that is not a spatial region and (2) in a process p such that in the course of p some particular comes in or goes out of existence or exhibits a difference in some relation to another entity, including differences in instantiation.")

	(cl:comment "all changes are occurrents [cha-01]"
		(forall (ch t) 
			(if (instance-of ch change t)
				(instance-of ch occurrent t))))


	(cl:comment "happens-to is time-indexed and has domain change and range continuant except spatial region [cha-02]"
		(forall (ch c t) 
			(if (happens-to ch c t)
				(and (instance-of c continuant t)
					 (instance-of t temporal-region t)
					 (instance-of ch change t)
					 (not (instance-of c spatial-region t))))))


	(cl:comment "happens-in has domain change and range process [cha-03]"
		(forall (ch p) 
			(if (happens-in ch p)
				(exists (t) (and (instance-of p process t)
								 (instance-of ch change t))))))


	(cl:comment "if a change exists, there exists also a process in which the change happens, and a continuant to which the change happens [cha-04]"
		(forall (ch t) 
			(if (happens-throughout ch t)
				(exists (c p t1) 
					(and (happens-in ch p)
						 (happens-to ch c t1)
						 (participates-in c p t1))))))


	(cl:comment "any change happens to a continuant that participates in a process in which the change happens [cha-05]"
		(forall (ch c t) 
			(if (happens-to ch c t)
				(exists (p) 
					(and (happens-in ch p)
						 (participates-in c p t))))))


	(cl:comment "any change happens in a process in which participates a continuant to which the change happens [cha-06]"
		(forall (ch p) 
			(if (happens-in ch p)
				(exists (c t1) 
					(and (happens-to ch c t1)
						 (participates-in c p t1))))))



	(cl:comment "at all times a change that happens to a continuant and in a process that continuant participates in that process [cha-07]"
		(forall (p ch c t)
			(if (and (happens-to ch c t) 
					 (happens-in ch p))
				(participates-in c p t))))




	(cl:comment "PART 3: CHANGE IN EXISTENCE")

	(cl:comment: "an existence change is a change that brings a continuant (but not a spatial region) 
				 or process in or out of existence")

	(cl:comment "all existence changes are changes [ext-01]"
		(forall (s t) 
			(if (instance-of s existence-change t)
				(instance-of s change t))))


	(cl:comment "the only existence changes are individuations and terminations [ext-02]"
		(forall (s t) 
			(if (instance-of s existence-change t)
				(iff (instance-of s individuation t) 
					 (not (instance-of s termination t))))))


	(cl:comment "existence changes happen only to continuants [ext-03]"
		(forall (s x t) 
			(if (and (instance-of s existence-change t)
					 (happens-to s x t))
				(exists (t1) (instance-of x continuant t1)))))


	(cl:comment: "an individuation is an existence change that brings a particular in existence") 

	(cl:comment "all individuations are existence changes [ind-01]"
		(forall (s t) 
			(if (instance-of s individuation t)
				(instance-of s existence-change t))))


	(cl:comment "individuates-at has domain process or continuant but not spatial region and range temporal region [ind-02]"
		(forall (x t) 
			(if (individuates-at x t)
				(and (not (instance-of x spatial-region t))
					 (iff (instance-of x continuant t) (not (instance-of x process t)))
					 (instance-of t temporal-region t)))))


	(cl:comment "a particular individuates at the first instant of the temporal region throughout which it exists [ind-03]"
		(forall (x t t2) 
			(if (individuates-at x t)
				(if (exists-throughout x t2) 
					(has-first-instant t2 t)))))


	(cl:comment "a particular individuates at the last instant of the temporal region throughout which the individuation happens [ind-04]"
		(forall (s t) 
			(if (and (instance-of s individuation t)
					 (happens-throughout s t))
				(exists (p t1) (iff (individuates-at p t1)
								    (has-last-instant t t1))))))


	(cl:comment "a particular x individuates at a time which is the last instant of the temporal region throughout which some individuation s happens whereby s happens to x if x is a continuant or s happens to a continuant c which participates in x [ind-05]"
		(forall (x t) 
			(if (individuates-at x t)
				(exists (s t2) 
					(and (instance-of s individuation t2)
						 (happens-throughout s t2)
						 (has-last-instant t2 t)
						 (iff (happens-to s x t) (instance-of x continuant t))
						 (if (instance-of x process t)
							 (exists (c) 
								(and (instance-of c continuant t)
									 (participates-in c x t)
									 (happens-to s c t)))))))))


	(cl:comment: "a termination is an existence change that brings a particular out of existence") 

	(cl:comment "all terminations are existence changes [ter-01]"
		(forall (s t) 
			(if (instance-of s termination t)
				(instance-of s existence-change t))))


	(cl:comment "ceases-to-exist-at has domain process or continuant but not spatial region and range temporal region [ter-02]"
		(forall (x t) 
			(if (ceases-to-exist-at x t)
				(and (not (instance-of x spatial-region t))
					 (iff (instance-of x continuant t) (not (instance-of x process t)))
					 (instance-of t temporal-region t)))))


	(cl:comment "a particular ceases to exist at the last instant of the temporal region throughout which it exists [ter-03]"
		(forall (x t t2) 
			(if (ceases-to-exist-at x t)
				(if (exists-throughout x t2) 
					(has-last-instant t2 t)))))


	(cl:comment "if a termination happens to a continuant, that continuant ceases to exist at the last instant of the temporal region throughout which the termination happens [ter-04]"
		(forall (c s t t1) 
			(if (and (instance-of s termination t)
					 (instance-of c continuant t)
					 (happens-to s c t1))
				(and (ceases-to-exist-at c t1)
					 (has-last-instant t t1)))))


	(cl:comment "if a continuant ceases to exist at a time, a termination happens to it at that time [ter-05]"
		(forall (c t) 
			(if (and (ceases-to-exist-at c t)
					 (instance-of c continuant t))
				(exists (s t2) (and (instance-of s termination t2)
									(has-last-instant t2 t)
									(happens-to s c t))))))


	(cl:comment "if a process ceases to exist at t, it exists for the last time at t [ter-06]"
		(forall (o t) 
			(if (and (ceases-to-exist-at o t)
					 (instance-of o process t))
				(exists (x t1 t2) 
					(and (instance-of x termination t1)
						 (happens-in x o)
						 (temporal-part-of t1 t)
						 (exists-throughout o t2)
						 (has-last-instant t2 t))))))


	(cl:comment "PART 4: CHANGE IN INSTANTIATION")

	(cl:comment: "an instantiation change is a change in some continuant’s instantiation of some universal") 

	(cl:comment "all instantiation changes are changes [ins-01]"
		(forall (ins t) 
			(if (instance-of ins instantiation-change t)
				(instance-of ins change t))))


	(cl:comment "an instantiation change happens to a continuant c when not all the universals instantiated by c prior to the change are instantiated by c after the change or vice versa [ins-02]"
		(forall (ins c t) 
			(if (and (instance-of ins instantiation-change t)
					 (happens-to ins c t)
					 (happens-throughout ins t))
				(exists (u t1 t2)
					(and (has-first-instant t t1)
						 (has-last-instant t t2)
						 (or (if (instance-of c u t1)
								 (not (instance-of c u t2)))
							 (if (instance-of c u t2)
								 (not (instance-of c u t1)))))))))


	(cl:comment "an instantiation change happens to a continuant c when not all the universals instantiated by c prior to the change are instantiated by c after the change or vice versa (strong version) [ins-03]"
		(forall (c u t1 t2)
			(if (and (instance-of c u t1)
					 (exists-at c t2)
					 (not (= t1 t2)))
				(iff (not (instance-of c u t2))
					 (exists (ins tr)
						(and (instance-of ins instantiation-change tr)
							 (happens-throughout ins tr)
							 (happens-to ins c tr)
							 (or (and (has-first-instant tr t1)
									  (has-last-instant tr t2))
								 (and (has-first-instant tr t2)
									  (has-last-instant tr t1)))))))))
							 

	(cl:comment "PART 4.1: SPECIALIZATION")

	(cl:comment "a specialization is an instantiation change expanding the number of universals a continuant instantiates")

	(cl:comment "all specializations are instantiation changes [spe-01]"
		(forall (s t) 
			(if (instance-of s specialization t)
				(instance-of s instantiation-change t))))


	(cl:comment "gains-type has domain continuant and range universal [spe-02]"
		(forall (c u t) 
			(if (gains-type c u t)
				(and (instance-of c continuant t)
					 (universal u)
					 (instance-of t temporal-region t)))))


	(cl:comment "if a specialization happens to a continuant, that continuant gains a type [spe-03]"
		(forall (c s t) 
			(if (and (instance-of s specialization t)
					 (happens-to s c t))
				(exists (u) (gains-type c u t)))))


	(cl:comment "if a continuant gains a type, a specialization happens to it [spe-04]"
		(forall (c u t) 
			(if (gains-type c u t)
				(exists (s) 
					(and (instance-of s specialization t)
						 (happens-to s c t))))))


	(cl:comment "a continuant c gains a type iff c becomes instance of a type while keeping all existing instantiations [spe-05]"
		(forall (c un t) 
			(iff (gains-type c un t)
				 (exists (t1 t2)
					(and (has-first-instant t t1)
						 (not (instance-of c un t1))
						 (has-last-instant t t2)
						 (instance-of c un t2)
						 (forall (u) 
							(if (and (instance-of c u t1)
									 (not (= u un)))
								(instance-of c u t2))))))))


	(cl:comment "PART 4.2: GENERALIZATION")

	(cl:comment "a generalization is an instantiation change diminishing the number of universals a continuant instantiates")

	(cl:comment "all generalizations are instantiation changes [gen-01]"
		(forall (s t) 
			(if (instance-of s generalization t)
				(instance-of s instantiation-change t))))


	(cl:comment "loses-type has domain continuant and range universal [gen-02]"
		(forall (c u t) 
			(if (loses-type c u t)
				(and (instance-of c continuant t)
					 (universal u)
					 (instance-of t temporal-region t)))))


	(cl:comment "if a generalization happens to a continuant, that continuant loses a type [gen-03]"
		(forall (c s t) 
			(if (and (instance-of s generalization t)
					 (happens-to s c t))
				(exists (u) (loses-type c u t)))))


	(cl:comment "if a continuant loses a type, a generalization happens to it [gen-04]"
		(forall (c u t) 
			(if (loses-type c u t)
				(exists (s) 
					(and (instance-of s generalization t)
						 (happens-to s c t))))))


	(cl:comment "a continuant loses a type whenever it doesn't instantiate a type it did before and doesn't gain a type [gen-05]"
		(forall (c un t) 
			(iff (loses-type c un t)
				 (exists (t1 t2)
					(and (has-first-instant t t1)
						 (instance-of c un t1)
						 (has-last-instant t t2)
						 (not (instance-of c un t2))
						 (forall (u2)
							(if (instance-of c u2 t2)
								(instance-of c u2 t1))))))))
										

	(cl:comment "PART 4.3: TYPE REPLACEMENT")

    (cl:comment "a type replacement is an instantiation change to a continuant c keeping the number of universals 
				 c instantiates constant")

	(cl:comment "all type replacements are instantiation changes [trp-01]"
		(forall (s t) 
			(if (instance-of s type-replacement t)
				(instance-of s instantiation-change t))))


	(cl:comment "replaces-type is time-indexed and has as domain continuant and as range two universals [trp-02]"
		(forall (c u1 u2 t) 
			(if (replaces-type c u1 u2 t)
				(and (instance-of c continuant t)
					 (universal u1) (universal u2)
					 (instance-of t temporal-region t)))))


	(cl:comment "if a type replacement happens to a continuant, that continuant replaces a type [trp-03]"
		(forall (c s t) 
			(if (and (instance-of s type-replacement t)
					 (happens-to s c t))
				(exists (u1 u2) (replaces-type c u1 u2 t)))))


	(cl:comment "if a continuant replaces a type, a type-replacement happens to it [trp-04]"
		(forall (c u1 u2 t) 
			(if (replaces-type c u1 u2 t)
				(exists (s) 
					(and (instance-of s type-replacement t)
						 (happens-to s c t))))))


	(cl:comment "a continuant c replaces a type u1 for u2 whenever all the univerals (except u1) c instantiates before the replacement are also instantiated by c (in addition to u2) after the replacement [trp-05]"
		(forall (c u1 u2 t) 
			(iff (replaces-type c u1 u2 t)
				 (exists (t1 t2)
					(and (has-first-instant t t1)
						 (instance-of c u1 t1)
						 (not (instance-of c u2 t1))
						 (has-last-instant t t2)
						 (instance-of c u2 t2)
						 (not (instance-of c u1 t2))
						 (forall (un)
							(if (and (instance-of c un t1)
									 (not (= un u1)))
								(instance-of c un t2))))))))


	(cl:comment "PART 6: SIMPLE CHANGES")

    (cl:comment "a simple change is a change that happens to precisely one continuant and has no change as proper occurrent part")

	(cl:comment "all simple-changes are mono-sequential changes [sch-01]"
		(forall (ch t) 
			(if (instance-of ch simple-change t)
				(instance-of ch mono-sequential-change t))))


	(cl:comment "a simple-change happens to only one continuant [sch-02]"
		(forall (ch c t) 
			(if (and (instance-of ch simple-change t)
					 (exists-throughout ch t)
					 (happens-to ch c t))
				(forall (c1)
					(if (happens-to ch c1 t)
						(= c1 c))))))


	(cl:comment "A simple change does not have other changes as occurrent parts [sch-03]"
		(forall (x y t) 
			(if (and (instance-of x simple-change t)
					 (occurrent-part-of y x)) 
				(if (instance-of y change t)
					(= x y)))))


	(cl:comment "PART 7: COMBINING CHANGES")

	(cl:comment "all mono-sequential changes are changes [cch-01]"
		(forall (chs t) 
			(if (instance-of chs mono-sequential-change t)
				(instance-of chs change t))))


	(cl:comment "a mono-sequential-change is a change c all whose occurrent parts that are changes stand in the temporal layer-of relation to c [cch-02]"
		(forall (cch t) 
			(if (and (instance-of cch mono-sequential-change t)
					 (happens-throughout cch t))
				(forall (ch) 
					(iff (temporal-layer-of ch cch)
						 (and (instance-of ch change t)
							  (happens-throughout ch t)))))))


	(cl:comment "mono-sequential-change-of has domain mono-sequential change and range continuant [cch-03]"
		(forall (x y) 
			(if (mono-sequential-change-of x y)
				(exists (t) 
					(and (instance-of x mono-sequential-change t)
						 (instance-of y continuant t))))))


	(cl:comment "if x is a mono-sequential-change-of y then x is a mono-sequential change and all temporal layers of x are changes that happen to y [cch-04]"
		(forall (x y) 
			(if  (mono-sequential-change-of x y)
				 (forall (z) 
					(if (temporal-layer-of z x)
						(exists (t) 
							(and (instance-of y continuant t)
								 (happens-to z y t))))))))


	(cl:comment "x mono-sequential-change-of c if x is a mono-sequential change and all temporal layers of x are changes that happen to c [cch-05]"
		(forall (x t z c t2) 
			(if (and (instance-of x mono-sequential-change t)
					 (temporal-layer-of z x)
					 (happens-to z c t2))
				(mono-sequential-change-of x c))))


	(cl:comment "all change sequences are changes [chs-01]"
		(forall (chs t) 
			(if (instance-of chs change-sequence t)
				(instance-of chs change t))))


	(cl:comment "is-sequence-part-of has domain mono-sequential change and range change sequence [chs-02]"
		(forall (chs cch) 
			(if (is-sequence-part-of cch chs)
				(exists (ts tc) 
					(and (instance-of chs change-sequence ts)
						 (instance-of cch mono-sequential-change tc)
						 (proper-temporal-part-of cch chs)
						 (proper-temporal-part-of tc ts))))))


	(cl:comment "a change sequence is a change whose proper-temporal parts that are mono-sequential changes are temporally ordered [chs-03]"
		(forall (chs t) 
			(if (and (happens-throughout chs t)
					 (instance-of chs change-sequence t))
				(forall (ch1 ch2)
					(if (and (is-sequence-part-of ch1 chs)
							 (is-sequence-part-of ch2 chs)
							 (not (= ch1 ch2)))
						(or (precedes ch1 ch2)
							(precedes ch2 ch1)))))))


	(cl:comment "all change profiles are change sequences [chp-01]"
		(forall (chp t) 
			(if (instance-of chp change-profile t)
				(instance-of chp change-sequence t))))


	(cl:comment "change-profile-of has domain change-profile and range continuant [chp-02]"
		(forall (x y) 
			(if (change-profile-of x y)
				(exists (t) 
					(and (instance-of x change-profile t)
						 (instance-of y continuant t))))))


	(cl:comment "a change profile is a change sequence whose sequence parts are mono-sequential changes all of which are simple changes that happen to the same continuant [chp-03]"
		(forall (chp)
			(if (exists (t) (instance-of chp change-profile t))
				(forall (ptp)
					(if (is-sequence-part-of ptp chp)
						(forall (z) 
							(if (temporal-layer-of z ptp)
								(exists (pt) 
									(and (instance-of z simple-change pt)
										 (exists (c) 
											(and (happens-to z c pt)
												 (change-profile-of chp c))))))))))))


	(cl:comment "if x is a change profile of y, then all sequence parts of x are mono-sequential changes all of which are simple changes that happen to y [chp-04]"
		(forall (x y)
			(if (change-profile-of x y)
				(forall (ch)
					(if (is-sequence-part-of ch x)
						(forall (z) 
							(if (temporal-layer-of z ch)
								(exists (t) 
									(and (instance-of z simple-change t)
										 (happens-to z y t))))))))))


	(cl:comment "ADDENDUM1: POSSIBLE GENERAL EXTENSIONS FOR BFO USED HERE")
	
	(cl:comment "a is a temporal layer of b iff a is an occurrent part of b, both exists throughout the same time, but neither are temporal regions [tlo-01]"
		(forall (a b) 
			(iff (temporal-layer-of a b)
				 (exists (t) 
					(and (occurrent-part-of a b)
						 (not (instance-of a temporal-region t))
						 (exists-throughout a t)
						 (exists-throughout b t))))))


	(cl:comment "temporal-layer-of is transitive [tlo-02]"
		(forall (x y z) 
			(if (and (temporal-layer-of x y)
					 (temporal-layer-of y z))
				(temporal-layer-of x z))))


	(cl:comment "temporal-layer-of is antisymmetric [tlo-03]"
		(forall (x y) 
			(if (and (temporal-layer-of x y)
					 (temporal-layer-of y x))
				(= x y))))


	(cl:comment "ADDENDUM2: PERHAPS USEFUL LATER")

	(cl:comment "Two continuants are uni-equivalent at the times they both instantiate all the same universals [ueq-01]"
		(forall (a b t) 
			(if (and (uni-equivalent a b t)
					 (instance-of a continuant t)
					 (instance-of b continuant t))
				(forall (u)
					(if (instance-of a u t)
						(instance-of b u t))))))

)))
