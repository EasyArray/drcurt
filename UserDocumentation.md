_Internal User Documentation for Dr. Curt_

# Overview #

Dr. Curt is a program that diagnoses diseases

# Starting Dr Curt #

1. To load the Dr Curt program, in the directory containing the drcurt files, do

` pl -s doctorCurt.pl `

Alternatively, after starting Prolog, consult the Dr Curt file with

` ?- [doctorCurt]. `

2. To start a dialogue with Dr Curt after loading the program (or in case Dr Curt gets confused and fails), do

` ?- curt. `

# Interacting with Dr Curt #

A typical session with Dr Curt involves two phases. First, the user enters symptoms. Second, Dr Curt asks a series of yes or no questions to gain enough data to make a diagnosis.

## Free form phase ##

(_see known issues_)

The user may inform Dr Curt of afflictions by typing things like

` |: feel(i, chest_pain). `

After a statement like this, Dr Curt will ask if there are any other complaints. If the response is anything other than "no." Dr Curt will ask for another symptom. When the user types "no." to this prompt, Dr Curt will proceed to the second phase.

Note that if Dr Curt is not familiar with a symptom entered during this phase, he will fail to deliver a diagnosis.

## Follow-up phase ##

In this phase, Dr Curt will ask a series of yes or no questions. Any response other than "yes." is considered a negative.

# Dr Curt's use of English #

In the Follow-up phase, rather use canned responses, Dr Curt contextually generates questions to determine whether the user has particular symptoms.

Dr Curt's diagnoses are also generated from the semantic representation of Dr Curt's understanding of the user's condition.

# Guide to Symptoms/Diseases Handled #

Dr. Curt can diagnose thirteen different diseases and understands thirty-eight symptoms.  The diseases are Mononucleosis, Pertussis, Swine Flu, Decapitation, Strept Throat, Pulmonary Tuberculosis, Diarrhea, Tonsilitis, Chickenpox, Acid Reflux Disease, Common Cold, Malaria, and Yellow Fever.  Some symptoms include headache, heartburn, and coughing.  For example, the user would be able to input, "have(i, headache)" and Dr. Curt will respond with questions, or with a diagnosis if enough information is available.  Refer "Interacting with Dr Curt" to see the instructions on how to work Dr. Curt.  Refer to [LING 394 - Diagnosis Logic](https://spreadsheets0.google.com/ccc?key=tO_g2JN3UIAdpwcahRF7KjA&authkey=CPvml_EN&hl=en&authkey=CPvml_EN#gid=0) to see detailed information on the diseases covered in the database.

# Known issues #

The grammatical parsing behind driving Dr Curt is not yet robust enough to allow true natural language input in the "free-form" phase to be converted to uniformly consistent semantic representation. Some sentences would result in correct representations, but others would not, causing Dr Curt fail in confusion. to For this reason, this functionality has been omitted in the present release.

There appears to be a lexical error preventing the back-generation of the "yellow fever" diagnosis from the internal representation.