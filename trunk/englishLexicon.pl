/*************************************************************************

    File: englishLexicon.pl
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

/*========================================================================
   Determiners
========================================================================*/

lexEntry(det,[syntax:[every],mood:decl,type:uni]).
lexEntry(det,[syntax:[a],mood:decl,type:indef]).
lexEntry(det,[syntax:[which],mood:int,type:wh]).

/*
lexEntry(det,[syntax:[the],mood:decl,type:def]).
lexEntry(det,[syntax:[my],mood:decl,type:def]).
lexEntry(det,[syntax:[your],mood:decl,type:def]).
lexEntry(det,[syntax:[her],mood:decl,type:def]).
lexEntry(det,[syntax:[his],mood:decl,type:def]).
lexEntry(det,[syntax:[our],mood:decl,type:def]).
lexEntry(det,[syntax:[their],mood:decl,type:def]).
*/


/*========================================================================
   Nouns
========================================================================*/


/*
lexEntry(noun,[symbol:book,syntax:[book],num:sg,per:thr]).
lexEntry(noun,[symbol:joke,syntax:[joke],num:sg,per:thr]).
lexEntry(noun,[symbol:man,syntax:[man],num:sg,per:thr]).
lexEntry(noun,[symbol:radio,syntax:[radio],num:sg,per:thr]).
lexEntry(noun,[symbol:restaurant,syntax:[restaurant],num:sg,per:thr]).
lexEntry(noun,[symbol:woman,syntax:[woman],num:sg,per:thr]).
lexEntry(noun,[symbol:cat,syntax:[cat],num:sg,per:thr]).
lexEntry(noun,[symbol:bread,syntax:[bread],num:sg,per:thr]).
lexEntry(noun,[symbol:cup,syntax:[cup],num:sg,per:thr]).
lexEntry(noun,[symbol:picture,syntax:[picture],num:sg,per:thr]).
lexEntry(noun,[symbol:magazine,syntax:[magazine],num:sg,per:thr]).
lexEntry(noun,[symbol:lamp,syntax:[lamp],num:sg,per:thr]).
lexEntry(noun,[symbol:person,syntax:[person],num:sg,per:thr]).
*/

lexEntry(noun,[symbol:head,syntax:[head],num:sg,per:thr]).
lexEntry(noun,[symbol:throat,syntax:[throat],num:sg,per:thr]).
lexEntry(noun,[symbol:body,syntax:[body],num:sg,per:thr]).
lexEntry(noun,[symbol:chest,syntax:[chest],num:sg,per:thr]).
lexEntry(noun,[symbol:back,syntax:[back],num:sg,per:thr]).
lexEntry(noun,[symbol:ear,syntax:[ear],num:sg,per:thr]).
lexEntry(noun,[symbol:nose,syntax:[nose],num:sg,per:thr]).
lexEntry(noun,[symbol:stomach,syntax:[stomach],num:sg,per:thr]).
lexEntry(noun,[symbol:rib,syntax:[rib],num:sg,per:thr]).

lexEntry(noun,[symbol:chills,syntax:[chills],num:pl,per:thr]).
lexEntry(noun,[symbol:pain,syntax:[pain],num:sg,per:thr]).
lexEntry(noun,[symbol:fever,syntax:[fever],num:sg,per:thr]).
lexEntry(noun,[symbol:cough,syntax:[cough],num:sg,per:thr]).
lexEntry(noun,[symbol:headache,syntax:[headache],num:sg,per:thr]).
lexEntry(noun,[symbol:phlegm,syntax:[phlegm],num:sg,per:thr]).
lexEntry(noun,[symbol:runnynose,syntax:[runny,nose],num:sg,per:thr]).
lexEntry(noun,[symbol:cough,syntax:[cough],num:sg,per:thr]).

lexEntry(noun,[symbol:mono,syntax:[mononucleosis],num:sg,per:thr]).
lexEntry(noun,[symbol:pertussis,syntax:[whooping,cough],num:sg,per:thr]).
lexEntry(noun,[symbol:swineflu,syntax:[swine,flu],num:sg,per:thr]).
lexEntry(noun,[symbol:decapitation,syntax:[decapitation],num:sg,per:thr]).
lexEntry(noun,[symbol:strep,syntax:[strep,throat],num:sg,per:thr]).
lexEntry(noun,[symbol:pulmonarytb,syntax:[pulmonary,tuberculosis],num:sg,per:thr]).




/*========================================================================
   Personal Pronouns
========================================================================*/

