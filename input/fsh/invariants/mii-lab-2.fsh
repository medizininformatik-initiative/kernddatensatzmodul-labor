Invariant: mii-lab-2
Description: "Falls kein Laborwert verfügbar ist, muss eine dataAbsentReason angegeben werden"
Severity: #error
Expression: "value.exists().not() implies dataAbsentReason.exists()"