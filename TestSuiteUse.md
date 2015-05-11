# Introduction #

There are three test suites included once the file ```
backwardsForwards.pl``` is loaded:


1) lambdaTestSuite

--> runs sentences to logic and outputs "True" and the logical representation of the semantics, or "False" if the sentence input does not work with the Grammar

2) logicTestSuite

--> runs the logical representations of all the DECLARATIVE sentences and outputs "True" and the sentence if logic -> sentence works

3) logicTestSuiteq

--> runs the logical representations of all the QUESTIONS
n.b. there remains some small problem with the logic test suite for questions

# Details #

USER DOCS:

In order to run (1),

a) load: ```
backwardsForwards.pl```

b) do: ```
lambdaTestSuite.```

c) all of the resulting semantics of the sentences and questions we have working (however messy) should appear

In order to run (2),

a) load: ```
backwardsForwards.pl```

b) do: ```
logicTestSuite.```

c) all of the resulting sentences that work in the backwards predicates (logic -> language) should appear

In order to run (3),

Theoretically,

a) load: ```
backwardsForwards.pl```

b) do: ```
logicTestSuiteq.```

c) ...

However:

The questions and sentences in the logic test suite seemed to work differently -- questions were turning up odd errors, so the files have been separated. The sentences work; the questions test suite currently does not work, though it's close.

Currently, all of the output of <b>logicTestSuiteq</b> returns "False" -- which is not actually the case.

In order to run backwards questions to test them, see the "Backwards Forwards" directions Wiki page.


# Behind the Scenes #

```
lambdaTestSuite:```

Originally, the lambda test suite ran the t() predicate for all of the sentences, which are stored in ```
sentenceTestSuite2.pl```. That is where the predicate <b>sentence/2</b> is defined. sentence takes two arguments: the list of the elements in the sentence, and a number. The number is irrelevant to our project -- it is for the <i>Blackburn & Bos</i> hole semantics, but we decided not to rewrite the predicate because it worked.

The predicate <b>sentenceCheck</b> is defined in ```
lambda.pl```. This checks whether or not a sentence is successfully translated to logic.

Because of the difference between questions and declarative sentences, we found that going all the way up to <b>t()</b> would not work to check for sentence -> logic, so the current <b>sentenceCheck</b> checks whether <b>s()</b> functions true, OR whether <b>q()</b> functions true. If either is true, the variable <b>TrueOrFalse</b> is assigned the value 1, which then causes the test suite predicate to output "True" and the semantics. If neither <b>s()</b> nor <b>q()</b> succeeds, <b>TrueOrFalse</b> is assigned 0 and the test suite outputs "False."



```
logicTestSuite:```

The semantics input into the test suite are stored in logicTestSuite.pl. These were gleaned by running ```
lambdaTestSuite``` forward and extracting everything after the colons in "The semantics are: ", and placing that within the <b>semantics/2</b> predicate.

<b>semantics/2</b> is based upon the <b>sentence/2</b> predicate and functions the same way, except for the logical representation rather than the list of words in the sentence.

<b>logicCheck</b> is based upon <b>sentenceCheck</b>, and checks whether <b>bt()</b> works for each sentence representation stored in ```
logicTestSuite.pl``` works for logic -> language.


```
logicTestSuiteq:```

<b>logicCheckQuestions</b> is based upon <b>logicCheck</b>, and theoretically checks whether <b>btq()</b> works for each question sentence representation stored in ```
logicTestSuiteq.pl```. Currently each outputs false, which is due to some communication error between files. There is probably a way to combine the <b>logicTestSuite-s</b>, but this way there is one that functions fully as a test suite.