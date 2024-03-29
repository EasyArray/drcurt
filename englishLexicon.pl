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

lexEntry(noun,[symbol:commoncold,syntax:[common,cold],num:sg,per:thr,vow:no]).

lexEntry(noun,[symbol:head,syntax:[head],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:throat,syntax:[throat],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:body,syntax:[body],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:chest,syntax:[chest],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:ear,syntax:[ear],num:sg,per:thr,vow:yes]).
lexEntry(noun,[symbol:stomach,syntax:[stomach],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:blood,syntax:[blood],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:sweat,syntax:[sweat],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:cough,syntax:[cough],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:nose,syntax:[nose],num:sg,per:thr,vow:no]).


lexEntry(noun,[symbol:nausea,syntax:[nausea],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:throat,syntax:[throat],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:headache,syntax:[headache],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:cough,syntax:[cough],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:runny_nose,syntax:[runny,nose],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:spleen,syntax:[spleen],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:neck,syntax:[neck],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:earache,syntax:[earache],num:sg,per:thr,vow:yes]).
lexEntry(noun,[symbol:phlegm,syntax:[phlegm],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:rash,syntax:[rash],num:sg,per:the,vow:no]).
lexEntry(noun,[symbol:fever,syntax:[fever],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:stomachache,syntax:[stomachache],num:sg,per:thr,vow:no]).
lexEntry(noun,[symbol:loss_of_appetite,syntax:[loss,of,appetite],num:sg,per:thr,vow:no]).



/*========================================================================
   Personal Pronouns
========================================================================*/

% nouns encoded as pn in order to work backwards
% adj-noun combinations encoded as nouns in order to work as setup is now

% nouns exist in noun form and adj form
% step back a few steps (just transl, no Dr. Curt) and all grammatical forms work


lexEntry(pn,[symbol:mononucleosis,syntax:[mono],num:sg,per:thr]).
lexEntry(pn,[symbol:pain,syntax:[pain],num:sg,per:thr]).
lexEntry(pn,[symbol:bodily_pain,syntax:[bodily,pain],num:sg,per:thr]).
lexEntry(pn,[symbol:pain,syntax:[pain],num:sg,per:thr]).

lexEntry(pn,[symbol:pertussis,syntax:[whooping,cough],num:pl,per:thr]).
lexEntry(pn,[symbol:swineflu,syntax:[swine,flu],num:pl,per:thr]).
lexEntry(pn,[symbol:strep,syntax:[strep,throat],num:pl,per:thr]).
lexEntry(pn,[symbol:pulmonarytuberculosis,syntax:[pulmonary,tuberculosis],num:pl,per:thr]).
lexEntry(pn,[symbol:diarrhea,syntax:[diarrhea],num:pl,per:thr]).
lexEntry(pn,[symbol:tonsilitis,syntax:[tonsilitis],num:pl,per:thr]).
lexEntry(pn,[symbol:chickenpox,syntax:[chicken,pox],num:pl,per:thr]).
lexEntry(pn,[symbol:acidreflux,syntax:[acid,reflux,disease],num:pl,per:thr]).
lexEntry(pn,[symbol:malaria,syntax:[malaria],num:pl,per:thr]).
lexEntry(pn,[symbol:yellowfever,syntax:[yellow,fever],num:pl,per:thr]).
lexEntry(pn,[symbol:red_eyes,syntax:[red,eyes],num:pl,per:the]).
lexEntry(pn,[symbol:weight,syntax:[weight],num:pl,per:thr]).
lexEntry(pn,[symbol:fatigue,syntax:[fatigue],num:pl,per:thr]).
lexEntry(pn,[symbol:spots,syntax:[spots],num:sg,per:thr]).
lexEntry(pn,[symbol:tonsils,syntax:[tonsils],num:pl,per:thr]).

