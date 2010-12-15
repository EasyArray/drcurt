/*************************************************************************

    File: lambda.pl
    Copyright (C) 2004,2005,2006 Patrick Blackburn & Johan Bos

    This file is part of BB1, version 1.3 (November 2006).

    BB1 is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    BB1 is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with BB1; if not, write to the Free Software Foundation, Inc., 
    59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

*************************************************************************/

:- module(lambda,[info/0,
                  infix/0,
                  prefix/0,
                  lambda/0,
                  lambda/2,
                  lambdaTestSuite/0]).
% need to add logic test suite when it's all set up

:- use_module(readLine,[readLine/1]).

:- use_module(comsemPredicates,[infix/0,
                                prefix/0,
                                printRepresentations/1,
				compose/3]).

:- use_module(betaConversion,[betaConvert/2]).

:- use_module(sentenceTestSuite2,[sentence/2]).

:- [englishGrammar].

:- [englishLexicon].

:- [semLexLambda].

:- [semRulesLambda].


/*========================================================================
   Driver Predicates
========================================================================*/

lambda:-
	readLine(Sentence),
        lambda(Sentence,Sems),
	printRepresentations(Sems).

lambda(Sentence,Sems):-
%	setof(Sem,t([sem:Sem],Sentence,[]),Sems).
	setof(S,(t([sem:Sem],Sentence,[]),betaConvert(Sem,S)),Sems).

/*========================================================================
   Test Suite Predicates
========================================================================*/


sentenceCheck(Sentence, TrueOrFalse, Sem) :-
	( lambda:t([sem:Sem],Sentence,[])
	-> TrueOrFalse is 1
	; TrueOrFalse is 0
	).
	
	
	
/*
sentenceCheck(Sentence, TrueOrFalse) :-
	( engs(Sem,E) :-
		lambda:t([sem:Sem],E,[])
	-> TrueOrFalse is 1
	; TrueOrFalse is 0
	).
*/
	
	


/*
stupidSentenceCheck(Sentence, OneOrZero) :-
	( member(horrible, Sentence)
	-> OneOrZero is 1
	;	OneOrZero is 0
	).
*/


lambdaTestSuite:-
	nl, write('>>>>> LAMBDA ON SENTENCE TEST SUITE <<<<< '), nl,
        sentence(Sentence,_),
        nl, write('Sentence: '), write(Sentence),
		
	
	sentenceCheck(Sentence, TrueOrFalse, Sem),
	(TrueOrFalse =:= 1
		->	print(' True. The semantics are: '), write(Sem)
		;	print(' False')
	),
	fail.
	

	
	
	/*
	lambda(Sentence,Formulas),
	printRepresentations(Formulas),
        fail.
	*/

lambdaTestSuite.

/*
logicCheck(Sem, TrueOrFalse) :-
	( lambda:t([sem:Sem],Sentence,[])
	-> TrueOrFalse is 1
	; TrueOrFalse is 0
	).
	
	*/

/*
logicTestSuite :-
	nl, write('>>>>> LAMBDA ON LOGIC STEST SUITE <<<<<'), nl,
		sentence(Sem,_),
		nl, write('Sentence: '), write(Sentence),
	
	logicCheck(Sem, TrueOrFalse),
	(TrueOrFalse =:= 1
		-> print(' True')
		;  print(' False')
	),
	fail.
	
logicTestSuite.
% this probably does not actually work the way we want it to
*/

/*========================================================================
   Info
========================================================================*/

info:-
   format('~n> ------------------------------------------------------------------ <',[]),
   format('~n> lambda.pl, by Patrick Blackburn and Johan Bos                      <',[]),
   format('~n>                                                                    <',[]),
   format('~n> ?- lambda.              - parse a typed-in sentence                <',[]),
   format('~n> ?- lambda(S,F).         - parse a sentence and return formula      <',[]),
   format('~n> ?- lambdaTestSuite.     - run the test suite                       <',[]),
   format('~n> ?- infix.               - switches to infix display mode           <',[]),
   format('~n> ?- prefix.              - switches to prefix display mode          <',[]),
   format('~n> ?- info.                - shows this information                   <',[]),
   format('~n> ------------------------------------------------------------------ <',[]),
   format('~n~n',[]).


/*========================================================================
   Display info at start
========================================================================*/

:- info.
