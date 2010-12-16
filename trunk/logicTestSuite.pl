

:- module(logicTestSuite,[semantics/2]).

testAll :-
	semantics(S,_),
	evalSemantics(S); 
	true.

	semantics(app(lam(_G592, app(_G592, you)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, have(_G727, _G733))))), lam(_G853, app(_G853, mononucleosis)))),1).
	semantics(app(lam(_G595, app(_G595, you)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, pertussis)))),1).
	semantics(app(lam(_G595, app(_G595, you)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, swineflu)))),1).
	semantics(app(lam(_G592, app(_G592, you)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, eq(_G727, _G733))))), lam(_G796, lam(_G799, and(headless(_G799), app(_G796, _G799)))))),1).
	semantics(app(lam(_G595, app(_G595, you)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, strep)))),1).
	semantics(app(lam(_G595, app(_G595, you)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, pulmonarytuberculosis)))),1).
	semantics(app(lam(_G592, app(_G592, you)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, have(_G727, _G733))))), lam(_G853, app(_G853, diarrhea)))),1).
	semantics(app(lam(_G592, app(_G592, you)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, have(_G727, _G733))))), lam(_G853, app(_G853, tonsilitis)))),1).
	semantics(app(lam(_G595, app(_G595, you)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, chickenpox)))),1).
	semantics(app(lam(_G598, app(_G598, you)), app(lam(_G730, lam(_G733, app(_G730, lam(_G739, have(_G733, _G739))))), lam(_G871, app(_G871, acidreflux)))),1).
	semantics(app(lam(_G598, app(_G598, you)), app(lam(_G730, lam(_G733, app(_G730, lam(_G739, have(_G733, _G739))))), app(lam(_G865, lam(_G868, some(_G871, and(app(_G865, _G871), app(_G868, _G871))))), lam(_G1000, commoncold(_G1000))))),1).
	semantics(app(lam(_G592, app(_G592, you)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, have(_G727, _G733))))), lam(_G853, app(_G853, malaria)))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, throat_spots)))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, neck_pain)))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, back_pain)))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, leg_pain)))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, rib_pain)))),1).
	semantics(app(lam(_G598, app(_G598, i)), app(lam(_G730, lam(_G733, app(_G730, lam(_G739, have(_G733, _G739))))), app(lam(_G865, lam(_G868, some(_G871, and(app(_G865, _G871), app(_G868, _G871))))), app(lam(_G970, lam(_G973, and(sore(_G973), app(_G970, _G973)))), lam(_G1071, throat(_G1071)))))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, difficultybreathing)))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), app(lam(_G862, lam(_G865, some(_G868, and(app(_G862, _G868), app(_G865, _G868))))), lam(_G991, headache(_G991))))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, have(_G727, _G733))))), lam(_G853, app(_G853, convulsions)))),1).
	semantics(app(lam(_G598, app(_G598, i)), app(lam(_G730, lam(_G733, app(_G730, lam(_G739, have(_G733, _G739))))), app(lam(_G865, lam(_G868, some(_G871, and(app(_G865, _G871), app(_G868, _G871))))), app(lam(_G970, lam(_G973, and(dry(_G973), app(_G970, _G973)))), lam(_G1071, cough(_G1071)))))),1).
	semantics(app(lam(_G598, app(_G598, i)), app(lam(_G730, lam(_G733, app(_G730, lam(_G739, have(_G733, _G739))))), app(lam(_G865, lam(_G868, some(_G871, and(app(_G865, _G871), app(_G868, _G871))))), app(lam(_G970, lam(_G973, and(bloody(_G973), app(_G970, _G973)))), lam(_G1071, nose(_G1071)))))),1).
	semantics(app(lam(_G598, app(_G598, i)), app(lam(_G730, lam(_G733, app(_G730, lam(_G739, have(_G733, _G739))))), app(lam(_G865, lam(_G868, some(_G871, and(app(_G865, _G871), app(_G868, _G871))))), app(lam(_G970, lam(_G973, and(enlarged(_G973), app(_G970, _G973)))), lam(_G1071, spleen(_G1071)))))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), app(lam(_G862, lam(_G865, some(_G868, and(app(_G862, _G868), app(_G865, _G868))))), lam(_G991, earache(_G991))))),1).
	semantics(app(lam(_G598, app(_G598, i)), app(lam(_G730, lam(_G733, app(_G730, lam(_G739, have(_G733, _G739))))), app(lam(_G865, lam(_G868, some(_G871, and(app(_G865, _G871), app(_G868, _G871))))), app(lam(_G970, lam(_G973, and(stiff(_G973), app(_G970, _G973)))), lam(_G1071, neck(_G1071)))))),1).
	semantics(app(lam(_G598, app(_G598, i)), app(lam(_G730, lam(_G733, app(_G730, lam(_G739, have(_G733, _G739))))), app(lam(_G865, lam(_G868, some(_G871, and(app(_G865, _G871), app(_G868, _G871))))), app(lam(_G970, lam(_G973, and(runny(_G973), app(_G970, _G973)))), lam(_G1071, nose(_G1071)))))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, joint_pain)))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, have(_G727, _G733))))), lam(_G853, app(_G853, seizures)))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), app(lam(_G862, lam(_G865, some(_G868, and(app(_G862, _G868), app(_G865, _G868))))), lam(_G991, rash(_G991))))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, have(_G727, _G733))))), lam(_G853, app(_G853, itchiness)))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, have(_G727, _G733))))), lam(_G853, app(_G853, heartburn)))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), app(lam(_G862, lam(_G865, some(_G868, and(app(_G862, _G868), app(_G865, _G868))))), lam(_G991, fever(_G991))))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), app(lam(_G862, lam(_G865, some(_G868, and(app(_G862, _G868), app(_G865, _G868))))), lam(_G991, stomachache(_G991))))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, have(_G727, _G733))))), lam(_G853, app(_G853, paralysis)))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, have(_G727, _G733))))), lam(_G853, app(_G853, pockmarks)))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, have(_G727, _G733))))), lam(_G853, app(_G853, chills)))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, have(_G730, _G736))))), lam(_G862, app(_G862, night_sweats)))),1).
	semantics(app(lam(_G598, app(_G598, i)), app(lam(_G730, lam(_G733, app(_G730, lam(_G739, have(_G733, _G739))))), app(lam(_G865, lam(_G868, some(_G871, and(app(_G865, _G871), app(_G868, _G871))))), app(lam(_G970, lam(_G973, and(swollen(_G973), app(_G970, _G973)))), lam(_G1071, neck(_G1071)))))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, eq(_G727, _G733))))), lam(_G796, lam(_G799, and(headless(_G799), app(_G796, _G799)))))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, eq(_G727, _G733))))), lam(_G796, lam(_G799, and(wheezing(_G799), app(_G796, _G799)))))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, eq(_G730, _G736))))), lam(_G805, lam(_G808, and(salivatingexcessively(_G808), app(_G805, _G808)))))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, eq(_G727, _G733))))), lam(_G796, lam(_G799, and(vomiting(_G799), app(_G796, _G799)))))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, feel(_G730, _G736))))), lam(_G862, app(_G862, bodily_pain)))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, feel(_G727, _G733))))), lam(_G853, app(_G853, tired)))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, feel(_G727, _G733))))), lam(_G853, app(_G853, dizzy)))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, feel(_G730, _G736))))), lam(_G862, app(_G862, chest_pain)))),1).
	semantics(app(lam(_G595, app(_G595, i)), app(lam(_G727, lam(_G730, app(_G727, lam(_G736, feel(_G730, _G736))))), lam(_G862, app(_G862, muscle_pain)))),1).
	semantics(app(lam(_G592, app(_G592, i)), app(lam(_G724, lam(_G727, app(_G724, lam(_G733, feel(_G727, _G733))))), lam(_G853, app(_G853, nauseated)))),1).

