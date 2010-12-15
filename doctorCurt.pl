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

:- use_module(diagnosis, [initFromList/1,
			  pruneDiseases/2,
			  diseasesLeft/1,
			  askAbout/1]).
			  
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
   format('~n Curt: Hello, I am Dr. Curt.',[]),
   format('~n Curt: What symptoms are you currently experiencing?',[]),
   format('~n~n',[]),
   curtStart(true, Symptoms).

curtStart(true, Symptoms):-
	read(Symp),
	%sendToGrammar(Input,Symp), %input is sentence, Symp is the returned symptom
	%here we'll append the symptom to the current list
	format('~n Curt: I see. Is there anything else?',[]),
	format('~n~n',[]),
	read(Response),
	(   Response == 'no'
	->  initFromList([Symp|Symptoms]),
	    curtTalk(run),
	    curtTalk(quit)
	;   curtStart(true, [Symp|Symptoms])
	).


/*========================================================================
   Control
========================================================================*/



curtTalk(quit).

curtTalk(run):-
	(   numDiseases == 1
	->  curtFinish(true)
	),
	askAbout(X), %diagnosis logic gives X to ask user about, flag tells us if diagnosis is complete
	doYouHave(X), % outputs text,asking user if they suffer from X
	read(Y),
	(   Y == 'yes'
	->  pruneDiseases(X, true)
	;   pruneDiseases(X, false)
	),
   %curtUpdate(Input,CurtsMoves,State), will be replaced with diagnosis logic
   /* will want to update diagnosis info here */
   curtOutput(CurtsMoves), % curt gives a canned response depending on success
   curtTalk(State).

curtFinish(X):-
	format('~n Curt: Sorry friend, it would appear that you are suffering from:',[]),
	write(X),
	format('~n~n',[]),
	format('~n Curt: Please note that I am no substitute for real medical advice! ~n
			Please be sure to see a real doctor to confirm any of my findings!', []).

curtFinish(none):-
	format('~ Curt: Based upon the symptoms you have entered, I cannot make a diagnosis.',[]),
	format('~ Curt: Would you like to input a disease into the database?', []),
	readLine(Input).

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



























