lexEntry(pn,[symbol:i,syntax:[i],num:sg,per:one]).
lexEntry(pn,[symbol:you,syntax:[you],num:sg,per:two]).
lexEntry(pn,[symbol:he,syntax:[he],num:sg,per:thr]).
lexEntry(pn,[symbol:she,syntax:[she],num:sg,per:thr]).
lexEntry(pn,[symbol:she,syntax:[it],num:sg,per:thr]).
lexEntry(pn,[symbol:we,syntax:[we],num:pl,per:one]).
lexEntry(pn,[symbol:you_pl,syntax:[you],num:pl,per:two]).
lexEntry(pn,[symbol:they,syntax:[they],num:pl,per:thr]).

/*========================================================================
   Quantified Noun Phrases
========================================================================*/

lexEntry(qnp,[symbol:person,syntax:[who],mood:int,type:wh]).
lexEntry(qnp,[symbol:thing,syntax:[what],mood:int,type:wh]).



/*========================================================================
   Intransitive Verbs
========================================================================*/

/*
%one-word sentences
lexEntry(iv_wo,[symbol:yes,syntax:[yes],inf:fin,num:sg,per:pos]).
lexEntry(iv_wo,[symbol:no,syntax:[no],inf:fin,num:sg,per:neg]).
lexEntry(iv_wo,[symbol:ok,syntax:[ok],inf:fin,num:sg,per:neu]).
*/

% dance
lexEntry(iv,[symbol:dance,syntax:[dance],inf:inf,num:inf,per:inf]).
lexEntry(iv,[symbol:dance,syntax:[dance],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:dance,syntax:[dance],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:dance,syntax:[dances],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:dance,syntax:[dance],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:dance,syntax:[dance],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:dance,syntax:[dance],inf:fin,num:pl,per:thr]).

% walk
lexEntry(iv,[symbol:walk,syntax:[walk],inf:inf,num:inf,per:inf]).
lexEntry(iv,[symbol:walk,syntax:[walk],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:walk,syntax:[walk],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:walk,syntax:[walks],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:walk,syntax:[walk],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:walk,syntax:[walk],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:walk,syntax:[walk],inf:fin,num:pl,per:thr]).

%talk
lexEntry(iv,[symbol:talk,syntax:[talk],inf:inf,num:inf,per:inf]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:talk,syntax:[talks],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:pl,per:thr]).

%hurt
lexEntry(iv,[symbol:hurt,syntax:[hurt],inf:inf,num:inf,per:inf]).
lexEntry(iv,[symbol:hurt,syntax:[hurt],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:hurt,syntax:[hurt],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:hurt,syntax:[hurts],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:hurt,syntax:[hurt],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:hurt,syntax:[hurt],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:hurt,syntax:[hurt],inf:fin,num:pl,per:thr]).



/*========================================================================
   Transitive Verbs
========================================================================*/

% eat
lexEntry(tv,[symbol:eat,syntax:[eat],inf:inf,num:inf,per:inf]).
lexEntry(tv,[symbol:eat,syntax:[eat],inf:fin,num:sg,per:one]).
lexEntry(tv,[symbol:eat,syntax:[eat],inf:fin,num:sg,per:two]).
lexEntry(tv,[symbol:eat,syntax:[eats],inf:fin,num:sg,per:thr]).
lexEntry(tv,[symbol:eat,syntax:[eat],inf:fin,num:pl,per:one]).
lexEntry(tv,[symbol:eat,syntax:[eat],inf:fin,num:pl,per:two]).
lexEntry(tv,[symbol:eat,syntax:[eat],inf:fin,num:pl,per:thr]).

% love
lexEntry(tv,[symbol:love,syntax:[love],inf:inf,num:inf,per:inf]).
lexEntry(tv,[symbol:love,syntax:[love],inf:fin,num:sg,per:one]).
lexEntry(tv,[symbol:love,syntax:[love],inf:fin,num:sg,per:two]).
lexEntry(tv,[symbol:love,syntax:[loves],inf:fin,num:sg,per:thr]).
lexEntry(tv,[symbol:love,syntax:[love],inf:fin,num:pl,per:one]).
lexEntry(tv,[symbol:love,syntax:[love],inf:fin,num:pl,per:two]).
lexEntry(tv,[symbol:love,syntax:[love],inf:fin,num:pl,per:thr]).

% know
lexEntry(tv,[symbol:know,syntax:[know],inf:inf,num:inf,per:inf]).
lexEntry(tv,[symbol:know,syntax:[know],inf:fin,num:sg,per:one]).
lexEntry(tv,[symbol:know,syntax:[know],inf:fin,num:sg,per:two]).
lexEntry(tv,[symbol:know,syntax:[knows],inf:fin,num:sg,per:thr]).
lexEntry(tv,[symbol:know,syntax:[know],inf:fin,num:pl,per:one]).
lexEntry(tv,[symbol:know,syntax:[know],inf:fin,num:pl,per:two]).
lexEntry(tv,[symbol:know,syntax:[know],inf:fin,num:pl,per:thr]).

