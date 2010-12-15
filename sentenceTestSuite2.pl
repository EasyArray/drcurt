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

:- module(sentenceTestSuite2,[sentence/2]).



/*========================================================================
   Sentences
========================================================================*/

testAll :-
	sentence(S,_),
	evalSentence(S);
	true.
	
	% declarative statements for 

	sentence([you, have, mono], 1).
	sentence([you, have, whooping, cough], 1).
	sentence([you, have, swine, flu], 1).
	sentence([you, are, headless], 1).
	sentence([you, have, strep, throat], 1).
	sentence([you, have, pulmonary, tuberculosis], 1).
	sentence([you, have, diarrhea], 1).
	sentence([you, have, tonsilitis], 1).
	sentence([you, have, chicken, pox], 1).
	sentence([you, have, acid, reflux, disease], 1).
	sentence([you, have, a, common, cold], 1).
	sentence([you, have, malaria], 1).
	sentence([you, have, yellow, fever], 1).


	% symptom declarations by the user

	% have 
	sentence([i, have, throat, spots], 1).
	sentence([i, have, swollen, tonsils], 1).
	sentence([i, have, red, tonsils], 1).
	sentence([i, have, nasal, congestion], 1).
	sentence([i, have, neck, pain], 1).
	sentence([i, have, back, pain], 1).
	sentence([i, have, leg, pain], 1).
	sentence([i, have, rib, pain], 1).
	sentence([i, have, a, sore, throat], 1).
	sentence([i, have, difficulty, breathing], 1).
	sentence([i, have, a, headache], 1).
	sentence([i, have, bodily, sores], 1).
	sentence([i, have, bloody, stools], 1).
	sentence([i, have, convulsions], 1).
	sentence([i, have, red, eyes], 1).
	sentence([i, have, a, dry, cough], 1).
	sentence([i, have, a, bloody, nose], 1).
	sentence([i, have, bleeding, gums], 1).
	sentence([i, have, urinary, incontinence], 1).
	sentence([i, have, an, enlarged, spleen], 1).
	sentence([i, have, sensitive, teeth], 1).
	sentence([i, have, an, earache], 1).
	sentence([i, have, a, stiff, neck], 1).
	sentence([i, have, a, runny, nose], 1).
	sentence([i, have, joint, pain], 1).
	sentence([i have, seizures], 1).
	sentence([i, have, loose, watery, stools], 1).
	sentence([i, have, a, rash], 1).
	sentence([i, have, itchiness], 1).
	sentence([i, have, heartburn], 1).
	sentence([i, have, a, fever], 1).
	sentence([i, have, a, stomachache], 1).
	sentence([i, have, paralysis], 1). % really?
	sentence([i, feel, abdominal, cramps], 1).
	sentence([i, have, bad, breath], 1).
	sentence([i, have, pockmarks], 1).
	sentence([i, have, chills], 1).
	sentence([i, have, night, sweats], 1).
	sentence([i, have, a, swollen, neck], 1).
	sentence([i, have, abdominal, cramps], 1).

	% am
	sentence([i, am, headless], 1).
	sentence([i, am, wheezing], 1).
	sentence([i, am, salivating excessively], 1).
	sentence([i, am, vomiting], 1).

	% feel
	sentence([i, feel, bodily, pain], 1).
	sentence([i, feel, tired], 1).
	sentence([i, feel, abdominal, cramps], 1).
	sentence([i, feel, dizzy], 1).
	sentence([i, feel, chest, pain], 1).
	sentence([i, feel, muscle, pain], 1).
	sentence([i, feel, nauseated], 1).


	% questions from dr. curt

	sentence([do, you, have, throat, spots], 1).
	sentence([do, you, have, swollen, tonsils], 1).
	sentence([do, you, have, red, tonsils], 1).
	sentence([do, you, have, nasal, congestion], 1).
	sentence([do, you, have, neck, pain], 1).
	sentence([do, you, have, back, pain], 1).
	sentence([do, you, have, leg, pain], 1).
	sentence([do, you, have, rib pain], 1).
	sentence([do, you, have, a, sore, throat], 1).
	sentence([do, you, have, difficulty, breathing], 1).
	sentence([do, you, have, a, headache], 1).
	sentence([do, you, have, bodily sores], 1).
	sentence([do, you, have, bloody, stools], 1).
	sentence([do, you, have, convulsions], 1).
	sentence([do, you, have, red, eyes], 1).
	sentence([do, you, have, a, dry, cough], 1).
	sentence([do, you, have, a, bloody, nose], 1).
	sentence([do, you, have, bleeding, gums], 1).
	sentence([do, you, have, urinary, incontinence], 1).
	sentence([do, you, have, an, enlarged, spleen], 1).
	sentence([do, you, have, sensitive, teeth], 1).
	sentence([do, you, have, an, earache], 1).
	sentence([do, you, have, a, stiff, neck], 1).
	sentence([do, you, have, a, runny, nose], 1).
	sentence([do, you, have, joint, pain], 1).
	sentence([do, you have, seizures], 1).
	sentence([do, you, have, loose, watery, stools], 1).
	sentence([do, you, have, a, rash], 1).
	sentence([do, you, have, do, itchiness], 1).
	sentence([do, you, have, eartburn], 1).
	sentence([do, you, have, a, fever], 1).
	sentence([do, you, have, a, stomachache], 1).
	sentence([do, you, have, paralysis], 1). % really?
	sentence([do, you, feel, abdominal, cramps], 1).
	sentence([do, you, have, bad, breath], 1).
	sentence([do, you, have, pockmarks], 1).
	sentence([do, you, have, chills], 1).
	sentence([do, you, have, night, sweats], 1).
	sentence([do, you, have, a, swollen, neck], 1).
	sentence([do, you, have, abdominal, cramps], 1).

	% am
	sentence([are, you, headless], 1).
	sentence([are, you, wheezing], 1).
	sentence([are, you, sweating, excessively], 1).
	sentence([are, you, vomiting], 1).

	% feel
	sentence([do, you, feel, bodily, pain], 1).
	sentence([do, you, feel, tired], 1).
	sentence([do, you, feel, abdominal, cramps], 1).
	sentence([do, you, feel, dizzy,], 1).
	sentence([do, you, feel, chest, pain], 1).
	sentence([do, you, feel, muscle, pain], 1).
	sentence([do, you, feel, nauseated], 1).