lexEntry(pn,[symbol:red_tonsils,syntax:[red,tonsils],num:pl,per:thr]).
lexEntry(pn,[symbol:swollen_tonsils,syntax:[swollen,tonsils],num:pl,per:thr]).
lexEntry(pn,[symbol:congestion,syntax:[congestion],num:pl,per:thr]).
lexEntry(pn,[symbol:nasal_congestion,syntax:[nasal,congestion],num:pl,per:thr]).
lexEntry(pn,[symbol:neck_pain,syntax:[neck,pain],num:pl,per:thr]).
lexEntry(pn,[symbol:back_pain,syntax:[back,pain],num:pl,per:thr]).
lexEntry(pn,[symbol:joint_pain,syntax:[joint,pain],num:pl,per:thr]).
lexEntry(pn,[symbol:leg_pain,syntax:[leg,pain],num:pl,per:thr]).
lexEntry(pn,[symbol:rib_pain,syntax:[rib,pain],num:pl,per:thr]).
lexEntry(pn,[symbol:chest_pain,syntax:[chest,pain],num:pl,per:thr]).
lexEntry(pn,[symbol:muscle_pain,syntax:[muscle,pain],num:pl,per:thr]).
lexEntry(pn,[symbol:bodily_pain,syntax:[bodily,pain],num:pl,per:thr]).
lexEntry(pn,[symbol:difficultybreathing,syntax:[difficulty,breathing],num:pl,per:thr]).
lexEntry(pn,[symbol:throat_sores,syntax:[throat,sores],num:pl,per:thr]).
lexEntry(pn,[symbol:bodily_sores,syntax:[bodily,sores],num:pl,per:thr]).
lexEntry(pn,[symbol:bloody_stools,syntax:[bloody,stools],num:pl,per:thr]).

lexEntry(pn,[symbol:sores,syntax:[sores],num:pl,per:thr]).
lexEntry(pn,[symbol:stools,syntax:[stools],num:pl,per:thr]).
lexEntry(pn,[symbol:gums,syntax:[gums],num:pl,per:thr]).
lexEntry(pn,[symbol:teeth,syntax:[teeth],num:pl,per:thr]).

lexEntry(pn,[symbol:loose_watery_stools,syntax:[loose,watery,stools],num:pl,per:thr]).
lexEntry(pn,[symbol:convulsions,syntax:[convulsions],num:pl,per:thr]).
lexEntry(pn,[symbol:throat_spots,syntax:[throat,spots],num:pl,per:thr]).
lexEntry(pn,[symbol:dizzy,syntax:[dizzy],num:pl,per:thr]).
lexEntry(pn,[symbol:nauseated,syntax:[nauseated],num:pl,per:thr]).
lexEntry(pn,[symbol:incontinence,syntax:[urinary,incontinence],num:pl,per:thr]). 
lexEntry(pn,[symbol:sensitive_teeth,syntax:[sensitive,teeth],num:pl,per:thr]).
lexEntry(pn,[symbol:seizures,syntax:[seizures],num:pl,per:thr]).
lexEntry(pn,[symbol:itchiness,syntax:[itchiness],num:pl,per:thr]).
lexEntry(pn,[symbol:heartburn,syntax:[heartburn],num:pl,per:thr]).
lexEntry(pn,[symbol:cramps,syntax:[cramps],num:pl,per:thr]).
lexEntry(pn,[symbol:abdominal_cramps,syntax:[abdominal,cramps],num:pl,per:thr]).
lexEntry(pn,[symbol:red_eyes,syntax:[red,eyes],num:pl,per:thr]).
lexEntry(pn,[symbol:sore_throat,syntax:[sore,throat],num:pl,per:thr]).
lexEntry(pn,[symbol:dry_cough,syntax:[dry,cough],num:pl,per:thr]).
lexEntry(pn,[symbol:bleeding_gums,syntax:[bleeding,gums],num:pl,per:thr]).
lexEntry(pn,[symbol:sensitive_teeth,syntax:[sensitive,teeth],num:pl,per:thr]).
lexEntry(pn,[symbol:excessive_salivating,syntax:[excessive,salivation],num:pl,per:thr]).
lexEntry(pn,[symbol:painful_swallowing,syntax:[painful,swallowing],num:pl,per:thr]).
lexEntry(pn,[symbol:no_head,syntax:[no,head],num:pl,per:thr]).

lexEntry(pn,[symbol:breath,syntax:[breath],num:pl,per:thr]).
lexEntry(pn,[symbol:bad_breath,syntax:[bad,breath],num:pl,per:thr]).

lexEntry(pn,[symbol:paralysis,syntax:[paralysis],num:pl,per:thr]).
lexEntry(pn,[symbol:pockmarks,syntax:[pockmarks],num:pl,per:thr]).
lexEntry(pn,[symbol:chills,syntax:[chills],num:pl,per:thr]).
lexEntry(pn,[symbol:dizziness,syntax:[dizziness],num:pl,per:thr]).
lexEntry(pn,[symbol:night_sweats,syntax:[night,sweats],num:pl,per:thr]).
lexEntry(pn,[symbol:tired,syntax:[tired],num:pl,per:thr]).

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

