:- module(diagnosis, [init/0,
		      pruneDiseases/2,
		      diseasesLeft/1,
		      initFromList/1,
		      askAbout/1, disease/2]).

:- use_module(diseases, [diseaseList/1,
						disease/2,
						simple2sem/2]).


:- dynamic alreadyAsked/1.


%%%%%%%%%%%%%%%%%%%%%%%
% Generate a listing of symptoms

genSymptoms(SymptomList) :-
	setof(X, (Y ^ disease(Y, X)) , SymptomList).

unite([A, B, C], Out) :-
	union(A,B,AB),
	union(AB,C,Out).

unite([A, B], Out) :-
	union(A,B,Out).

unite([A, B | T],Out) :-
	union(A,B,C),
	unite(T,D),
	union(C,D,Out).

symptomListing(Out) :-
	genSymptoms(Y),
	unite(Y, Z),

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

% This finds the symptom that is most common, if MostLeast == "most"
% or least common, if MostLeast == "least".

scoreSymptoms([], _, 0).
scoreSymptoms([Symptom | Tail], MostLeast, Out) :-
	% get a list of diseases
	genSymptoms(Diseases),
	scoreSymptomsHelper(Symptom, Diseases, SymptomScore),

	% find best symptom
	(retract(best(Best, BestScore))
	->
		(MostLeast == 'most'
		-> 
			(SymptomScore > BestScore
			-> assert(best(Symptom, SymptomScore))
			;  assert(best(Best, BestScore))
			)
			
		;  
			(SymptomScore < BestScore
			-> assert(best(Symptom, SymptomScore))
			;  assert(best(Best, BestScore))
			)
		)

	;
		assert(best(Symptom, SymptomScore))
	),
	scoreSymptoms(Tail, MostLeast, _),
	best(Out, _).


scoreSymptomsHelper(_, [], 0).
scoreSymptomsHelper(Symptom, [SymptomList | Tail], Score) :-
	(member(Symptom, SymptomList)
	-> TempScore is 1
	; TempScore is 0
	),
	scoreSymptomsHelper(Symptom, Tail, ChildScore),
	Score is TempScore + ChildScore.

	
% New addition!
% Find the symptom that is /least common/ if the one that is 
% most common occurs in /all/ of the remaining diseases.
% asking about that is kind of useless!

%%%%%%%%%%%%%%%%%%%%%%%
% Retract diseases based on patient's answer

pruneDiseases(Symptom, TrueOrFalse) :-
	setof((Y,X), (Y ^ disease(Y, X)) , DiseaseList), % list of (disease, symptom)
	pruneDiseasesHelper(Symptom, TrueOrFalse, DiseaseList),
	%update the alreadyAsked list
	alreadyAsked(AA),
	append([Symptom], AA, NewAA),
	retract(alreadyAsked(_)),
	assert(alreadyAsked(NewAA)).

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

diseasesLeft(0) :-
	not(disease(_,_)).

diseasesLeft(Num) :-
	setof((Y,X), (Y ^ disease(Y, X)) , DiseaseList),
	length(DiseaseList, Num).

askAbout(Symptom) :-
	symptomListing(SList),

	% if most common occurs diseasesLeft times, get least common symptom.
	% doesn't make that much sense to ask about something that'll
	% eliminate either all or none of the diseases. Or does it?!
	
	scoreSymptoms(SList, 'most', SymptomMostCommon),
	best(_, Score),
	retract(best(_,_)), 	% clean up stuff from scoreSymptoms
	diseasesLeft(NumDiseases),
	
	(Score == NumDiseases
	-> 
		scoreSymptoms(SList, 'least', Symptom),
		retract(best(_,_))
	; 
		Symptom is SymptomMostCommon
	),
	true.
