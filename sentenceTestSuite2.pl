/*************************************************************************

    File: sentenceTestSuite.pl
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

:- module(sentenceTestSuite,[sentence/2]).


/*========================================================================
   Sentences
========================================================================*/

testAll :-
	sentence(S,Num),
	evalSentence(S);
	true.
	
sentence([i, have, a, headache],1).
sentence([i, am, beheaded],1).
sentence([i, feel, nauseous],1).
sentence([my, throat, feels, absolutely, horrible],1). % shouldn't work!

% attempt at encoding the real sentences we'll be using

% first-person sentences
sentence([i, feel, bodily, pain], 1).
sentence([i, feel, bodily, pain], 1).
sentence([i, am, headless], 1).
sentence([i, have, throat_spots], 1). % check on one or two words
sentence([i, feel, tired],1).
sentence([i, have, swollen, tonsils],1). % check - change for adj_noun if needed
sentence([i, have, red, tonsils], 1). % check - change for adj_noun if needed
sentence([i, have, nausea],1).
sentence([i, have, nasal_congestion],1). % check on one or two words
sentence([i, have, neck_pain], 1).
sentence([i, have, back_pain], 1).
sentence([i, have, leg_pain],1).
sentence([i, have, rib_pain], 1).
sentence([i, have, a, sore, throat],1).
sentence([i, have, difficulty_breathing],1). % check
sentence([i, have, a, headache], 1).
sentence([i, have, bodily_sores], 1).
sentence([i, have, bloody, stools], 1).
sentence([i, have, convulsions], 1).
sentence([i, have, red, eyes], 1).
sentence([i, have, a, dry, cough], 1).
sentence([i, have, a, bloody, nose], 1).
sentence([i, have, bleeding, gums], 1). % check
sentence([i, have, back_pain], 1).
sentence([i, am, wheezing], 1).
sentence([i, am, sneezing], 1).
sentence([i, have, nasal_congestion], 1). % change nasal to adj later?
sentence([i, have, urinary_incontinence], 1).
sentence([i, have, an, enlarged_spleen], 1).
sentence([i, have, sensitive, teeth], 1). % change to adj_noun if needed
sentence([i, have, an, earache], 1).
sentence([i, am, salivating_excessively], 1).
sentence([i, am, coughing, phlegm], 1). % change if needed
sentence([i, have, weight_loss], 1). % nifty!
sentence([i, have, a, stiff, neck], 1). % change to adj_noun if needed
sentence([i, have, a, runny_nose], 1). % change adj-noun if needed
sentence([i, have, joint_pain], 1).
sentence([i, have, seizures], 1).
sentence([i, have, nasal_congestion], 1). % change adj_noun if needed

% questions

sentence([do,you,have,loose_watery_stools],1). %check for adj(pl adjs?)
sentence([do,you,have,a,sore,throat],1).
sentence([do,you,have,a,rash],1).
sentence([do,you,have,itchiness],1).
sentence([do,you,have,a,heartburn],1).
sentence([do,you,have,a,fever],1).
sentence([do,you,have,a,stomach_ache],1).
sentence([do,you,have,a,whooping_cough],1).
sentence([do,you,have,a,cough],1).
sentence([do,you,have,paralysis],1).
sentence([does,swallowing,hurt],1).
sentence([do,you,cough,up,blood],1). % right way of encoding coughing [NOUN]?
sentence([do,you,have,abdominal_cramps],1). %check for adj
sentence([do,you,have,bad,breath],1).
sentence([do,you,have,pockmarks],1).
sentence([do,you,have,chills],1).
sentence([do,you,have,sudden_fits_of_coldness],1). %check for adj
sentence([do,you,feel,dizzy],1).
sentence([do,you,have,loss_of_appetite],1).
sentence([do,you,vomit],1).
sentence([do,you,have,night_sweats],1).
sentence([do,you,have,chest_pain],1).
sentence([do,you,have,a,runny_nose],1).
sentence([do,you,have,joint_pain],1).
sentence([do,you,have,a,headache],1).
sentence([do,you,have,seizures],1).
sentence([do,you,have,rib_pain],1).
sentence([are,you,beheaded],1). %check for beheaded encoding
sentence([do,you,have,throat_spots],1).
sentence([do,you,feel,fatigue],1).
sentence([do,you,have,a,headache],1).
sentence([do,you,have,swollen,tonsils],1).
sentence([do,you,feel,nausea],1).
sentence([do,you,have,nasal,congestion],1).
sentence([do,you,have,neck_pain],1).
sentence([do,you,have,back_pain],1).
sentence([do,you,have,leg_pain],1).
sentence([do,you,have,difficulty_breathing],1).
sentence([do,you,have,bodily_sores],1).
sentence([do,you,have,convulsions],1).
sentence([do,you,have,red,eyes],1).
sentence([do,you,have,a,dry,cough],1).
sentence([do,you,have,a,bloody,nose],1).
sentence([do,you,have,neck_pain],1).
sentence([do,you,have,bleeding_gums],1).
sentence([do,you,have,wheezing],1).
sentence([do,you,have,excessive,sneezing],1).
sentence([do,you,have,urinary_incontinence],1).
sentence([do,you,have,an,earache],1). %check - can we do 'an'?
sentence([do,you,have,excessive,salivation],1).
sentence([do,you,cough,up,phelgm],1).
sentence([do,you,have,a,stiff,neck],1).
sentence([do,you,have,a,swollen,neck],1).
sentence([do,you,have,unexpected,weight_loss],1). % check for adj
sentence([do,you,have,muscle_pain],1).


