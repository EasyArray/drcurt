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

lexEntry(det,[syntax:[a],mood:decl,type:indef,vow:no]).

lexEntry(det,[syntax:[an],mood:decl,type:indef,vow:yes]).
lexEntry(det,[syntax:[every],mood:decl,type:uni,vow:_]).


/*========================================================================
   Nouns
========================================================================*/

% Diseases

lexEntry(noun,[symbol:mononucleosis,syntax:[mononucleosis],num:pl,per:thr,vow:no]).
lexEntry(noun,[symbol:pertussis,syntax:[whooping,cough],num:pl,per:thr,vow:no]).
lexEntry(noun,[symbol:swineflu,syntax:[swine,flu],num:pl,per:thr,vow:no]).


lexEntry(noun,[symbol:strep,syntax:[strep,throat],num:pl,per:thr,vow:no]).
lexEntry(noun,[symbol:pulmonarytuberculosis,syntax:[pulmonary,tuberculosis],num:pl,per:thr,vow:no]]).
lexEntry(noun,[symbol:diarrhea,syntax:[diarrhea],num:pl,per:thr,vow:no]).

lexEntry(noun,[symbol:tonsillitis,syntax:[tonsillitis],num:pl,per:thr,vow:no]).

lexEntry(noun,[symbol:chickenpox,syntax:[chicken,pox],num:sg,per:thr,vow:no]).


lexEntry(noun,[symbol:acidreflux,syntax:[acid,reflux],num:pl,per:thr,vow:yes]).

lexEntry(noun,[symbol:commoncold,syntax:[common,cold],num:sg,per:thr,vow:no]).


lexEntry(noun,[symbol:malaria,syntax:[malaria],num:pl,per:thr,vow:no]).

lexEntry(noun,[symbol:fever,syntax:[fever],num:pl,per:thr,vow:no]).


lexEntry(noun,[symbol:head,syntax:[head],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:throat,syntax:[throat],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:body,syntax:[body],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:chest,syntax:[chest],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:ear,syntax:[ear],num:sg,per:thr,vow:yes]).
lexEntry(noun,[symbol:stomach,syntax:[stomach],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:blood,syntax:[blood],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:sweat,syntax:[sweat],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:weight,syntax:[weight],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:fatigue,syntax:[fatigue],num:sg,per:the,vow:no]).

lexEntry(noun,[symbol:cough,syntax:[cough],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:swallowing,syntax:[swallowing],num:sg,per:thr],vow:no).

% Ordered Nouns


lexEntry(noun,[symbol:pain,syntax:[pain],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:spots,syntax:[spots],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:tonsils,syntax:[tonsils],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:nausea,syntax:[nausea],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:congestion,syntax:[congestion],num:pl,per:thr,vow:no]).

lexEntry(noun,[symbol:neck_pain,syntax:[neck,pain],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:back_pain,syntax:[back,pain],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:leg_pain,syntax:[leg,pain],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:rib_pain,syntax:[rib,pain],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:throat,syntax:[throat],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:difficultybreathing,syntax:[difficulty,breathing],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:headache,syntax:[headache],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:sores,syntax:[sores],num:pl,per:the,vow:no]).

lexEntry(noun,[symbol:stools,syntax:[stools],num:pl,per:the,vow:no]).

lexEntry(noun,[symbol:convulsions,syntax:[convulsions],num:pl,per:the,vow:no]).

lexEntry(noun,[symbol:eyes,syntax:[eyes],num:pl,per:the,vow:yes]).

lexEntry(noun,[symbol:cough,syntax:[cough],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:nose,syntax:[nose],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:gums,syntax:[gums],num:pl,per:thr,vow:no]).

lexEntry(noun,[symbol:incontinence,syntax:[incontinence],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:spleen,syntax:[spleen],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:teeth,syntax:[teeth],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:earache,syntax:[earache],num:sg,per:thr,vow:yes]).

lexEntry(noun,[symbol:phlegm,syntax:[phlegm],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:jointpain,syntax:[joint,pain],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:seizures,syntax:[seizures],num:pl,per:thr,vow:no]).

lexEntry(noun,[symbol:rash,syntax:[rash],num:sg,per:the,vow:no]).

lexEntry(noun,[symbol:itchiness,syntax:[itchiness],num:sg,per:thr,vow:yes]).

lexEntry(noun,[symbol:heartburn,syntax:[heartburn],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:fever,syntax:[fever],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:stomachache,syntax:[stomachache],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:paralysis,syntax:[paralysis],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:cramps,syntax:[cramps],num:pl,per:thr,vow:no]).

lexEntry(noun,[symbol:breath,syntax:[breath],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:pockmarks,syntax:[pockmarks],num:pl,per:thr,vow:no]).

lexEntry(noun,[symbol:chills,syntax:[chills],num:pl,per:thr,vow:no]).

lexEntry(noun,[symbol:dizziness,syntax:[dizziness],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:loss_of_appetite,syntax:[loss,of,appetite],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:night_sweats,syntax:[night, sweats],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:chest_pain,syntax:[chest,pain],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:muscle_pain,syntax:[muscle,pain],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:neck,syntax:[neck],num:sg,per:thr,vow:no]).

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

%talk
lexEntry(iv,[symbol:talk,syntax:[talk],inf:inf,num:inf,per:inf]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:talk,syntax:[talks],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:talk,syntax:[talk],inf:fin,num:pl,per:thr]).



