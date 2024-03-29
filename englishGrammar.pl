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

t([sem:T])-->
   q([sem:Q]),
   {combine(t:T,[q:Q])}.

bt([sem:T])-->
   {combine(bt:T,[s:S])},
   bs([coord:no,sem:S]).
  
btq([sem:T])-->
   {combine(btq:T,[q:Q])},
   bq([sem:Q]).
   
/*
t([sem:T])-->
  s([coord:yes,sem:S]),
  {combine(t:T,[s:S])}.
   
bt([sem:T])-->
   {combine(t:T,[s:S])},
   bs([coord:yes,sem:S]).   
*/
   

/*========================================================================
   Sentences
========================================================================*/

s([coord:no,sem:Sem])-->
   np([coord:_,num:Num,per:Per,vow:_,gap:[],sem:NP]),
   vp([coord:_,inf:fin,num:Num,per:Per,gap:[],sem:VP]),     
   {combine(s:Sem,[np:NP,vp:VP])}.

sinv([gap:G,sem:S])-->
   av([inf:fin,num:Num,per:Per,sem:Sem]),
   np([coord:_,num:Num,per:Per,vow:_,gap:[],sem:NP]),
   vp([coord:_,inf:inf,num:inf,per:inf,gap:G,sem:VP]),
   {combine(sinv:S,[av:Sem,np:NP,vp:VP])}.

bs([coord:no,sem:Sem])-->
   {combine(s:Sem,[np:NP,vp:VP])},
   bnp([coord:_,num:Num,per:Per,vow:_,gap:[],sem:NP]),
   bvp([coord:_,inf:fin,num:Num,per:Per,gap:[],sem:VP]).
   
bsinv([gap:G,sem:S])-->
   {combine(sinv:S,[av:Sem,np:NP,vp:VP])},
   bav([inf:fin,num:Num,per:Per,sem:Sem]),
   bnp([coord:_,num:Num,per:Per,vow:_,gap:[],sem:NP]),
   bvp([coord:_,inf:inf,num:inf,per:inf,gap:G,sem:VP]).   

/*
s([coord:yes,sem:Sem])--> 
   s([coord:no,sem:S1]), 
   coord([type:_,sem:C]),  
   s([coord:_,sem:S2]),
   {combine(s:Sem,[s:S1,coord:C,s:S2])}.
   
s([coord:no,sem:Sem])--> 
   vp_wo([coord:_,inf:fin,num:_,per:_,gap:[],sem:VP]),
   {combine(s:Sem,[vp_wo:VP])}.
 
bs([coord:yes,sem:Sem])--> 
   {combine(s:Sem,[s:S1,coord:C,s:S2])},   
   bs([coord:no,sem:S1]), 
   coord([type:_,sem:C]),  
   bs([coord:_,sem:S2]).
 
bs([coord:no,sem:Sem])--> 
   {combine(s:Sem,[vp_wo:VP])},
   bvp_wo([coord:_,inf:fin,num:_,per:_,gap:[],sem:VP]).
*/
   
/*========================================================================
   Questions
========================================================================*/

q([sem:Sem])-->
   sinv([gap:[],sem:S]),
  {combine(q:Sem,[sinv:S])}.

q([sem:Sem])-->
  whnp([num:_,sem:NP]),
  vp([coord:_,inf:fin,num:sg,per:thr,gap:[],sem:VP]),
  {combine(q:Sem,[whnp:NP,vp:VP])}.

q([sem:Sem])-->
   whnp([num:_,sem:NP]),
   sinv([gap:[np:NP],sem:S]),
  {combine(q:Sem,[sinv:S])}.   
  
bq([sem:Sem])-->
   {combine(q:Sem,[sinv:S])},
   bsinv([gap:[],sem:S]). 
 
bq([sem:Sem])-->
   {combine(q:Sem,[sinv:S])},
   bwhnp([num:_,sem:NP]),
   bsinv([gap:[np:NP],sem:S]).
   
bq([sem:Sem])-->
  {combine(q:Sem,[whnp:NP,vp:VP])},
  bwhnp([num:Num,sem:NP]),
  bvp([coord:_,inf:fin,num:Num,per:thr,gap:[],sem:VP]).      
 

/*========================================================================
   Noun Phrases
========================================================================*/


np([coord:no,num:sg,per:one,vow:_,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:sg,per:two,vow:_,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:sg,per:thr,vow:_,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:pl,per:one,vow:_,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:pl,per:two,vow:_,gap:[np:NP],sem:NP])--> [].
np([coord:no,num:pl,per:thr,vow:_,gap:[np:NP],sem:NP])--> [].

