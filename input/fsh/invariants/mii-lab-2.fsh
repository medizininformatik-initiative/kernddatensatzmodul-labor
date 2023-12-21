Invariant: mii-lab-2
Description: "Falls kein Laborwert verfügbar ist, muss eine dataAbsentReason angegeben werden"
Severity: #error
Expression: "hasMember.exists() xor value.exists().not() implies dataAbsentReason.exists()"