Although the grammar is not yet implemented, curt can be tested in its grammar-less state.

Compile the doctorCurt.pl file, and run the program by typing in `curt.`

Curt will ask you to give him a symptom. At the present time, this must be entered in as a logical form of a symptom. For example, enter in `beheaded.`

Curt will ask you for more symptoms. You should type in `no.` Curt should then diagnose that you are suffering from `decapitation`.

Alternatively, you could enter in a different symptom and test the decision tree. When Curt asks for a symptom as the program starts, enter in `chills.` (Note that there is presently a bug within the diagnosis logic, Curt will immediately ask the user if he or she suffers from `chills`)

The user can then test the decision tree and will be diagnosed with a condition when it is finished.