/*************************************************************************

    File: semRulesLambda.pl
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
   Semantic Rules
========================================================================*/

combine(t:Converted,[s:Sem]):- 
   betaConvert(Sem,Converted).

combine(t:Converted,[q:Sem]):- 
   betaConvert(Sem,Converted).

combine(s:A,[vp_wo:A]).
combine(s:app(app(B,A),C),[s:A,coord:B,s:C]).
combine(s:app(A,B),[np:A,vp:B]).
combine(s:app(A,B),[s:A,s:B]).
combine(s:lam(B,imp(S,B)),[if:S]).
combine(s:lam(B,or(S,B)),[either:S]).
combine(s:S,[then:S]).
combine(s:S,[or:S]).

combine(sinv:app(B,app(A,C)),[av:A,np:B,vp:C]).

combine(q:app(A,B),[whnp:A,vp:B]).
combine(q:A,[sinv:A]).

combine(np:app(app(B,A),C),[np:A,coord:B,np:C]).
combine(np:A,[n:A]).
combine(np:app(A,B),[det:A,n:B]).
combine(np:A,[pn:A]).
combine(np:A,[qnp:A]).

combine(whnp:A,[qnp:A]).
combine(whnp:app(A,B),[det:A,n:B]).

combine(n:app(app(B,A),C),[n:A,coord:B,n:C]).
combine(n:app(A,B),[adj:A,n:B]).
combine(n:A,[noun:A]).
combine(n:app(B,A),[noun:A,nmod:B]).

combine(nmod:A,[pp:A]).
combine(nmod:A,[rc:A]).
combine(nmod:lam(P,app(A,app(B,P))),[pp:A,nmod:B]).

combine(vp_wo:A,[iv_wo:A]).

combine(vp:app(app(B,A),C),[vp:A,coord:B,vp:C]).
combine(vp:app(A,B),[av:A,vp:B]).
combine(vp:app(A,B),[cop:A,np:B]).
combine(vp:app(A,B),[cop:A,adj:B]).
combine(vp:A,[iv:A]).
combine(vp:app(A,B),[tv:A,np:B]).

combine(pp:app(A,B),[prep:A,np:B]).

combine(rc:app(A,B),[relpro:A,vp:B]).


%backwards ?

combine(bt:Converted,[bs:Sem]):- 
   betaConvert(Sem,Converted).

combine(bt:Converted,[bq:Sem]):- 
   betaConvert(Sem,Converted).

combine(bs:A,[bvp_wo:A]).
combine(bs:app(app(B,A),C),[bs:A,bcoord:B,bs:C]).
combine(bs:Sem,[bnp:lam(X,app(X,A)),bvp:lam(Y,F)]) :- 
	compose(Sem, B, [A]),
	compose(F,B,[Y]).
combine(bs:some(Z,and(F1,F2)),[bnp:lam(X,app(X,A)), bvp:lam(Y,some(Z,and(F1,F2)))]) :-
	compose(F1, _, [Z]),
	compose(F2, B, [Y,Z]).
	
	
combine(bs:app(A,B),[bs:A,bs:B]).
combine(bs:lam(B,imp(S,B)),[if:S]).
combine(bs:lam(B,or(S,B)),[either:S]).
combine(bs:S,[then:S]).
combine(bs:S,[or:S]).

combine(bsinv:app(B,app(A,C)),[bav:A,bnp:B,bvp:C]).

combine(bq:app(A,B),[bwhnp:A,bvp:B]).
combine(bq:A,[bsinv:A]).

combine(bnp:app(app(B,A),C),[bnp:A,bcoord:B,bnp:C]).
combine(bnp:app(A,B),[bdet:A,bn:B]).
combine(bnp:A,[bpn:A]).
combine(bnp:A,[bqnp:A]).
combine(bnp:lam(X,some(Y,and(F, app(X,Y)))), 
		[bdet:lam(Z, lam(X,some(Y,and(app(Z,Y),app(X,Y))))),
		 bn:lam(X,F)]) :-
	compose(F, _, [X]).

combine(bwhnp:A,[bqnp:A]).
combine(bwhnp:app(A,B),[bdet:A,bn:B]).

combine(bn:app(app(B,A),C),[bn:A,bcoord:B,bn:C]).
combine(bn:app(A,B),[badj:A,bn:B]).
combine(bn:A,[bnoun:A]).
combine(bn:app(B,A),[bnoun:A,bnmod:B]).

combine(bnmod:A,[bpp:A]).
combine(bnmod:A,[brc:A]).
combine(bnmod:lam(P,app(A,app(B,P))),[bpp:A,bnmod:B]).

combine(bvp_wo:A,[biv_wo:A]).

combine(bvp:app(app(B,A),C),[bvp:A,bcoord:B,bvp:C]).
combine(bvp:app(A,B),[bav:A,bvp:B]).
combine(bvp:app(A,B),[bcop:A,bnp:B]).
combine(bvp:app(A,B),[bcop:A,badj:B]).
combine(bvp:A,[biv:A]).
combine(bvp:app(A,B),[btv:A,bnp:B]).


combine(bpp:app(A,B),[bprep:A,bnp:B]).

combine(brc:app(A,B),[brelpro:A,bvp:B]).
