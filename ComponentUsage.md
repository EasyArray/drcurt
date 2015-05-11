# Grammar #

example usage:


```
$ pl -s lambda.pl

?- lambda:t([sem:Sem],[i,walk],[]).

Sem = app(lam(_G476, app(_G476, i)), lam(_G608, walk(_G608))) .

?- lambda:t([sem:app(lam(_G476, app(_G476, i)), lam(_G608, walk(_G608)))], S, []).

S = [i, walk].
```