/*************************************************************************

    File: englishGrammar.pl
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
   Texts
========================================================================*/

t([sem:T])-->
   {combine(t:T,[s:S])},
   s([coord:no,sem:S]).

t([sem:T])-->
   {combine(t:T,[s:S])},
   s([coord:yes,sem:S]).



/*========================================================================
   Sentences
========================================================================*/

s([coord:no,sem:Sem])--> 
   {combine(s:Sem,[vp_wo:VP])},
   vp_wo([coord:_,inf:fin,num:_,per:_,gap:[],sem:VP]).

s([coord:no,sem:Sem])-->
   {combine(s:Sem,[np:NP,vp:VP])},
   np([coord:_,num:Num,per:Per,gap:[],sem:NP]),
   vp([coord:_,inf:fin,num:Num,per:Per,gap:[],sem:VP]).

s([coord:yes,sem:Sem])-->
   {combine(s:Sem,[s:S1,s:S2])},
   s([coord:ant,sem:S1]),
   s([coord:con,sem:S2]).

s([coord:yes,sem:Sem])-->
   {combine(s:Sem,[s:S1,s:S2])},   
   s([coord:either,sem:S1]),
   s([coord:or,sem:S2]).


/*========================================================================
   Noun Phrases
========================================================================*/


np([coord:no,num:sg,per:one,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:sg,per:two,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:sg,per:thr,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:pl,per:one,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:pl,per:two,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:pl,per:thr,gap:[np:NP],sem:NP])--> [].




np([coord:no,num:Num,per:Per,gap:[],sem:NP])-->
   {combine(np:NP,[pn:PN])},
   pn([num:Num,per:Per,sem:PN]).

np([coord:no,num:Num,per:Per,gap:[],sem:NP])-->
   {combine(np:NP,[n:N])},
   n([coord:no,num:Num,per:Per,sem:N]).

np([coord:no,num:Num,per:Per,gap:[],sem:NP])-->
   {combine(np:NP,[det:Det,n:N])},
   det([mood:decl,type:_,sem:Det]),
   n([coord:no,num:Num,per:Per,sem:N]).



/*========================================================================
   Nouns
========================================================================*/

n([coord:no,num:Num,per:Per,sem:N])-->
   {combine(n:N,[noun:Noun])},
   noun([num:Num,per:Per,sem:Noun]).


/*========================================================================
   Verb Phrases
========================================================================*/

vp_wo([coord:no,inf:Inf,num:sg,per:Per,gap:[],sem:VP])--> 
   iv_wo([inf:Inf,num:sg,per:Per,sem:IV]), 
   {combine(vp_wo:VP,[iv_wo:IV])}.

vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   {combine(vp:VP,[iv:IV])},
   iv([inf:Inf,num:Num,per:Per,sem:IV]).

vp([coord:no,inf:I,num:Num,per:Per,gap:G,sem:VP])-->
   {combine(vp:VP,[tv:TV,np:NP])},
   tv([inf:I,num:Num,per:Per,sem:TV]),
   np([coord:_,num:_,per:_,gap:G,sem:NP]).

/*

vp([coord:yes,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   {combine(vp:VP,[vp:VP1,coord:C,vp:VP2])},
   vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP1]),
   coord([type:_,sem:C]),
   vp([coord:_,inf:Inf,num:Num,gap:[],sem:VP2]).



vp([coord:no,inf:Inf,num:Num,gap:[],sem:VP])-->
   {combine(vp:VP,[cop:Cop,np:NP])},
   cop([inf:Inf,num:Num,sem:Cop]),
   np([coord:_,num:_,gap:[],sem:NP]).

vp([coord:yes,inf:Inf,num:Num,gap:[],sem:VP])-->
   {combine(vp:VP,[vp:VP1,coord:C,vp:VP2])},
   vp([coord:no,inf:Inf,num:Num,gap:[],sem:VP1]),
   coord([type:_,sem:C]),
   vp([coord:_,inf:Inf,num:Num,gap:[],sem:VP2]).
*/

/*========================================================================
   Lexical Rules
========================================================================*/

iv_wo([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(iv_wo,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(iv_wo,[symbol:Sym,per:Per,sem:Sem])}.

iv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(iv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(iv,[symbol:Sym,sem:Sem])}.

tv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(tv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(tv,[symbol:Sym,sem:Sem])}.


/*

cop([inf:Inf,num:Num,sem:Sem])-->
   {lexEntry(cop,[pol:Pol,syntax:Word,inf:Inf,num:Num])}, % why no number in copula?
   Word,
   {semLex(cop,[pol:Pol,sem:Sem])}.
*/

pn([num:Num,per:Per,sem:Sem])-->
   {lexEntry(pn,[symbol:Sym,syntax:Word,num:Num,per:Per])},
   Word,
   {semLex(pn,[symbol:Sym,sem:Sem])}.

noun([num:Num,per:Per,sem:Sem])-->
  {lexEntry(noun,[symbol:Sym,syntax:Word,num:Num,per:Per])},
  Word,
  {semLex(noun,[symbol:Sym,sem:Sem])}.

coord([type:Type,sem:Sem])-->
   {lexEntry(coord,[syntax:Word,type:Type])},
   Word,
   {semLex(coord,[type:Type,sem:Sem])}.

det([mood:M,type:Type,sem:Det])-->
   {lexEntry(det,[syntax:Word,mood:M,type:Type])},
   Word,
   {semLex(det,[type:Type,sem:Det])}.





