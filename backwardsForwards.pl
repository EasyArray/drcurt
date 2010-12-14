

:- module(backforth,[english/2,
						  benglish/2]).
						
% loading in necessary files				 

:- [lambda].

% from words to logic
	
english(Words,Logic) :-
	lambda:t([sem:Logic],Words,[]).

% from logic to words	
	
benglish(Logic,Words) :-
	lambda:bt([sem:Logic],Words,[]).

	