np([coord:no,num:pl,per:Per,vow:_,gap:[],sem:NP])-->
   n([coord:no,num:pl,per:Per,vow:_,sem:N]),
   {combine(np:NP,[n:N])}.

np([coord:no,num:Num,per:Per,vow:_,gap:[],sem:NP])-->
   pn([num:Num,per:Per,sem:PN]),
   {combine(np:NP,[pn:PN])}.

np([coord:no,num:sg,per:Per,vow:_,gap:[],sem:NP])-->
   det([mood:decl,type:_,vow:Vow,sem:Det]),
   n([coord:no,num:sg,per:Per,vow:Vow,sem:N]),
   {combine(np:NP,[det:Det,n:N])}.

np([coord:no,num:sg,vow:_,gap:[],sem:NP])-->
  qnp([mood:decl,sem:QNP]),
  {combine(np:NP,[qnp:QNP])}.

bnp([coord:no,num:sg,per:one,vow:_,gap:[np:NP],sem:NP])--> [].
bnp([coord:no,num:sg,per:two,vow:_,gap:[np:NP],sem:NP])--> [].
bnp([coord:no,num:sg,per:thr,vow:_,gap:[np:NP],sem:NP])--> [].
bnp([coord:no,num:pl,per:one,vow:_,gap:[np:NP],sem:NP])--> [].
bnp([coord:no,num:pl,per:two,vow:_,gap:[np:NP],sem:NP])--> [].
bnp([coord:no,num:pl,per:thr,vow:_,gap:[np:NP],sem:NP])--> [].

bnp([coord:no,num:Num,per:pl,vow:Vow,gap:[],sem:NP])-->
   {combine(np:NP,[n:N])},
   bn([coord:no,num:Num,per:pl,vow:Vow,sem:N]).

bnp([coord:no,num:Num,per:Per,vow:_,gap:[],sem:NP])-->
   {combine(np:NP,[pn:PN])},
   bpn([num:Num,per:Per,sem:PN]).

bnp([coord:no,num:Num,per:Per,vow:_,gap:[],sem:NP])-->
   {combine(np:NP,[det:Det,n:N])},
   bdet([mood:decl,type:_,vow:Vow,sem:Det]),
   bn([coord:no,num:Num,per:Per,vow:Vow,sem:N]).   
  
bnp([coord:no,num:sg,vow:_,gap:[],sem:NP])-->
  {combine(np:NP,[qnp:QNP])},
  bqnp([mood:decl,sem:QNP]).  
  


/*========================================================================
   WH Noun Phrases
========================================================================*/

whnp([num:sg,sem:NP])-->
   qnp([mood:int,sem:QNP]),
   {combine(whnp:NP,[qnp:QNP])}.
   
whnp([num:sg,sem:NP])-->
   det([mood:int,type:_,vow:_,sem:Det]),
   n([coord:_,vow:_,sem:N]),
   {combine(whnp:NP,[det:Det,n:N])}.
   
bwhnp([num:sg,sem:NP])-->
   {combine(whnp:NP,[qnp:QNP])},
   bqnp([mood:int,sem:QNP]).   
   
bwhnp([num:sg,sem:NP])-->
   {combine(whnp:NP,[det:Det,n:N])},
   bdet([mood:int,type:_,sem:Det]),
   bn([coord:_,sem:N]).


/*========================================================================
   Nouns
========================================================================*/

n([coord:no,num:Num,per:Per,vow:_,sem:N])--> 
   noun([num:Num,per:Per,vow:_,sem:Noun]),
   {combine(n:N,[noun:Noun])}.

n([coord:_,num:Num,per:Per,vow:Vow,sem:Sem])--> 
   adj([vow:Vow,sem:A]), 
   noun([num:Num,per:Per,vow:_,sem:N]), 
   {combine(n:Sem,[adj:A,n:N])}.

bn([coord:no,num:Num,per:Per,vow:Vow,sem:N])-->
   {combine(n:N,[noun:Noun])},
   bnoun([num:Num,per:Per,vow:Vow,sem:Noun]).  
   
bn([coord:_,num:Num,per:Per,vow:Vow,sem:Sem])--> 
   {combine(n:Sem,[adj:A,n:N])}, 
   badj([vow:Vow,sem:A]), 
   bn([num:Num,per:Per,vow:_,sem:N]).
   
nmod([sem:N])--> 
   pp([sem:PP]),
   {combine(nmod:N,[pp:PP])}.
   
