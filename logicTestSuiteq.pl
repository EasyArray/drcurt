
:- module(logicTestSuiteq,[semantics2/2]).

testAll :-
	semantics2(S,_),
	evalsemantics2(S); 
	true.

semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, throat_spots))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, neck_pain))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, back_pain))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, leg_pain))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, rib_pain))))),1).
semantics2(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(sore(_G1072), app(_G1069, _G1072)))), lam(_G1170, throat(_G1170))))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, difficultybreathing))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), app(lam(_G961, lam(_G964, some(_G967, and(app(_G961, _G967), app(_G964, _G967))))), lam(_G1090, headache(_G1090)))))),1).
semantics2(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, convulsions))))),1).
semantics2(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(dry(_G1072), app(_G1069, _G1072)))), lam(_G1170, cough(_G1170))))))),1).
semantics2(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(bloody(_G1072), app(_G1069, _G1072)))), lam(_G1170, nose(_G1170))))))),1).
semantics2(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(enlarged(_G1072), app(_G1069, _G1072)))), lam(_G1170, spleen(_G1170))))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), app(lam(_G961, lam(_G964, some(_G967, and(app(_G961, _G967), app(_G964, _G967))))), lam(_G1090, earache(_G1090)))))),1).
semantics2(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(stiff(_G1072), app(_G1069, _G1072)))), lam(_G1170, neck(_G1170))))))),1).
semantics2(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(runny(_G1072), app(_G1069, _G1072)))), lam(_G1170, nose(_G1170))))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, joint_pain))))),1).
semantics2(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, seizures))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), app(lam(_G961, lam(_G964, some(_G967, and(app(_G961, _G967), app(_G964, _G967))))), lam(_G1090, rash(_G1090)))))),1).
semantics2(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, itchiness))))),1).
semantics2(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, heartburn))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), app(lam(_G961, lam(_G964, some(_G967, and(app(_G961, _G967), app(_G964, _G967))))), lam(_G1090, fever(_G1090)))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), app(lam(_G961, lam(_G964, some(_G967, and(app(_G961, _G967), app(_G964, _G967))))), lam(_G1090, stomachache(_G1090)))))),1).
semantics2(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, paralysis))))),1).
semantics2(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, pockmarks))))),1).
semantics2(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, have(_G826, _G832))))), lam(_G952, app(_G952, chills))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), lam(_G961, app(_G961, night_sweats))))),1).
semantics2(app(lam(_G697, app(_G697, you)), app(lam(_G583, lam(_G586, app(_G583, _G586))), app(lam(_G829, lam(_G832, app(_G829, lam(_G838, have(_G832, _G838))))), app(lam(_G964, lam(_G967, some(_G970, and(app(_G964, _G970), app(_G967, _G970))))), app(lam(_G1069, lam(_G1072, and(swollen(_G1072), app(_G1069, _G1072)))), lam(_G1170, neck(_G1170))))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, have(_G829, _G835))))), app(lam(_G961, lam(_G964, some(_G967, and(app(_G961, _G967), app(_G964, _G967))))), lam(_G1090, head(_G1090)))))),1).
semantics2(app(lam(_G688, app(_G688, you)), app(lam(_G574, lam(_G577, app(_G574, _G577))), lam(_G820, wheeze(_G820)))),1).
semantics2(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), lam(_G829, sweat_excessively(_G829)))),1).
semantics2(app(lam(_G688, app(_G688, you)), app(lam(_G574, lam(_G577, app(_G574, _G577))), lam(_G820, vomit(_G820)))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, feel(_G829, _G835))))), lam(_G961, app(_G961, bodily_pain))))),1).
semantics2(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, feel(_G826, _G832))))), lam(_G952, app(_G952, tired))))),1).
semantics2(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, feel(_G826, _G832))))), lam(_G952, app(_G952, dizzy))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, feel(_G829, _G835))))), lam(_G961, app(_G961, chest_pain))))),1).
semantics2(app(lam(_G694, app(_G694, you)), app(lam(_G580, lam(_G583, app(_G580, _G583))), app(lam(_G826, lam(_G829, app(_G826, lam(_G835, feel(_G829, _G835))))), lam(_G961, app(_G961, muscle_pain))))),1).
semantics2(app(lam(_G691, app(_G691, you)), app(lam(_G577, lam(_G580, app(_G577, _G580))), app(lam(_G823, lam(_G826, app(_G823, lam(_G832, feel(_G826, _G832))))), lam(_G952, app(_G952, nauseated))))),1).

