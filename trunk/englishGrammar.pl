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
   s([coord:no,sem:S]),
   {combine(t:T,[s:S])}.

bt([sem:T])-->
   {combine(bt:T,[bs:S])},
   bs([coord:no,sem:S]).

t([sem:T])-->
  s([coord:yes,sem:S]),
  {combine(t:T,[s:S])}.
   
bt([sem:T])-->
   {combine(bt:T,[bs:S])},
   bs([coord:yes,sem:S]).   

t([sem:T])-->
   {combine(t:T,[q:Q])},
   q([sem:Q]).
   
bt([sem:T])-->
   {combine(bt:T,[bq:Q])},
   bq([sem:Q]).

/*========================================================================
   Sentences
========================================================================*/

s([coord:yes,sem:Sem])--> 
   s([coord:no,sem:S1]), 
   coord([type:_,sem:C]),  
   s([coord:_,sem:S2]),
   {combine(s:Sem,[s:S1,coord:C,s:S2])}.
   
bs([coord:yes,sem:Sem])--> 
   {combine(bs:Sem,[bs:S1,coord:C,bs:S2])},   
   bs([coord:no,sem:S1]), 
   coord([type:_,sem:C]),  
   bs([coord:_,sem:S2]).

s([coord:no,sem:Sem])--> 
   vp_wo([coord:_,inf:fin,num:_,per:_,gap:[],sem:VP]),
   {combine(s:Sem,[vp_wo:VP])}.
   
bs([coord:no,sem:Sem])--> 
   {combine(bs:Sem,[bvp_wo:VP])},
   bvp_wo([coord:_,inf:fin,num:_,per:_,gap:[],sem:VP]).

s([coord:no,sem:Sem])-->
   np([coord:_,num:Num,per:Per,gap:[],sem:NP]),
   vp([coord:_,inf:fin,num:Num,per:Per,gap:[],sem:VP]),     
   {combine(s:Sem,[np:NP,vp:VP])}.


bs([coord:no,sem:Sem])-->
   {combine(bs:Sem,[bnp:NP,bvp:VP])},
   bnp([coord:_,num:Num,per:Per,gap:[],sem:NP]),
   bvp([coord:_,inf:fin,num:Num,per:Per,gap:[],sem:VP]).
   
sinv([gap:G,sem:S])-->
   av([inf:fin,num:Num,per:Per,sem:Sem]),
   np([coord:_,num:Num,per:Per,gap:[],sem:NP]),
   vp([coord:_,inf:inf,num:inf,per:inf,gap:G,sem:VP]),
   {combine(sinv:S,[av:Sem,np:NP,vp:VP])}.

bsinv([gap:G,sem:S])-->
   {combine(bsinv:S,[bav:Sem,bnp:NP,bvp:VP])},
   bav([inf:fin,num:Num,per:Per,sem:Sem]),
   bnp([coord:_,num:Num,per:Per,gap:[],sem:NP]),
   bvp([coord:_,inf:inf,num:inf,per:inf,gap:G,sem:VP]).   


   
/*========================================================================
   Questions
========================================================================*/
/*
q([sem:Sem])-->
   sinv([gap:G,sem:S]),
  {combine(q:Sem,[sinv:S])}.
  
bq([sem:Sem])-->
   bsinv([gap:G,sem:S]),
  {combine(bq:Sem,[bsinv:S])}.
*/
q([sem:Sem])-->
  whnp([num:_,sem:NP]),
  vp([coord:_,inf:fin,num:Num,per:Per,gap:[],sem:VP]),
  {combine(q:Sem,[whnp:NP,vp:VP])}.

bq([sem:Sem])-->
  {combine(bq:Sem,[bwhnp:NP,bvp:VP])},
  bwhnp([num:Num,sem:NP]),
  bvp([coord:_,inf:fin,num:Num,per:Per,gap:[],sem:VP]).    

%how is this different from the simple sinv rule?
q([sem:Sem])-->
   whnp([num:_,sem:NP]),
   sinv([gap:[np:NP],sem:S]),
  {combine(q:Sem,[sinv:S])}.   
   
bq([sem:Sem])-->
   {combine(bq:Sem,[bsinv:S])},
   bwhnp([num:_,sem:NP]),
   bsinv([gap:[np:NP],sem:S]).
   