nmod([sem:N])--> 
   rc([sem:RC]),
   {combine(nmod:N,[rc:RC])}.

nmod([sem:Sem])--> 
   pp([sem:PP]), 
   nmod([sem:NMod]),
   {combine(nmod:Sem,[pp:PP,nmod:NMod])}.

bnmod([sem:N])--> 
   {combine(nmod:N,[pp:PP])},   
   bpp([sem:PP]).
   
bnmod([sem:N])--> 
   {combine(nmod:N,[rc:RC])},   
   brc([sem:RC]).   

bnmod([sem:Sem])--> 
   {combine(nmod:Sem,[pp:PP,nmod:NMod])},
   bpp([sem:PP]), 
   bnmod([sem:NMod]).

/*========================================================================
   Verb Phrases
========================================================================*/


vp([coord:no,inf:fin,num:Num,per:Per,gap:[],sem:VP])--> 
   av([inf:fin,num:Num,per:Per,sem:Mod]), 
   vp([coord:_,inf:inf,num:inf,per:inf,gap:[],sem:V2]),
   {combine(vp:VP,[av:Mod,vp:V2])}.   

vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   cop([inf:Inf,num:Num,per:Per,sem:Cop]),
   np([coord:_,num:Num,per:_,vow:_,gap:[],sem:NP]),
   {combine(vp:VP,[cop:Cop,np:NP])}.
     
vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   cop([inf:Inf,num:Num,per:Per,sem:Cop]),
   adj([vow:_,sem:A]),
   {combine(vp:VP,[cop:Cop,adj:A])}.
   
vp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   iv([inf:Inf,num:Num,per:Per,sem:IV]),
   {combine(vp:VP,[iv:IV])}. 

vp([coord:no,inf:Inf,num:_,per:Per,gap:G,sem:VP])--> % changing num then changing back - is Num in what "should work"
   tv([inf:Inf,num:_,per:Per,sem:TV]), % here too
   np([coord:_,num:_,per:_,vow:_,gap:G,sem:NP]),
   {combine(vp:VP,[tv:TV,np:NP])}.

bvp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])--> 
   {combine(vp:VP,[av:Mod,vp:V2])},
   bav([inf:Inf,num:Num,per:Per,sem:Mod]), 
   bvp([coord:_,inf:inf,num:inf,per:inf,gap:[],sem:V2]).   
     
bvp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   {combine(vp:VP,[cop:Cop,np:NP])},  
   bcop([inf:Inf,num:Num,per:Per,sem:Cop]),
   bnp([coord:_,num:Num,per:_,vow:_,gap:[],sem:NP]).
   
bvp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   {combine(vp:VP,[cop:Cop,adj:A])},  
   bcop([inf:Inf,num:Num,per:Per,sem:Cop]),
   badj([vow:_,sem:A]).

bvp([coord:no,inf:Inf,num:Num,per:Per,gap:[],sem:VP])-->
   {combine(vp:VP,[iv:IV])},
   biv([inf:Inf,num:Num,per:Per,sem:IV]).  

bvp([coord:no,inf:I,num:Num,per:Per,gap:G,sem:VP])-->
   {combine(vp:VP,[tv:TV,np:NP])},
   btv([inf:I,num:Num,per:Per,sem:TV]),
   bnp([coord:_,num:_,per:_,vow:_,gap:G,sem:NP]).   
   
   
/*========================================================================
   Prepositional Phrases
========================================================================*/

pp([sem:PP])--> 
   prep([sem:Prep]), 
   np([coord:_,num:_,per:_,gap:[],sem:NP]), 
   {combine(pp:PP,[prep:Prep,np:NP])}.
   
bpp([sem:PP])--> 
   {combine(pp:PP,[prep:Prep,np:NP])},   
   bprep([sem:Prep]), 
   bnp([coord:_,num:_,per:_,gap:[],sem:NP]).

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
   bvp([coord:_,inf:fin,num:sg,per:thr,gap:[],sem:VP]).

/*========================================================================
   Lexical Rules
========================================================================*/

iv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(iv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(iv,[symbol:Sym,sem:Sem])}.
   