/*
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, throat_spots))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, neck_pain))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, back_pain))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, leg_pain))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, rib_pain))))),1).
	semantics(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(sore(_G1072), app(_G1069, _G1072)))), lam(_G1170, throat(_G1170))))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, difficultybreathing))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), app(lam(_G961, lam(_G964, some(_G967, and(app(_G961, _G967), app(_G964, _G967))))), lam(_G1090, headache(_G1090)))))),1).
	semantics(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, convulsions))))),1).
	semantics(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(dry(_G1072), app(_G1069, _G1072)))), lam(_G1170, cough(_G1170))))))),1).
	semantics(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(bloody(_G1072), app(_G1069, _G1072)))), lam(_G1170, nose(_G1170))))))),1).
	semantics(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(enlarged(_G1072), app(_G1069, _G1072)))), lam(_G1170, spleen(_G1170))))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), app(lam(_G961, lam(_G964, some(_G967, and(app(_G961, _G967), app(_G964, _G967))))), lam(_G1090, earache(_G1090)))))),1).
	semantics(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(stiff(_G1072), app(_G1069, _G1072)))), lam(_G1170, neck(_G1170))))))),1).
	semantics(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(runny(_G1072), app(_G1069, _G1072)))), lam(_G1170, nose(_G1170))))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, joint_pain))))),1).
	semantics(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, seizures))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), app(lam(_G961, lam(_G964, some(_G967, and(app(_G961, _G967), app(_G964, _G967))))), lam(_G1090, rash(_G1090)))))),1).
	semantics(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, itchiness))))),1).
	semantics(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, heartburn))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), app(lam(_G961, lam(_G964, some(_G967, and(app(_G961, _G967), app(_G964, _G967))))), lam(_G1090, fever(_G1090)))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), app(lam(_G961, lam(_G964, some(_G967, and(app(_G961, _G967), app(_G964, _G967))))), lam(_G1090, stomachache(_G1090)))))),1).
	semantics(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, paralysis))))),1).
	semantics(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, pockmarks))))),1).
	semantics(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, chills))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, night_sweats))))),1).
	semantics(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(swollen(_G1072), app(_G1069, _G1072)))), lam(_G1170, neck(_G1170))))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), app(lam(_G961, lam(_G964, some(_G967, and(app(_G961, _G967), app(_G964, _G967))))), lam(_G1090, head(_G1090)))))),1).
	semantics(app(lam(_G688, app(_G688, you)), app(lam(_G574, lam(_G577, app(_G574, _G577))), lam(_G820, wheeze(_G820)))),1).
	semantics(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), lam(_G829, sweat_excessively(_G829)))),1).
	semantics(app(lam(_G688, app(_G688, you)), app(lam(_G574, lam(_G577, app(_G574, _G577))), lam(_G820, vomit(_G820)))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, feel(_G829, _G835))))), lam(_G961, app(_G961, bodily_pain))))),1).
	semantics(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, feel(_G826, _G832))))), lam(_G952, app(_G952, tired))))),1).
	semantics(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, feel(_G826, _G832))))), lam(_G952, app(_G952, dizzy))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, feel(_G829, _G835))))), lam(_G961, app(_G961, chest_pain))))),1).
	semantics(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, feel(_G829, _G835))))), lam(_G961, app(_G961, muscle_pain))))),1).
	semantics(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, feel(_G826, _G832))))), lam(_G952, app(_G952, nauseated))))),1).

*/
	