/*========================================================================
   Noun Phrases
========================================================================*/


np([coord:no,num:sg,per:one,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:sg,per:two,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:sg,per:thr,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:pl,per:one,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:pl,per:two,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:pl,per:thr,gap:[np:NP],sem:NP])--> [].

bnp([coord:no,num:sg,per:one,gap:[np:NP],sem:NP])--> [].
bnp([coord:no,num:sg,per:two,gap:[np:NP],sem:NP])--> [].
bnp([coord:no,num:sg,per:thr,gap:[np:NP],sem:NP])--> [].
bnp([coord:no,num:pl,per:one,gap:[np:NP],sem:NP])--> [].
bnp([coord:no,num:pl,per:two,gap:[np:NP],sem:NP])--> [].
bnp([coord:no,num:pl,per:thr,gap:[np:NP],sem:NP])--> [].


np([coord:yes,num:pl,per:thr,gap:[],sem:NP])--> 
   np([coord:no,num:_,per:_,gap:[],sem:NP1]), 
   coord([type:conj,sem:C]), 
   np([coord:_,num:_,per:_,gap:[],sem:NP2]),
   {combine(np:NP,[np:NP1,coord:C,np:NP2])}.

bnp([coord:yes,num:pl,per:thr,gap:[],sem:NP])--> 
   {combine(np:NP,[np:NP1,coord:C,np:NP2])},
   np([coord:no,num:_,per:_,gap:[],sem:NP1]), 
   coord([type:conj,sem:C]), 
   np([coord:_,num:_,per:_,gap:[],sem:NP2]).   

np([coord:yes,num:sg,per:thr,gap:[],sem:NP])--> 
   np([coord:no,num:sg,per:thr,gap:[],sem:NP1]), 
   coord([type:disj,sem:C]), 
   np([coord:_,num:sg,per:thr,gap:[],sem:NP2]),
   {combine(np:NP,[np:NP1,coord:C,np:NP2])}.
   
bnp([coord:yes,num:sg,per:thr,gap:[],sem:NP])--> 
   {combine(np:NP,[np:NP1,coord:C,np:NP2])},
   np([coord:no,num:sg,per:thr,gap:[],sem:NP1]), 
   coord([type:disj,sem:C]), 
   np([coord:_,num:sg,per:thr,gap:[],sem:NP2]).     


np([coord:no,num:Num,per:Per,gap:[],sem:NP])-->
   det([mood:decl,type:_,sem:Det]),
   n([coord:no,num:Num,per:Per,sem:N]),
   {combine(np:NP,[det:Det,n:N])}.

bnp([coord:no,num:Num,per:Per,gap:[],sem:NP])-->
   {combine(np:NP,[det:Det,n:N])},
   det([mood:decl,type:_,sem:Det]),
   n([coord:no,num:Num,per:Per,sem:N]).   
   

np([coord:no,num:Num,per:Per,gap:[],sem:NP])-->
   pn([num:Num,per:Per,sem:PN]),
   {combine(np:NP,[pn:PN])}.

bnp([coord:no,num:Num,per:Per,gap:[],sem:NP])-->
   {combine(np:NP,[pn:PN])},
   pn([num:Num,per:Per,sem:PN]).

np([coord:no,num:sg,gap:[],sem:NP])-->
  qnp([mood:decl,sem:QNP]),
  {combine(np:NP,[qnp:QNP])}.

  
bnp([coord:no,num:sg,gap:[],sem:NP])-->
  {combine(np:NP,[qnp:QNP])},
  qnp([mood:decl,sem:QNP]).  
  
 /*
 np([coord:no,num:Num,per:Per,gap:[],sem:NP])-->
   n([coord:no,num:Num,per:Per,sem:N]),
   {combine(np:NP,[n:N])}.
   
bnp([coord:no,num:Num,per:Per,gap:[],sem:NP])-->
   {combine(np:NP,[n:N])},
   n([coord:no,num:Num,per:Per,sem:N]).   
*/

/*========================================================================
   WH Noun Phrases
========================================================================*/

whnp([num:sg,sem:NP])-->
   qnp([mood:int,sem:QNP]),
   {combine(whnp:NP,[qnp:QNP])}.
   
