:- module(diagnosis, [init/0,
		      pruneDiseases/2,
		      diseasesLeft/1,
		      askAbout/1]).


:- dynamic alreadyAsked/1.

%%%%%%%%%%%%%%%%%%%%%%%
% List of diseases

diseaseList([

disease(mono, [fatigue, malaise, notHungry, hurt(head), hurt(throat), coughing, chills, fever, nausea, hurt(stomach)]),
disease(pertussis, [coughing, whoop, problem(urinary), problem(artery), hurt(ear), runnyNose]),
disease(swineFlu, [fever, coughing, hurt(throat), hurt(body), hurt(head), chills, fatigue]),
disease(decapitation, [hurt(head), paralysis, hurt(throat), beheaded]),
disease(strepThroat, [hurt(throat), problem(swallowing), fever, looksWeird(throat), sores])

]).

%%%%%%%%%%%%%%%%%%%%%%%
% Generate a listing of symptoms

genSymptomsOne(SymptomList) :-
	setof(X, (Y ^ disease(Y, X)) , SymptomList).

genSymptomsTwo([A, B, C], Out) :-
	union(A,B,AB),
	union(AB,C,Out).

genSymptomsTwo([A, B], Out) :-
	union(A,B,Out).

genSymptomsTwo([A, B | T],Out) :-
	union(A,B,C),
	genSymptomsTwo(T,D),
	union(C,D,Out).

symptomListing(Out) :-
	genSymptomsOne(Y),
	genSymptomsTwo(Y, Z),

	% exclude symptoms we've already asked about
	alreadyAsked(AA),
	setof(S, ( member(S, Z), not(member(S, AA)) ), Out).



%%%%%%%%%%%%%%%%%%%%%%%
% Initialize environment with diseases
init :-
	retractall(symptomList(_)),
	retractall(disease(_,_)),
	retractall(alreadyAsked(_)),
	assert(alreadyAsked([])),
	diseaseList(D),
	initFromList(D).

initFromList([]).
initFromList([H|T]) :-
	assert(H),
	initFromList(T).


%%%%%%%%%%%%%%%%%%%%%%%
% Get a score for each symptom
/*
for each symptom
iterate through each disease(X,Y)
if member(symptom, Y)
symptomScore ++
*/

scoreSymptoms([], 0).
scoreSymptoms([Symptom | Tail], Out) :-
	% get a list of diseases
	genSymptomsOne(Diseases),
	scoreSymptomsHelper(Symptom, Diseases, SymptomScore),

	% find best symptom
	(retract(best(Best, BestScore))
	->
		(SymptomScore > BestScore
		-> assert(best(Symptom, SymptomScore))
		;  assert(best(Best, BestScore))
		)
	;
		assert(best(Symptom, SymptomScore))
	),
	scoreSymptoms(Tail, _),
	best(Out, _).


scoreSymptomsHelper(_, [], 0).
scoreSymptomsHelper(Symptom, [SymptomList | Tail], Score) :-
	(member(Symptom, SymptomList)
	-> TempScore is 1
	; TempScore is 0
	),
	scoreSymptomsHelper(Symptom, Tail, ChildScore),
	Score is TempScore + ChildScore.

%%%%%%%%%%%%%%%%%%%%%%%
% Retract diseases based on patient's answer

pruneDiseases(Symptom, TrueOrFalse) :-
	setof((Y,X), (Y ^ disease(Y, X)) , DiseaseList), % list of (disease, symptom)
	pruneDiseasesHelper(Symptom, TrueOrFalse, DiseaseList).

pruneDiseasesHelper(_,_,[]).
pruneDiseasesHelper(Symptom, TrueOrFalse, [(Name, Symptoms) | Tail]) :-
	/*
	// if true and member of symptoms, do not retract name
	// if true and not member of symptoms, retract
	// if false and member of symptoms, retract
	// if false and not member of symptoms, do not retract
	*/
	(TrueOrFalse == true
	->	(member(Symptom, Symptoms)
		-> true
		; retract(disease(Name, Symptoms)), print('\nretracting '), print(Name)
		)
	;	(member(Symptom, Symptoms)
		-> retract(disease(Name, Symptoms)), print('\nretracting '), print(Name)
		; true
		)
	),
	pruneDiseasesHelper(Symptom, TrueOrFalse, Tail).

diseasesLeft(Num) :-
	setof((Y,X), (Y ^ disease(Y, X)) , DiseaseList),
	print(DiseaseList),
	length(DiseaseList, Num).

askAbout(Symptom) :-
	symptomListing(SList),
	scoreSymptoms(SList, Symptom),
	retract(best(_,_)), % clean up stuff from scoreSymptoms

	%update the alreadyAsked list
	alreadyAsked(AA),
	append([Symptom], AA, NewAA),
	retract(alreadyAsked(_)),
	assert(alreadyAsked(NewAA)).