biv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {semLex(iv,[symbol:Sym,sem:Sem]),
   lexEntry(iv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},   
   Word.

tv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(tv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(tv,[symbol:Sym,sem:Sem])}.

btv([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {semLex(tv,[symbol:Sym,sem:Sem]),
   lexEntry(tv,[symbol:Sym,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word.

cop([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {lexEntry(cop,[pol:Pol,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word,
   {semLex(cop,[pol:Pol,sem:Sem])}.
   
bcop([inf:Inf,num:Num,per:Per,sem:Sem])-->
   {semLex(cop,[pol:Pol,sem:Sem]),
   lexEntry(cop,[pol:Pol,syntax:Word,inf:Inf,num:Num,per:Per])},
   Word. 
   
det([mood:M,type:Type,vow:Vow,sem:Det])-->
   {lexEntry(det,[syntax:Word,mood:M,type:Type,vow:Vow])},
   Word,
   {semLex(det,[type:Type,sem:Det])}.
   
bdet([mood:M,type:Type,vow:Vow,sem:Det])-->
   {semLex(det,[type:Type,sem:Det]),
   lexEntry(det,[syntax:Word,mood:M,type:Type,vow:Vow])},
   Word.      

pn([num:Num,per:Per,sem:Sem])-->
   {lexEntry(pn,[symbol:Sym,syntax:Word,num:Num,per:Per])},
   Word,
   {semLex(pn,[symbol:Sym,sem:Sem])}.
   
bpn([num:Num,per:Per,sem:Sem])-->
   {semLex(pn,[symbol:Sym,sem:Sem]),
    lexEntry(pn,[symbol:Sym,syntax:Word,num:Num,per:Per])},
   Word.
 
relpro([sem:Sem])--> 
   {lexEntry(relpro,[syntax:Word])},
   Word,
   {semLex(relpro,[sem:Sem])}.
   
brelpro([sem:Sem])--> 
   {semLex(relpro,[sem:Sem]),
   lexEntry(relpro,[syntax:Word])},
   Word.
   
prep([sem:Sem])--> 
   {lexEntry(prep,[symbol:Sym,syntax:Word])},
   Word,
   {semLex(prep,[symbol:Sym,sem:Sem])}.
 
bprep([sem:Sem])--> 
   {semLex(prep,[symbol:Sym,sem:Sem]),
   lexEntry(prep,[symbol:Sym,syntax:Word])},
   Word.
   
adj([vow:Vow,sem:Sem])--> 
   {lexEntry(adj,[symbol:Sym,syntax:Word,vow:Vow])},
   Word,
   {semLex(adj,[symbol:Sym,sem:Sem])}.

badj([vow:Vow,sem:Sem])--> 
   {semLex(adj,[symbol:Sym,sem:Sem]),
   lexEntry(adj,[symbol:Sym,syntax:Word,vow:Vow])},
   Word.   
   
av([inf:Inf,num:Num,per:Per,sem:Sem])--> 
   {lexEntry(av,[syntax:Word,inf:Inf,pol:Pol,num:Num,per:Per])},
   Word,
   {semLex(av,[pol:Pol,sem:Sem])}.

bav([inf:Inf,num:Num,per:Per,sem:Sem])--> 
   {semLex(av,[pol:Pol,sem:Sem]),
   lexEntry(av,[syntax:Word,inf:Inf,pol:Pol,num:Num,per:Per])},
   Word.   
   
coord([type:Type,sem:Sem])-->
   {lexEntry(coord,[syntax:Word,type:Type])},
   Word,
   {semLex(coord,[type:Type,sem:Sem])}.
   
bcoord([type:Type,sem:Sem])-->
   {semLex(coord,[type:Type,sem:Sem]),
   lexEntry(coord,[syntax:Word,type:Type])},
   Word.
   
qnp([mood:M,sem:NP])--> 
   {lexEntry(qnp,[symbol:Symbol,syntax:Word,mood:M,type:Type])},
   Word,
   {semLex(qnp,[type:Type,symbol:Symbol,sem:NP])}.
   
bqnp([mood:M,sem:NP])--> 
   {semLex(bqnp,[symbol:Symbol,type:Type,sem:NP]),
   lexEntry(bqnp,[symbol:Symbol,syntax:Word,mood:M,type:Type])},   
   Word.
 
noun([num:Num,per:Per,vow:Vow,sem:Sem])-->
  {lexEntry(noun,[symbol:Sym,syntax:Word,num:Num,per:Per,vow:Vow])},
  Word,
  {semLex(noun,[symbol:Sym,sem:Sem])}.
  

bnoun([num:Num,per:Per,vow:Vow,sem:Sem])-->
  {semLex(noun,[symbol:Sym,sem:Sem]),
  lexEntry(noun,[symbol:Sym,syntax:Word,num:Num,per:Per,vow:Vow])},  
  Word.  