% wheeze
lexEntry(iv,[symbol:wheeze,syntax:[wheeze],inf:inf,num:inf,per:inf]).
lexEntry(iv,[symbol:wheeze,syntax:[wheeze],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:wheeze,syntax:[wheeze],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:wheezes,syntax:[wheezes],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:wheeze,syntax:[wheeze],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:wheeze,syntax:[wheeze],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:wheeze,syntax:[wheeze],inf:fin,num:pl,per:thr]).

% vomit
lexEntry(iv,[symbol:vomit,syntax:[vomit],inf:inf,num:inf,per:inf]).
lexEntry(iv,[symbol:vomit,syntax:[vomit],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:vomit,syntax:[vomit],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:vomits,syntax:[vomits],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:vomit,syntax:[vomit],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:vomit,syntax:[vomit],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:vomit,syntax:[vomit],inf:fin,num:pl,per:thr]).

%sweat excessively
lexEntry(iv,[symbol:sweat_excessively,syntax:[sweat, excessively],inf:inf,num:inf,per:inf]).
lexEntry(iv,[symbol:sweat_excessively,syntax:[sweat, excessively],inf:fin,num:sg,per:one]).
lexEntry(iv,[symbol:sweat_excessively,syntax:[sweat, excessively],inf:fin,num:sg,per:two]).
lexEntry(iv,[symbol:sweat_excessively,syntax:[sweats, excessively],inf:fin,num:sg,per:thr]).
lexEntry(iv,[symbol:sweat_excessively,syntax:[sweat, excessively],inf:fin,num:pl,per:one]).
lexEntry(iv,[symbol:sweat_excessively,syntax:[sweat, excessively],inf:fin,num:pl,per:two]).
lexEntry(iv,[symbol:sweat_excessively,syntax:[sweat, excessively],inf:fin,num:pl,per:thr]).



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
lexEntry(tv,[symbol:have,syntax:[have],inf:inf,num:inf,per:inf]).
lexEntry(tv,[symbol:have,syntax:[have],inf:fin,num:sg,per:one]).
lexEntry(tv,[symbol:have,syntax:[have],inf:fin,num:sg,per:two]).
lexEntry(tv,[symbol:have,syntax:[has],inf:fin,num:sg,per:thr]).
lexEntry(tv,[symbol:have,syntax:[have],inf:fin,num:pl,per:one]).
lexEntry(tv,[symbol:have,syntax:[have],inf:fin,num:pl,per:two]).
lexEntry(tv,[symbol:have,syntax:[have],inf:fin,num:pl,per:thr]).



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
lexEntry(adj,[symbol:red,syntax:[red],vow:no]).
lexEntry(adj,[symbol:spots,syntax:[spots],vow:no]).
lexEntry(adj,[symbol:swollen,syntax:[swollen],vow:no]).
lexEntry(adj,[symbol:nauseated,syntax:[nauseated],vow:no]).
lexEntry(adj,[symbol:congested,syntax:[congested],vow:no]).
lexEntry(adj,[symbol:painful,syntax:[painful],vow:no]).
lexEntry(adj,[symbol:bloody,syntax:[bloody],vow:no]).
lexEntry(adj,[symbol:loosewatery,syntax:[loose,watery],vow:no]).

lexEntry(adj,[symbol:coughing,syntax:[coughing],vow:no]).
lexEntry(adj,[symbol:swallowing,syntax:[swallowing],vow:no]).
lexEntry(adj,[symbol:vomiting,syntax:[vomiting],vow:no]).
lexEntry(adj,[symbol:sweating_excessively,syntax:[sweating,excessively],vow:no]).
lexEntry(adj,[symbol:wheezing,syntax:[wheezing],vow:no]).



lexEntry(adj,[symbol:dry,syntax:[dry],vow:no]).
lexEntry(adj,[symbol:bloody,syntax:[bloody],vow:no]).
lexEntry(adj,[symbol:nasal,syntax:[nasal],vow:no]).
lexEntry(adj,[symbol:urinary,syntax:[urinary],vow:no]).
lexEntry(adj,[symbol:enlarged,syntax:[enlarged],vow:yes]).
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

%lexEntry(adj,[symbol:pain_swallowing,syntax:[pain, swallowing],vow:no]).

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
