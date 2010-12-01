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
   format('~n Curt: How are you feeling today?',[]),
   format('~n~n',[]),
   curtTalk(run).

/*========================================================================
   Control
========================================================================*/

curtTalk(quit).

curtTalk(run):-
   readLine(Input),
   /* does readLine need to translate? */
   curtUpdate(Input,CurtsMoves,State),
   /* will want to update diagnosis info here */
   curtOutput(CurtsMoves),
   curtTalk(State).

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

