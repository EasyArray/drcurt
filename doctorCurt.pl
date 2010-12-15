:- module(curt,[curt/0,infix/0,prefix/0]).

:- use_module(readLine,[readLine/1]).

:- use_module(comsemPredicates,[infix/0,
                                prefix/0,
                                memberList/2,
                                appendLists/3,
				printRepresentations/1]).

:- use_module(kellerStorage,[kellerStorage/2]).

:- use_module(curtPredicates,[curtHelp/0,
                              curtOutput/1,
                              updateReadings/1,
                              updateHistory/1,
                              clearHistory/0,
                              selectReadings/3]).

:- use_module(foResolution,[rprove/1]).

:- use_module(diagnosis, [init/0,
				disease/2,
			  pruneDiseases/2,
			  diseasesLeft/1,
			  askAbout/1, disease/2]).
			  
:- use_module(lambda,[%info/0,
  infix/0,
  prefix/0,
  lambda/0,
  lambda/2,
  lambdaTestSuite/0]).

/* we'll also want to add modules for diagnosis and translation */

/*========================================================================
   Dynamic Predicates
========================================================================*/

:- dynamic history/1, readings/1.

history([]).
readings([]).

/*========================================================================
   Start Curt
========================================================================*/

curt:-
	init,
   format('~n Curt: Hello, I am Dr. Curt.',[]),
   format('~n Curt: What symptom are you currently experiencing?',[]),
   format('~n~n',[]),
   curtStart(true).

curtStart(true):-
	%in the final case, we'd want the user to be able to enter a sentence such as "I'm coughing."
	%the use of read() is an abstraction for testing purposes. ideally we'd use something like sendToGrammar()
	read(Symp),
	%sendToGrammar(Input,Symp), %input is sentence, Symp is the returned symptom

	pruneDiseases(Symp, true),
	
	% check if there are diseases left to ask about
	diseasesLeft(NumDiseases),
	(   NumDiseases == 0
	-> 	curtFinish(false), fail
	;   true
	),
	
	format('~n Curt: I see. Is there anything else?',[]),
	format('~n~n',[]),
	read(Response),
	(   Response == 'no'
	->  curtTalk(run),
	    curtTalk(quit)
	;   	
		format('~n Curt: OK. What else is ailing you?',[]),
		format('~n~n',[]),
		curtStart(true)
	).


/*========================================================================
   Control
========================================================================*/



curtTalk(quit).

curtTalk(run):-
	diseasesLeft(Num),
	(   Num == 1
	->  disease(X,Y),
		curtFinish(X)
	; diseasesLeft(Num)
	),
	askAbout(X), %diagnosis logic gives X to ask user about, flag tells us if diagnosis is complete
	%doYouHave(X), % outputs text,asking user if they suffer from X. below is a simpler non-grammatical case
	format('~n Curt: Do you experience: ',[]),
	write(X),
	format('~n',[]),
	read(Y),
	(   Y == 'yes'
	->  pruneDiseases(X, true)
	;   pruneDiseases(X, false)
	),
	diseasesLeft(Num2),
	(   Num2 == 0
	-> 	curtFinish(false)
	;   curtTalk(run)
	).

% i can't get the code to reach this false case. if you can figure it out it'd be great!
curtFinish(false):-
	format('~n Curt: Based upon the symptoms you have entered, I cannot make a diagnosis. Sorry!',[]),
	curtTalk(quit), !.
		
curtFinish(X):-
	format('~n Curt: Sorry friend, it would appear that you are suffering from: ',[]),
	write(X),
	format('~n',[]),
	format('~n Curt: Please note that I am no substitute for real medical advice!',[]),
	format('~n Curt: Please be sure to see a real doctor to confirm any of my findings!',[]),
	curtTalk(quit).
	
/*========================================================================
   Update Curt's Information State
========================================================================*/

curtUpdate([],[clarify],run):- !.

curtUpdate([bye],[bye],quit):- !,
   updateReadings([]),
   clearHistory.

curtUpdate([new],[],run):- !,
   updateReadings([]),
   clearHistory.

curtUpdate([help],[],run):- !,
   curtHelp.

curtUpdate([infix],[],run):- !,
   infix.

curtUpdate([prefix],[],run):- !,
   prefix.

curtUpdate([select,X],[],run):-
   number(X),
   readings(R1),
   selectReadings(X,R1,R2), !,
   updateReadings(R2).

curtUpdate([readings],[],run):- !,
   readings(R),
   printRepresentations(R).

curtUpdate([history],[],run):- !,
   history(H),
   printRepresentations(H).

curtUpdate(Input,Moves,run):-
   kellerStorage(Input,Readings), !,
   updateHistory(Input),
   consistentReadings(Readings,[]-ConsReadings),
   (
      ConsReadings=[],
      Moves=[contradiction]
   ;
      \+ ConsReadings=[],
      Moves=[accept],
      combine(ConsReadings,CombinedReadings),
      updateReadings(CombinedReadings)
   ).

curtUpdate(_,[noparse],run).


/*========================================================================
   Select Consistent Readings
========================================================================*/

consistentReadings([],C-C).

consistentReadings([New|Readings],C1-C2):-
   readings(Old),
   (
      consistent(Old,New), !,
      consistentReadings(Readings,[New|C1]-C2)
   ;
      consistentReadings(Readings,C1-C2)
   ).


/*========================================================================
   Combine New Utterances with History
========================================================================*/

combine(New,New):-
   readings([]).

combine(Readings,Updated):-
   readings([Old|_]),
   findall(and(Old,New),memberList(New,Readings),Updated).


/*========================================================================
   Info
========================================================================*/

info:-
   format('~n> ---------------------------------------------------------------------- <',[]),
   format('~n> drcurt.pl, based upon rugratcurt.pl by Patrick Blackburn and Johan Bos <',[]),
   format('~n>                                                                        <',[]),
   format('~n> ?- curt.	       - Have Dr. Curt diagnose your condition!	         <',[]),
   format('~n>                                                                        <',[]),
   format('~n> Type "help" to get more information about Dr. Curt!                    <',[]),
   format('~n>                                                                        <',[]),
   format('~n> Please note that Curt is no substitute for a real medical professional!<',[]),
   format('~n> ---------------------------------------------------------------------- <',[]),
   format('~n~n',[]).


/*========================================================================
   Display info at start
========================================================================*/

:- info.




























