bwhnp([num:sg,sem:NP])-->
   qnp([mood:int,sem:QNP]),
   {combine(whnp:NP,[qnp:QNP])}.
   
whnp([num:sg,sem:NP])-->
   det([mood:int,type:_,sem:Det]),
   n([coord:_,sem:N]),
   {combine(whnp:NP,[det:Det,n:N])}.
   
bwhnp([num:sg,sem:NP])-->
   {combine(whnp:NP,[det:Det,n:N])},
   det([mood:int,type:_,sem:Det]),
   n([coord:_,sem:N]).


/*========================================================================
   Nouns
========================================================================*/

n([coord:yes,num:thr,per:pl,sem:N])--> 
   n([coord:no,num:_,per:_,sem:N1]), 
   coord([type:_,sem:C]),  
   n([coord:_,num:_,per:_,sem:N2]),
   {combine(n:N,[n:N1,coord:C,n:N2])}.
   
bn([coord:yes,num:thr,per:pl,sem:N])--> 
   {combine(n:N,[n:N1,coord:C,n:N2])},   
   n([coord:no,num:_,per:_,sem:N1]), 
   coord([type:_,num:_,per:_,sem:C]),  
   n([coord:_,sem:N2]).
   
n([coord:C,num:Num,per:Per,sem:Sem])--> 
   adj([sem:A]), 
   n([coord:C,num:Num,per:Per,sem:N]), 
   {combine(n:Sem,[adj:A,n:N])}.

bn([coord:C,sem:Sem])--> 
   {combine(n:Sem,[adj:A,n:N])}, 
   adj([sem:A]), 
   n([coord:C,sem:N]).

n([coord:no,num:Num,per:Per,sem:N])-->
   noun([num:Num,per:Per,sem:Noun]),
   {combine(n:N,[noun:Noun])}.

   
bn([coord:no,num:Num,per:Per,sem:N])-->
   {combine(n:N,[noun:Noun])},
   noun([num:Num,per:Per,sem:Noun]).   
   
n([coord:no,num:Num,per:Per,sem:Sem])--> 
   noun([num:Num,per:Per,sem:N]), 
   nmod([sem:PP]),
   {combine(n:Sem,[noun:N,nmod:PP])}. 
   
bn([coord:no,num:Num,per:Per,sem:Sem])--> 
   {combine(n:Sem,[noun:N,nmod:PP])},   
   noun([num:Num,per:Per,sem:N]), 
   nmod([sem:PP]).

nmod([sem:N])--> 
   pp([sem:PP]),
   {combine(nmod:N,[pp:PP])}.

bnmod([sem:N])--> 
   {combine(nmod:N,[pp:PP])},   
   pp([sem:PP]).
   
nmod([sem:N])--> 
   rc([sem:RC]),
   {combine(nmod:N,[rc:RC])}.
   
bnmod([sem:N])--> 
   {combine(nmod:N,[rc:RC])},   
   rc([sem:RC]).

nmod([sem:Sem])--> 
   pp([sem:PP]), 
   nmod([sem:NMod]),
   {combine(nmod:Sem,[pp:PP,nmod:NMod])}.

bnmod([sem:Sem])--> 
   {combine(nmod:Sem,[pp:PP,nmod:NMod])},
   pp([sem:PP]), 
   nmod([sem:NMod]).

/*========================================================================
   Verb Phrases
========================================================================*/

vp_wo([coord:no,inf:Inf,num:sg,per:Per,gap:[],sem:VP])--> 
   iv_wo([inf:Inf,num:sg,per:Per,sem:IV]), 
   {combine(vp_wo:VP,[iv_wo:IV])}.
   
bvp_wo([coord:no,inf:Inf,num:sg,per:Per,gap:[],sem:VP])--> 
   {combine(vp_wo:VP,[iv_wo:IV])},
   iv_wo([inf:Inf,num:sg,per:Per,sem:IV]).


vp([coord:yes,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP1]),
   coord([type:_,sem:C]),
   vp([coord:_,inf:Inf,num:Num,per:Per,gap:[],sem:VP2]),
   {combine(vp:VP,[vp:VP1,coord:C,vp:VP2])}.   