% read
lexEntry(tv,[symbol:read,syntax:[read],inf:inf,num:inf,per:inf]).
lexEntry(tv,[symbol:read,syntax:[read],inf:fin,num:sg,per:one]).
lexEntry(tv,[symbol:read,syntax:[read],inf:fin,num:sg,per:two]).
lexEntry(tv,[symbol:read,syntax:[reads],inf:fin,num:sg,per:thr]).
lexEntry(tv,[symbol:read,syntax:[read],inf:fin,num:pl,per:one]).
lexEntry(tv,[symbol:read,syntax:[read],inf:fin,num:pl,per:two]).
lexEntry(tv,[symbol:read,syntax:[read],inf:fin,num:pl,per:thr]).

/*
%have
lexEntry(iv,[symbol:have,syntax:[have],inf:inf,num:inf,per:inf]).
lexEntry(iv,[symbol:have,syntax:[have],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:have,syntax:[have],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:have,syntax:[has],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:have,syntax:[have],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:have,syntax:[have],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:have,syntax:[have],inf:fin,num:pl,per:thr]).
*/


/*========================================================================
   Copula
========================================================================*/


lexEntry(cop,[pol:pos,syntax:[am],inf:fin,num:sg,per:one]).
lexEntry(cop,[pol:neg,syntax:[am,not],inf:fin,num:sg,per:one]).
lexEntry(cop,[pol:pos,syntax:[is],inf:fin,num:sg,per:thr]).
lexEntry(cop,[pol:neg,syntax:[is,not],inf:fin,num:sg,per:thr]).
lexEntry(cop,[pol:pos,syntax:[are],inf:fin,num:sg,per:two]).
lexEntry(cop,[pol:pos,syntax:[are],inf:fin,num:pl,per:two]).
lexEntry(cop,[pol:pos,syntax:[are],inf:fin,num:pl,per:one]).
lexEntry(cop,[pol:pos,syntax:[are],inf:fin,num:pl,per:thr]).
lexEntry(cop,[pol:neg,syntax:[are,not],inf:fin,num:sg,per:two]).
lexEntry(cop,[pol:neg,syntax:[are,not],inf:fin,num:pl,per:two]).
lexEntry(cop,[pol:neg,syntax:[are,not],inf:fin,num:pl,per:one]).
lexEntry(cop,[pol:neg,syntax:[are,not],inf:fin,num:pl,per:thr]).



/*========================================================================
   Prepositions
========================================================================*/

lexEntry(prep,[symbol:about,syntax:[about]]).
lexEntry(prep,[symbol:in,syntax:[in]]).
lexEntry(prep,[symbol:of,syntax:[of]]).
lexEntry(prep,[symbol:with,syntax:[with]]).


/*========================================================================
   Adjectives
========================================================================*/

lexEntry(adj,[symbol:big,syntax:[big]]).
lexEntry(adj,[symbol:blue,syntax:[blue]]).
lexEntry(adj,[symbol:female,syntax:[female]]).
lexEntry(adj,[symbol:happy,syntax:[happy]]).
lexEntry(adj,[symbol:kahuna,syntax:[kahuna]]).
lexEntry(adj,[symbol:male,syntax:[male]]).
lexEntry(adj,[symbol:married,syntax:[married]]).
lexEntry(adj,[symbol:red,syntax:[red]]).
lexEntry(adj,[symbol:sad,syntax:[sad]]).
lexEntry(adj,[symbol:small,syntax:[small]]).
lexEntry(adj,[symbol:tall,syntax:[tall]]).

lexEntry(adj,[symbol:tired,syntax:[tired]]).

lexEntry(adj,[symbol:headless,syntax:[headless]]).
lexEntry(adj,[symbol:beheaded,syntax:[beheaded]]).
lexEntry(adj,[symbol:sore,syntax:[sore]]).
lexEntry(adj,[symbol:common,syntax:[common]]).
lexEntry(adj,[symbol:yellow,syntax:[yellow]]).
lexEntry(adj,[symbol:spots,syntax:[spots]]).
lexEntry(adj,[symbol:swollen,syntax:[swollen]]).
lexEntry(adj,[symbol:nauseated,syntax:[nauseated]]).
lexEntry(adj,[symbol:congested,syntax:[congested]]).
lexEntry(adj,[symbol:painful,syntax:[painful]]).
lexEntry(adj,[symbol:bloody,syntax:[bloody]]).

