

:- module(logicTestSuite,[semantics/2]).

testAll :-
	semantics(S,Thing),
	evalSemantics(S);
	true.

semantics(sem:some(_, and(headache(_), have(you, _))),1).