bvp([coord:yes,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   {combine(vp:VP,[vp:VP1,coord:C,vp:VP2])},
   vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP1]),
   coord([type:_,sem:C]),
   vp([coord:_,inf:Inf,num:Num,per:Per,gap:[],sem:VP2]).


vp([coord:no,inf:fin,num:Num,per:Per,gap:[],sem:VP])--> 
   av([inf:fin,num:Num,per:Per,sem:Mod]), 
   vp([coord:_,inf:inf,num:inf,per:inf,gap:[],sem:V2]),
   {combine(vp:VP,[av:Mod,vp:V2])}.   
   
bvp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])--> 
   {combine(vp:VP,[av:Mod,vp:V2])},
   av([inf:Inf,num:Num,per:Per,sem:Mod]), 
   vp([coord:_,inf:inf,num:inf,per:inf,gap:[],sem:V2]).   
   
vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   cop([inf:Inf,num:Num,per:Per,sem:Cop]),
   np([coord:_,num:Num,per:_,gap:[],sem:NP]),
   {combine(vp:VP,[cop:Cop,np:NP])}.
   
bvp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   {combine(vp:VP,[cop:Cop,np:NP])},  
   cop([inf:Inf,num:Num,per:Per,sem:Cop]),
   np([coord:_,num:Num,per:_,gap:[],sem:NP]).
   
vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   cop([inf:Inf,num:Num,per:Per,sem:Cop]),
   adj([sem:A]),
   {combine(vp:VP,[cop:Cop,adj:A])}.
   
bvp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   {combine(vp:VP,[cop:Cop,adj:A])},  
   cop([inf:Inf,num:Num,per:Per,sem:Cop]),
   adj([sem:A]).

vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   iv([inf:Inf,num:Num,per:Per,sem:IV]),
   {combine(vp:VP,[iv:IV])}.

bvp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   {combine(vp:VP,[iv:IV])},
   iv([inf:Inf,num:Num,per:Per,sem:IV]).   

vp([coord:no,inf:I,num:Num,per:Per,gap:G,sem:VP])-->
   tv([inf:I,num:Num,per:Per,sem:TV]),
   np([coord:_,num:_,per:_,gap:G,sem:NP]),
   {combine(vp:VP,[tv:TV,np:NP])}.
   
bvp([coord:no,inf:I,num:Num,per:Per,gap:G,sem:VP])-->
   {combine(vp:VP,[tv:TV,np:NP])},
   tv([inf:I,num:Num,per:Per,sem:TV]),
   np([coord:_,num:_,per:_,gap:G,sem:NP]).   
   
/*========================================================================
   Prepositional Phrases
========================================================================*/

pp([sem:PP])--> 
   prep([sem:Prep]), 
   np([coord:_,num:_,per:_,gap:[],sem:NP]), 
   {combine(pp:PP,[prep:Prep,np:NP])}.
   
bpp([sem:PP])--> 
   {combine(pp:PP,[prep:Prep,np:NP])},   
   prep([sem:Prep]), 
   np([coord:_,num:_,per:_,gap:[],sem:NP]).

/*========================================================================
   Relative Clauses
========================================================================*/

rc([sem:RC])--> 
   relpro([sem:RP]), 
   vp([coord:_,inf:fin,num:sg,per:thr,gap:[],sem:VP]), 
   {combine(rc:RC,[relpro:RP,vp:VP])}.

brc([sem:RC])--> 
   {combine(rc:RC,[relpro:RP,vp:VP])},
   relpro([sem:RP]), 
   vp([coord:_,inf:fin,num:sg,per:thr,gap:[],sem:VP]).

/*========================================================================
   Lexical Rules
========================================================================*/