lexEntry(adj,[symbol:dry,syntax:[dry]]).
lexEntry(adj,[symbol:bloody,syntax:[bloody]]).
lexEntry(adj,[symbol:bleeding,syntax:[bleeding]]).
lexEntry(adj,[symbol:nasal,syntax:[nasal]]).
lexEntry(adj,[symbol:urinary,syntax:[urinary]]).
lexEntry(adj,[symbol:enlarged,syntax:[enlarged]]).
lexEntry(adj,[symbol:sensitive,syntax:[sensitive]]).
lexEntry(adj,[symbol:stiff,syntax:[stiff]]).
lexEntry(adj,[symbol:runny,syntax:[runny]]).
lexEntry(adj,[symbol:loose,syntax:[loose]]).
lexEntry(adj,[symbol:watery,syntax:[watery]]).

lexEntry(adj,[symbol:itchy,syntax:[itchy]]).
lexEntry(adj,[symbol:abdominal,syntax:[abdominal]]).
lexEntry(adj,[symbol:unpleasant,syntax:[unpleasant]]).
lexEntry(adj,[symbol:bad,syntax:[bad]]).
lexEntry(adj,[symbol:sudden,syntax:[sudden]]).
lexEntry(adj,[symbol:chilly,syntax:[chilly]]).
lexEntry(adj,[symbol:lost,syntax:[lost]]).
lexEntry(adj,[symbol:sweaty,syntax:[sweaty]]).
lexEntry(adj,[symbol:clammy,syntax:[clammy]]).
lexEntry(adj,[symbol:fatigued,syntax:[fatigued]]).
lexEntry(adj,[symbol:excessive,syntax:[excessive]]).



lexEntry(adj,[symbol:bodily,syntax:[bodily]]).
lexEntry(adj,[symbol:hurting,syntax:[hurting]]).
lexEntry(adj,[symbol:bleeding,syntax:[bleeding]]).
lexEntry(adj,[symbol:nasal,syntax:[nasal]]).
lexEntry(adj,[symbol:urinary,syntax:[urinary]]).
lexEntry(adj,[symbol:enlarged,syntax:[enlarged]]).
lexEntry(adj,[symbol:sensitive,syntax:[sensitive]]).
lexEntry(adj,[symbol:stiff,syntax:[stiff]]).
lexEntry(adj,[symbol:runny,syntax:[runny]]).
lexEntry(adj,[symbol:loose,syntax:[loose]]).
lexEntry(adj,[symbol:watery,syntax:[watery]]).



/*========================================================================
   Relative Pronouns
========================================================================*/

lexEntry(relpro,[syntax:[who]]).
lexEntry(relpro,[syntax:[that]]).


/*========================================================================
   Coordinations
========================================================================*/

lexEntry(coord,[syntax:[and],type:conj]).
lexEntry(coord,[syntax:[or],type:disj]).


/*========================================================================
   Auxiliary Verbs
========================================================================*/
lexEntry(av,[syntax:[do],inf:fin,pol:pos,num:sg,per:one]).
lexEntry(av,[syntax:[do,not],inf:fin,pol:neg,num:sg,per:one]).

lexEntry(av,[syntax:[do],inf:fin,pol:pos,num:sg,per:two]).
lexEntry(av,[syntax:[do,not],inf:fin,pol:neg,num:sg,per:two]).

lexEntry(av,[syntax:[does],inf:fin,pol:pos,num:sg,per:thr]).
lexEntry(av,[syntax:[does,not],inf:fin,pol:neg,num:sg,per:thr]).

lexEntry(av,[syntax:[do],inf:fin,pol:pos,num:pl,per:one]).
lexEntry(av,[syntax:[do,not],inf:fin,pol:neg,num:pl,per:one]).

lexEntry(av,[syntax:[do],inf:fin,pol:pos,num:pl,per:two]).
lexEntry(av,[syntax:[do,not],inf:fin,pol:neg,num:pl,per:two]).

lexEntry(av,[syntax:[do],inf:fin,pol:pos,num:pl,per:thr]).
lexEntry(av,[syntax:[do,not],inf:fin,pol:neg,num:pl,per:thr]).

/*
lexEntry(av,[syntax:[did],inf:fin,pol:pos,num:sg,per:two]).
lexEntry(av,[syntax:[did],inf:fin,pol:pos,num:pl,per:two]).
lexEntry(av,[syntax:[did],inf:fin,pol:pos,num:pl,per:one]).
lexEntry(av,[syntax:[did],inf:fin,pol:pos,num:pl,per:thr]).
lexEntry(av,[syntax:[did,not],inf:fin,pol:neg,num:sg,per:two]).
lexEntry(av,[syntax:[did,not],inf:fin,pol:neg,num:pl,per:two]).
lexEntry(av,[syntax:[did,not],inf:fin,pol:neg,num:pl,per:one]).
lexEntry(av,[syntax:[did,not],inf:fin,pol:neg,num:pl,per:thr]).

*/

