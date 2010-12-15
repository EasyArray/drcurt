:- module(diseases, [diseaseList/1]).

public(diseaseList).
public(disease).

diseaseList([

disease(mono, [fatigue, malaise, notHungry, hurt(head), hurt(throat), coughing, chills, fever, nausea, hurt(stomach)]),
disease(pertussis, [coughing, whoop, problem(urinary), problem(artery), hurt(ear), runnyNose]),
disease(swineFlu, [fever, coughing, hurt(throat), hurt(body), hurt(head), chills, fatigue]),
disease(decapitation, [hurt(head), paralysis, hurt(throat), beheaded]),
disease(strepThroat, [hurt(throat), problem(swallowing), fever, looksWeird(throat), sores])

]).