/*========================================================================
   Transitive Verbs
========================================================================*/

% feel
lexEntry(tv,[symbol:feel,syntax:[feel],inf:inf,num:inf,per:inf]).
lexEntry(tv,[symbol:feel,syntax:[feel],inf:fin,num:sg,per:one]).
lexEntry(tv,[symbol:feel,syntax:[feel],inf:fin,num:sg,per:two]).
lexEntry(tv,[symbol:feel,syntax:[feels],inf:fin,num:sg,per:thr]).
lexEntry(tv,[symbol:feel,syntax:[feel],inf:fin,num:pl,per:one]).
lexEntry(tv,[symbol:feel,syntax:[feel],inf:fin,num:pl,per:two]).
lexEntry(tv,[symbol:feel,syntax:[feel],inf:fin,num:pl,per:thr]).

%have
lexEntry(iv,[symbol:have,syntax:[have],inf:inf,num:inf,per:inf]).
lexEntry(iv,[symbol:have,syntax:[have],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:have,syntax:[have],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:have,syntax:[has],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:have,syntax:[have],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:have,syntax:[have],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:have,syntax:[have],inf:fin,num:pl,per:thr]).



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

lexEntry(adj,[symbol:abdominal,syntax:[abdominal],vow:yes]).
lexEntry(adj,[symbol:headless,syntax:[headless],vow:no]).
lexEntry(adj,[symbol:beheaded,syntax:[beheaded],vow:no]).
lexEntry(adj,[symbol:sore,syntax:[sore],vow:no]).
lexEntry(adj,[symbol:common,syntax:[common],vow:no]).
lexEntry(adj,[symbol:yellow,syntax:[yellow],vow:no]).
lexEntry(adj,[symbol:spots,syntax:[spots],vow:no]).
lexEntry(adj,[symbol:swollen,syntax:[swollen],vow:no]).
lexEntry(adj,[symbol:nauseated,syntax:[nauseated],vow:no]).
lexEntry(adj,[symbol:congested,syntax:[congested],vow:no]).
lexEntry(adj,[symbol:painful,syntax:[painful],vow:no]).
lexEntry(adj,[symbol:bloody,syntax:[bloody],vow:no]).
lexEntry(adj,[symbol:loosewatery,syntax:[loose,watery],vow:no]).

% I'm not sure if we're handling adj-adj sequences, so I put these as 1 adjective


lexEntry(adj,[symbol:dry,syntax:[dry],vow:no]).
lexEntry(adj,[symbol:bloody,syntax:[bloody],vow:no]).
lexEntry(adj,[symbol:nasal,syntax:[nasal],vow:no]).
lexEntry(adj,[symbol:urinary,syntax:[urinary],vow:no]).
lexEntry(adj,[symbol:enlarged,syntax:[enlarged],vow:no]).
lexEntry(adj,[symbol:sensitive,syntax:[sensitive],vow:no]).
lexEntry(adj,[symbol:stiff,syntax:[stiff],vow:no]).
lexEntry(adj,[symbol:runny,syntax:[runny],vow:no]).
lexEntry(adj,[symbol:loose,syntax:[loose,vow:no]]).
lexEntry(adj,[symbol:watery,syntax:[watery],vow:no]).

lexEntry(adj,[symbol:itchy,syntax:[itchy],vow:yes]).
lexEntry(adj,[symbol:abdominal,syntax:[abdominal],vow:yes]).
lexEntry(adj,[symbol:unpleasant,syntax:[unpleasant],vow:yes]).
lexEntry(adj,[symbol:bad,syntax:[bad],vow:no]).
lexEntry(adj,[symbol:sudden,syntax:[sudden],vow:no]).
lexEntry(adj,[symbol:chilly,syntax:[chilly],vow:no]).
lexEntry(adj,[symbol:sweaty,syntax:[sweaty],vow:no]).
lexEntry(adj,[symbol:clammy,syntax:[clammy],vow:no]).
lexEntry(adj,[symbol:fatigued,syntax:[fatigued],vow:no]).
lexEntry(adj,[symbol:excessive,syntax:[excessive],vow:no]).

lexEntry(adj,[symbol:bodily,syntax:[bodily],vow:no]).
lexEntry(adj,[symbol:hurting,syntax:[hurting],vow:no]).
lexEntry(adj,[symbol:bleeding,syntax:[bleeding],vow:no]).

lexEntry(adj,[symbol:wheezing,syntax:[wheezing],vow:no]).

lexEntry(adj,[symbol:sneezingexcessively,syntax:[sneezing,excessively],vow:no]).
lexEntry(adj,[symbol:losing_weight_unexpectedly,syntax:[losing,weight, unexpectedly],vow:no]).

lexEntry(adj,[symbol:pain_swallowing,syntax:[pain_swallowing, pain],vow:no]).

lexEntry(adj,[symbol:salivatingexcessively,syntax:[salivating,excessively],vow:no]).

lexEntry(adj,[symbol:coughingupblood,syntax:[coughing, up, blood],vow:no]).
lexEntry(adj,[symbol:coughingupphlegm,syntax:[coughing, up, phlegm],vow:no]).

lexEntry(adj,[symbol:vomiting,syntax:[vomiting],vow:no]).



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