/*
	semantics(app(lam(_G387, app(_G387, you)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, have(_G522, _G528))))), lam(_G690, mononucleosis(_G690)))),1).
	semantics(app(lam(_G390, app(_G390, you)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, pertussis(_G699)))),1).
	semantics(app(lam(_G390, app(_G390, you)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, swineflu(_G699)))),1).
	semantics(app(lam(_G387, app(_G387, you)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, eq(_G522, _G528))))), lam(_G591, lam(_G594, and(headless(_G594), app(_G591, _G594)))))),1).
	semantics(app(lam(_G390, app(_G390, you)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, strep(_G699)))),1).
	semantics(app(lam(_G390, app(_G390, you)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, pulmonarytuberculosis(_G699)))),1).
	semantics(app(lam(_G387, app(_G387, you)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, have(_G522, _G528))))), lam(_G690, diarrhea(_G690)))),1).
	semantics(app(lam(_G387, app(_G387, you)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, have(_G522, _G528))))), lam(_G690, tonsilitis(_G690)))),1).
	semantics(app(lam(_G390, app(_G390, you)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, chickenpox(_G699)))),1).
	semantics(app(lam(_G393, app(_G393, you)), app(lam(_G525, lam(_G528, app(_G525, lam(_G534, have(_G528, _G534))))), lam(_G708, acidreflux(_G708)))),1).
	semantics(app(lam(_G393, app(_G393, you)), app(lam(_G525, lam(_G528, app(_G525, lam(_G534, have(_G528, _G534))))), app(lam(_G660, lam(_G663, some(_G666, and(app(_G660, _G666), app(_G663, _G666))))), lam(_G795, commoncold(_G795))))),1).
	semantics(app(lam(_G387, app(_G387, you)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, have(_G522, _G528))))), lam(_G690, malaria(_G690)))),1).
	semantics(app(lam(_G390, app(_G390, you)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G669, lam(_G672, and(yellow(_G672), app(_G669, _G672)))), lam(_G770, fever(_G770))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, throat_spots(_G699)))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G669, lam(_G672, and(swollen(_G672), app(_G669, _G672)))), lam(_G770, tonsils(_G770))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G669, lam(_G672, and(red(_G672), app(_G669, _G672)))), lam(_G770, tonsils(_G770))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G669, lam(_G672, and(nasal(_G672), app(_G669, _G672)))), lam(_G770, congestion(_G770))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, neck_pain(_G699)))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, back_pain(_G699)))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, leg_pain(_G699)))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, rib_pain(_G699)))),1).
	semantics(app(lam(_G393, app(_G393, i)), app(lam(_G525, lam(_G528, app(_G525, lam(_G534, have(_G528, _G534))))), app(lam(_G660, lam(_G663, some(_G666, and(app(_G660, _G666), app(_G663, _G666))))), app(lam(_G765, lam(_G768, and(sore(_G768), app(_G765, _G768)))), lam(_G866, throat(_G866)))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, difficultybreathing(_G699)))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G657, lam(_G660, some(_G663, and(app(_G657, _G663), app(_G660, _G663))))), lam(_G786, headache(_G786))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G669, lam(_G672, and(bodily(_G672), app(_G669, _G672)))), lam(_G770, sores(_G770))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G669, lam(_G672, and(bloody(_G672), app(_G669, _G672)))), lam(_G770, stools(_G770))))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, have(_G522, _G528))))), lam(_G690, convulsions(_G690)))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G669, lam(_G672, and(red(_G672), app(_G669, _G672)))), lam(_G770, eyes(_G770))))),1).
	semantics(app(lam(_G393, app(_G393, i)), app(lam(_G525, lam(_G528, app(_G525, lam(_G534, have(_G528, _G534))))), app(lam(_G660, lam(_G663, some(_G666, and(app(_G660, _G666), app(_G663, _G666))))), app(lam(_G765, lam(_G768, and(dry(_G768), app(_G765, _G768)))), lam(_G866, cough(_G866)))))),1).
	semantics(app(lam(_G393, app(_G393, i)), app(lam(_G525, lam(_G528, app(_G525, lam(_G534, have(_G528, _G534))))), app(lam(_G660, lam(_G663, some(_G666, and(app(_G660, _G666), app(_G663, _G666))))), app(lam(_G765, lam(_G768, and(bloody(_G768), app(_G765, _G768)))), lam(_G866, nose(_G866)))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G669, lam(_G672, and(bleeding(_G672), app(_G669, _G672)))), lam(_G770, gums(_G770))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G669, lam(_G672, and(urinary(_G672), app(_G669, _G672)))), lam(_G770, incontinence(_G770))))),1).
	semantics(app(lam(_G393, app(_G393, i)), app(lam(_G525, lam(_G528, app(_G525, lam(_G534, have(_G528, _G534))))), app(lam(_G660, lam(_G663, some(_G666, and(app(_G660, _G666), app(_G663, _G666))))), app(lam(_G765, lam(_G768, and(enlarged(_G768), app(_G765, _G768)))), lam(_G866, spleen(_G866)))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G669, lam(_G672, and(sensitive(_G672), app(_G669, _G672)))), lam(_G770, teeth(_G770))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G657, lam(_G660, some(_G663, and(app(_G657, _G663), app(_G660, _G663))))), lam(_G786, earache(_G786))))),1).
	semantics(app(lam(_G393, app(_G393, i)), app(lam(_G525, lam(_G528, app(_G525, lam(_G534, have(_G528, _G534))))), app(lam(_G660, lam(_G663, some(_G666, and(app(_G660, _G666), app(_G663, _G666))))), app(lam(_G765, lam(_G768, and(stiff(_G768), app(_G765, _G768)))), lam(_G866, neck(_G866)))))),1).
	semantics(app(lam(_G393, app(_G393, i)), app(lam(_G525, lam(_G528, app(_G525, lam(_G534, have(_G528, _G534))))), app(lam(_G660, lam(_G663, some(_G666, and(app(_G660, _G666), app(_G663, _G666))))), app(lam(_G765, lam(_G768, and(runny(_G768), app(_G765, _G768)))), lam(_G866, nose(_G866)))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, joint_pain(_G699)))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, have(_G522, _G528))))), lam(_G690, seizures(_G690)))),1).
	semantics(app(lam(_G393, app(_G393, i)), app(lam(_G525, lam(_G528, app(_G525, lam(_G534, have(_G528, _G534))))), app(lam(_G678, lam(_G681, and(loosewatery(_G681), app(_G678, _G681)))), lam(_G779, stools(_G779))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G657, lam(_G660, some(_G663, and(app(_G657, _G663), app(_G660, _G663))))), lam(_G786, rash(_G786))))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, have(_G522, _G528))))), lam(_G690, itchiness(_G690)))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, have(_G522, _G528))))), lam(_G690, heartburn(_G690)))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G657, lam(_G660, some(_G663, and(app(_G657, _G663), app(_G660, _G663))))), lam(_G786, fever(_G786))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G657, lam(_G660, some(_G663, and(app(_G657, _G663), app(_G660, _G663))))), lam(_G786, stomachache(_G786))))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, have(_G522, _G528))))), lam(_G690, paralysis(_G690)))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, feel(_G525, _G531))))), app(lam(_G669, lam(_G672, and(abdominal(_G672), app(_G669, _G672)))), lam(_G770, cramps(_G770))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G669, lam(_G672, and(bad(_G672), app(_G669, _G672)))), lam(_G770, breath(_G770))))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, have(_G522, _G528))))), lam(_G690, pockmarks(_G690)))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, have(_G522, _G528))))), lam(_G690, chills(_G690)))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), lam(_G699, night_sweats(_G699)))),1).
	semantics(app(lam(_G393, app(_G393, i)), app(lam(_G525, lam(_G528, app(_G525, lam(_G534, have(_G528, _G534))))), app(lam(_G660, lam(_G663, some(_G666, and(app(_G660, _G666), app(_G663, _G666))))), app(lam(_G765, lam(_G768, and(swollen(_G768), app(_G765, _G768)))), lam(_G866, neck(_G866)))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, have(_G525, _G531))))), app(lam(_G669, lam(_G672, and(abdominal(_G672), app(_G669, _G672)))), lam(_G770, cramps(_G770))))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, eq(_G522, _G528))))), lam(_G591, lam(_G594, and(headless(_G594), app(_G591, _G594)))))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, eq(_G522, _G528))))), lam(_G591, lam(_G594, and(wheezing(_G594), app(_G591, _G594)))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, eq(_G525, _G531))))), lam(_G600, lam(_G603, and(salivatingexcessively(_G603), app(_G600, _G603)))))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, eq(_G522, _G528))))), lam(_G591, lam(_G594, and(vomiting(_G594), app(_G591, _G594)))))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, feel(_G525, _G531))))), lam(_G699, bodily_pain(_G699)))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, feel(_G522, _G528))))), lam(_G690, tired(_G690)))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, feel(_G525, _G531))))), app(lam(_G669, lam(_G672, and(abdominal(_G672), app(_G669, _G672)))), lam(_G770, cramps(_G770))))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, feel(_G522, _G528))))), lam(_G690, dizzy(_G690)))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, feel(_G525, _G531))))), lam(_G699, chest_pain(_G699)))),1).
	semantics(app(lam(_G390, app(_G390, i)), app(lam(_G522, lam(_G525, app(_G522, lam(_G531, feel(_G525, _G531))))), lam(_G699, muscle_pain(_G699)))),1).
	semantics(app(lam(_G387, app(_G387, i)), app(lam(_G519, lam(_G522, app(_G519, lam(_G528, feel(_G522, _G528))))), lam(_G690, nauseated(_G690)))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), lam(_G798, throat_spots(_G798))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G768, lam(_G771, and(swollen(_G771), app(_G768, _G771)))), lam(_G869, tonsils(_G869)))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G768, lam(_G771, and(red(_G771), app(_G768, _G771)))), lam(_G869, tonsils(_G869)))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G768, lam(_G771, and(nasal(_G771), app(_G768, _G771)))), lam(_G869, congestion(_G869)))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), lam(_G798, neck_pain(_G798))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), lam(_G798, back_pain(_G798))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), lam(_G798, leg_pain(_G798))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), lam(_G798, rib_pain(_G798))))),1).
	semantics(app(lam(_G492, app(_G492, you)), app(lam(_G378, lam(_G381, app(_G378, _G381))), app(lam(_G624, lam(_G627, app(_G624, lam(_G633, have(_G627, _G633))))), app(lam(_G759, lam(_G762, some(_G765, and(app(_G759, _G765), app(_G762, _G765))))), app(lam(_G864, lam(_G867, and(sore(_G867), app(_G864, _G867)))), lam(_G965, throat(_G965))))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), lam(_G798, difficultybreathing(_G798))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G756, lam(_G759, some(_G762, and(app(_G756, _G762), app(_G759, _G762))))), lam(_G885, headache(_G885)))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G768, lam(_G771, and(bodily(_G771), app(_G768, _G771)))), lam(_G869, sores(_G869)))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G768, lam(_G771, and(bloody(_G771), app(_G768, _G771)))), lam(_G869, stools(_G869)))))),1).
	semantics(app(lam(_G486, app(_G486, you)), app(lam(_G372, lam(_G375, app(_G372, _G375))), app(lam(_G618, lam(_G621, app(_G618, lam(_G627, have(_G621, _G627))))), lam(_G789, convulsions(_G789))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G768, lam(_G771, and(red(_G771), app(_G768, _G771)))), lam(_G869, eyes(_G869)))))),1).
	semantics(app(lam(_G492, app(_G492, you)), app(lam(_G378, lam(_G381, app(_G378, _G381))), app(lam(_G624, lam(_G627, app(_G624, lam(_G633, have(_G627, _G633))))), app(lam(_G759, lam(_G762, some(_G765, and(app(_G759, _G765), app(_G762, _G765))))), app(lam(_G864, lam(_G867, and(dry(_G867), app(_G864, _G867)))), lam(_G965, cough(_G965))))))),1).
	semantics(app(lam(_G492, app(_G492, you)), app(lam(_G378, lam(_G381, app(_G378, _G381))), app(lam(_G624, lam(_G627, app(_G624, lam(_G633, have(_G627, _G633))))), app(lam(_G759, lam(_G762, some(_G765, and(app(_G759, _G765), app(_G762, _G765))))), app(lam(_G864, lam(_G867, and(bloody(_G867), app(_G864, _G867)))), lam(_G965, nose(_G965))))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G768, lam(_G771, and(bleeding(_G771), app(_G768, _G771)))), lam(_G869, gums(_G869)))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G768, lam(_G771, and(urinary(_G771), app(_G768, _G771)))), lam(_G869, incontinence(_G869)))))),1).
	semantics(app(lam(_G492, app(_G492, you)), app(lam(_G378, lam(_G381, app(_G378, _G381))), app(lam(_G624, lam(_G627, app(_G624, lam(_G633, have(_G627, _G633))))), app(lam(_G759, lam(_G762, some(_G765, and(app(_G759, _G765), app(_G762, _G765))))), app(lam(_G864, lam(_G867, and(enlarged(_G867), app(_G864, _G867)))), lam(_G965, spleen(_G965))))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G768, lam(_G771, and(sensitive(_G771), app(_G768, _G771)))), lam(_G869, teeth(_G869)))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G756, lam(_G759, some(_G762, and(app(_G756, _G762), app(_G759, _G762))))), lam(_G885, earache(_G885)))))),1).
	semantics(app(lam(_G492, app(_G492, you)), app(lam(_G378, lam(_G381, app(_G378, _G381))), app(lam(_G624, lam(_G627, app(_G624, lam(_G633, have(_G627, _G633))))), app(lam(_G759, lam(_G762, some(_G765, and(app(_G759, _G765), app(_G762, _G765))))), app(lam(_G864, lam(_G867, and(stiff(_G867), app(_G864, _G867)))), lam(_G965, neck(_G965))))))),1).
	semantics(app(lam(_G492, app(_G492, you)), app(lam(_G378, lam(_G381, app(_G378, _G381))), app(lam(_G624, lam(_G627, app(_G624, lam(_G633, have(_G627, _G633))))), app(lam(_G759, lam(_G762, some(_G765, and(app(_G759, _G765), app(_G762, _G765))))), app(lam(_G864, lam(_G867, and(runny(_G867), app(_G864, _G867)))), lam(_G965, nose(_G965))))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), lam(_G798, joint_pain(_G798))))),1).
	semantics(app(lam(_G486, app(_G486, you)), app(lam(_G372, lam(_G375, app(_G372, _G375))), app(lam(_G618, lam(_G621, app(_G618, lam(_G627, have(_G621, _G627))))), lam(_G789, seizures(_G789))))),1).
	semantics(app(lam(_G492, app(_G492, you)), app(lam(_G378, lam(_G381, app(_G378, _G381))), app(lam(_G624, lam(_G627, app(_G624, lam(_G633, have(_G627, _G633))))), app(lam(_G777, lam(_G780, and(loosewatery(_G780), app(_G777, _G780)))), lam(_G878, stools(_G878)))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G756, lam(_G759, some(_G762, and(app(_G756, _G762), app(_G759, _G762))))), lam(_G885, rash(_G885)))))),1).
	semantics(app(lam(_G486, app(_G486, you)), app(lam(_G372, lam(_G375, app(_G372, _G375))), app(lam(_G618, lam(_G621, app(_G618, lam(_G627, have(_G621, _G627))))), lam(_G789, itchiness(_G789))))),1).
	semantics(app(lam(_G486, app(_G486, you)), app(lam(_G372, lam(_G375, app(_G372, _G375))), app(lam(_G618, lam(_G621, app(_G618, lam(_G627, have(_G621, _G627))))), lam(_G789, heartburn(_G789))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G756, lam(_G759, some(_G762, and(app(_G756, _G762), app(_G759, _G762))))), lam(_G885, fever(_G885)))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G756, lam(_G759, some(_G762, and(app(_G756, _G762), app(_G759, _G762))))), lam(_G885, stomachache(_G885)))))),1).
	semantics(app(lam(_G486, app(_G486, you)), app(lam(_G372, lam(_G375, app(_G372, _G375))), app(lam(_G618, lam(_G621, app(_G618, lam(_G627, have(_G621, _G627))))), lam(_G789, paralysis(_G789))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, feel(_G624, _G630))))), app(lam(_G768, lam(_G771, and(abdominal(_G771), app(_G768, _G771)))), lam(_G869, cramps(_G869)))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G768, lam(_G771, and(bad(_G771), app(_G768, _G771)))), lam(_G869, breath(_G869)))))),1).
	semantics(app(lam(_G486, app(_G486, you)), app(lam(_G372, lam(_G375, app(_G372, _G375))), app(lam(_G618, lam(_G621, app(_G618, lam(_G627, have(_G621, _G627))))), lam(_G789, pockmarks(_G789))))),1).
	semantics(app(lam(_G486, app(_G486, you)), app(lam(_G372, lam(_G375, app(_G372, _G375))), app(lam(_G618, lam(_G621, app(_G618, lam(_G627, have(_G621, _G627))))), lam(_G789, chills(_G789))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), lam(_G798, night_sweats(_G798))))),1).
	semantics(app(lam(_G492, app(_G492, you)), app(lam(_G378, lam(_G381, app(_G378, _G381))), app(lam(_G624, lam(_G627, app(_G624, lam(_G633, have(_G627, _G633))))), app(lam(_G759, lam(_G762, some(_G765, and(app(_G759, _G765), app(_G762, _G765))))), app(lam(_G864, lam(_G867, and(swollen(_G867), app(_G864, _G867)))), lam(_G965, neck(_G965))))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G768, lam(_G771, and(abdominal(_G771), app(_G768, _G771)))), lam(_G869, cramps(_G869)))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, have(_G624, _G630))))), app(lam(_G756, lam(_G759, some(_G762, and(app(_G756, _G762), app(_G759, _G762))))), lam(_G885, head(_G885)))))),1).
	semantics(app(lam(_G483, app(_G483, you)), app(lam(_G369, lam(_G372, app(_G369, _G372))), lam(_G615, wheeze(_G615)))),1).
	semantics(app(lam(_G486, app(_G486, you)), app(lam(_G372, lam(_G375, app(_G372, _G375))), lam(_G624, sweat_excessively(_G624)))),1).
	semantics(app(lam(_G483, app(_G483, you)), app(lam(_G369, lam(_G372, app(_G369, _G372))), lam(_G615, vomit(_G615)))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, feel(_G624, _G630))))), lam(_G798, bodily_pain(_G798))))),1).
	semantics(app(lam(_G486, app(_G486, you)), app(lam(_G372, lam(_G375, app(_G372, _G375))), app(lam(_G618, lam(_G621, app(_G618, lam(_G627, feel(_G621, _G627))))), lam(_G789, tired(_G789))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, feel(_G624, _G630))))), app(lam(_G768, lam(_G771, and(abdominal(_G771), app(_G768, _G771)))), lam(_G869, cramps(_G869)))))),1).
	semantics(app(lam(_G486, app(_G486, you)), app(lam(_G372, lam(_G375, app(_G372, _G375))), app(lam(_G618, lam(_G621, app(_G618, lam(_G627, feel(_G621, _G627))))), lam(_G789, dizzy(_G789))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, feel(_G624, _G630))))), lam(_G798, chest_pain(_G798))))),1).
	semantics(app(lam(_G489, app(_G489, you)), app(lam(_G375, lam(_G378, app(_G375, _G378))), app(lam(_G621, lam(_G624, app(_G621, lam(_G630, feel(_G624, _G630))))), lam(_G798, muscle_pain(_G798))))),1).
	semantics(app(lam(_G486, app(_G486, you)), app(lam(_G372, lam(_G375, app(_G372, _G375))), app(lam(_G618, lam(_G621, app(_G618, lam(_G627, feel(_G621, _G627))))), lam(_G789, nauseated(_G789))))),1).

*/
