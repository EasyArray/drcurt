

:- module(backward,[english1/2,
						  english2/2,
 						  engs/2,
						  bengs/2]).
						
% loading in necessary files				 

:- [lambda].

% from words to semantics
english1(E,F) :-
	engs(Sem,E),
	bengs(Sem,F).

% from semantics to words	
english2(F,E) :-
	bengs(Sem,F),
	engs(Sem,E).
	
% base predicates for sem/sents - for clarity
	
engs(Sem,E) :-
	lambda:t([sem:Sem],E,[]).
	
bengs(Sem,F) :-
	lambda:bt([sem:Sem],F,[]).
	
