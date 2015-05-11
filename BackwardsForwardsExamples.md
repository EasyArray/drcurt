There are four (4) predicates to use:

1) lambda:s which takes a declarative sentence string as an input and outputs the corresponding logical form.

2) lambda:bt which takes the logical form of a declarative  sentence as an input and outputs the corresponding sentence string.

3) lambda:q which takes a question sentence as an input and outputs the corresponding logical form.

4) lambda:btq which takes the logical form of a question sentence as an input and outputs the corresponding sentence string.

Each predicate has 3 parts (i.e. lambda:x([sem:Sem],[sentence,of,some,sort],[.md](.md))).

**Examples**

Going from declarative to logic:

```
lambda:s([coord:no,sem:Sem],[i,have,a,headache],[]).
Sem = app(lam(_G475,app(_G475,i)),app(lam(_G610,lam(_G613,app(_G610,lam(_G619,have(_G613,_G619))))),app(lam(_G748,lam(_G751,some(_G754,and(app(_G748,_G754),app(_G751,_G754))))),lam(_G880,headache(_G880)))))
```

Going from logic to declarative:
```
lambda:bt([sem:app(lam(_G475,app(_G475,i)),app(lam(_G610,lam(_G613,app(_G610,lam(_G619,have(_G613,_G619))))),app(lam(_G748,lam(_G751,some(_G754,and(app(_G748,_G754),app(_G751,_G754))))),lam(_G880,headache(_G880)))))],P,[]).
P = [i,have,a,headache] .
```

Going from questions to logic:
```
lambda:q([sem:Sem],[do,you,have,bloody,stools],[]).
Sem = app(lam(_G574,app(_G574,you)),app(lam(_G457,lam(_G460,app(_G457,_G460))),app(lam(_G709,lam(_G712,app(_G709,lam(_G718,have(_G712,_G718))))),lam(_G847,app(_G847,bloody_stools))))) .
```

Going from logic to questions:
```
lambda:btq([sem:app(lam(_G574,app(_G574,you)),app(lam(_G457,lam(_G460,app(_G457,_G460))),app(lam(_G709,lam(_G712,app(_G709,lam(_G718,have(_G712,_G718))))),lam(_G847,app(_G847,bloody_stools))))) ],P,[]).
P = [do,you,have,bloody,stools] .
```