iv_wo([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(iv_wo,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(iv_wo,[symbol:Sym,per:Per,sem:Sem])}.

biv_wo([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {semLex(iv_wo,[symbol:Sym,per:Per,sem:Sem])},
   Word,
   {lexEntry(iv_wo,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])}.
   
iv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(iv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(iv,[symbol:Sym,sem:Sem])}.
   
biv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {semLex(iv,[symbol:Sym,sem:Sem])},   
   Word,
   {lexEntry(iv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])}.

tv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(tv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(tv,[symbol:Sym,sem:Sem])}.

btv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {semLex(tv,[symbol:Sym,sem:Sem])},
   Word,
   {lexEntry(tv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])}.

cop([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(cop,[pol:Pol,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(cop,[pol:Pol,sem:Sem])}.
   
bcop([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {semLex(cop,[pol:Pol,sem:Sem])},
   Word,
   {lexEntry(cop,[pol:Pol,syntax:Word,inf:Inf,num:Num,per:Per])}. 
   
det([mood:M,type:Type,sem:Det])-->
   {lexEntry(det,[syntax:Word,mood:M,type:Type])},
   Word,
   {semLex(det,[type:Type,sem:Det])}.
   
bdet([mood:M,type:Type,sem:Det])-->
   {semLex(det,[type:Type,sem:Det])},
   Word,
   {lexEntry(det,[syntax:Word,mood:M,type:Type])}.      

pn([num:Num,per:Per,sem:Sem])-->
   {lexEntry(pn,[symbol:Sym,syntax:Word,num:Num,per:Per])},
   Word,
   {semLex(pn,[symbol:Sym,sem:Sem])}.
   
bpn([num:Num,per:Per,sem:Sem])-->
   {semLex(pn,[symbol:Sym,sem:Sem])},
   Word,
   {lexEntry(pn,[symbol:Sym,syntax:Word,num:Num,per:Per])}.
 
relpro([sem:Sem])--> 
   {lexEntry(relpro,[syntax:Word])},
   Word,
   {semLex(relpro,[sem:Sem])}.
   
brelpro([sem:Sem])--> 
   {semLex(relpro,[sem:Sem])},
   Word,
   {lexEntry(relpro,[syntax:Word])}.
   
prep([sem:Sem])--> 
   {lexEntry(prep,[symbol:Sym,syntax:Word])},
   Word,
   {semLex(prep,[symbol:Sym,sem:Sem])}.
 
bprep([sem:Sem])--> 
   {semLex(prep,[symbol:Sym,sem:Sem])},
   Word,
   {lexEntry(prep,[symbol:Sym,syntax:Word])}. 
   
adj([sem:Sem])--> 
   {lexEntry(adj,[symbol:Sym,syntax:Word])},
   Word,
   {semLex(adj,[symbol:Sym,sem:Sem])}.

badj([sem:Sem])--> 
   {semLex(adj,[symbol:Sym,sem:Sem])},
   Word,
   {lexEntry(adj,[symbol:Sym,syntax:Word])}.   
   
av([inf:Inf,num:Num,per:Per,sem:Sem])--> 
   {lexEntry(av,[syntax:Word,inf:Inf,pol:Pol,num:Num,per:Per])},
   Word,
   {semLex(av,[pol:Pol,sem:Sem])}.

bav([inf:Inf,num:Num,per:Per,sem:Sem])--> 
   {semLex(av,[pol:Pol,sem:Sem])},
   Word,
   {lexEntry(av,[syntax:Word,inf:Inf,pol:Pol,num:Num,per:Per])}.   
   
coord([type:Type,sem:Sem])-->
   {lexEntry(coord,[syntax:Word,type:Type])},
   Word,
   {semLex(coord,[type:Type,sem:Sem])}.
   
bcoord([type:Type,sem:Sem])-->
   {semLex(coord,[type:Type,sem:Sem])},
   Word,
   {lexEntry(coord,[syntax:Word,type:Type])}.
   
qnp([mood:M,sem:NP])--> 
   {lexEntry(qnp,[symbol:Symbol,syntax:Word,mood:M,type:Type])},
   Word,
   {semLex(qnp,[type:Type,symbol:Symbol,sem:NP])}.
   
bqnp([mood:M,sem:NP])--> 
   {semLex(qnp,[symbol:Symbol,type:Type,sem:NP])},   
   Word,
   {lexEntry(qnp,[symbol:Symbol,syntax:Word,mood:M,type:Type])}.

noun([num:Num,per:Per,sem:Sem])-->
  {lexEntry(noun,[symbol:Sym,syntax:Word,num:Num,per:Per])},
  Word,
  {semLex(noun,[symbol:Sym,sem:Sem])}.
  
bnoun([num:Num,per:Per,sem:Sem])-->
  {semLex(noun,[symbol:Sym,sem:Sem])},  
  Word,
  {lexEntry(noun,[symbol:Sym,syntax:Word,num:Num,per:Per])}.  




