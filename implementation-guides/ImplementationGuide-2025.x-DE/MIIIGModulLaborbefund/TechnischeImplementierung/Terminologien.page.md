---
topic: Terminologien
---
## Terminologien

### LOINC Überblick
[LOINC](https://www.loinc.org) (Logical Observation Identifiers Names and Codes) ist ein internationales vom Regenstrief Institute herausgegebenes System zur eindeutigen Identifizierung und Kodierung von medizinischen Beobachtungen, insbesondere von Laboruntersuchungen (siehe auch [BfArM](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/LOINC-UCUM/LOINC-und-RELMA/_node.html)). Für eine Einführung zum Thema LOINC existiert ein Video in der [MII-Academy](https://www.medizininformatik-initiative.de/de/konsortien/mii-academy).

### LOINC–Kodierung: LOINC-subset MII-300

Beim subset MII_TOP_300_LOINC 2018-08-08 handelt es sich um eine Übersicht der 300 am häufigsten bestimmten und in die DIZ ausgeleiteten Laboruntersuchungen der damals 18 teilnehmenden Standorte. 
Es handelt sich somit um eine deskriptive Statistik der verwendeten LOINC Codes für die 300 häufigsten LOINC-Gruppen (also 300 verschiedene Laboruntersuchungen und somit deutlich mehr LOINCs). Diese 300 LOINC-Gruppen gelten als Vorgabe für die DIZ, welche Laboruntersuchungen mit LOINC kodiert werden sollen, wenn für diese Laboruntersuchungen Daten am Standort erhoben werden.
Eine Nutzung als Kodierhilfe und Übersetzungstabelle ist allerdings nur sehr eingeschränkt möglich. Nach Einheitenumrechnung ist eine Äquivalenz der Wertelage von Laboruntersuchungen verschiedener Standorte bei LOINCs einer LOINC-Gruppe und oder bei gleichem LOINC zwar meistens gegeben, ist aber zum Teil deutlich eingeschränkt und kann somit nicht vorausgesetzt werden.

### LOINC–Kodierung am Standort

LOINC-Kodierungen sollten durch die Labore selbst oder in enger Zusammenarbeit mit den Laborstandorten so passend und spezifisch wie möglich anhand der Vorgaben zur LOINC-Kodierung (Regenstriefs Institut und LOINC Committee) ausgewählt werden. Dafür stehen alle LOINC-Terme aus dem Laborbereich zur Verfügung. Für eine qualitativ zufriedenstellende Kodierung sind sowohl Kenntnisse der lokalen Laboruntersuchungen als auch Kenntnisse der [LOINC-Kodierungsempfehlungen](https://loinc.org/kb/users-guide/) notwendig.  

Als Kodierhilfe stehen zum Beispiel folgende Tools zur Verfügung:  

-	LOINC search: Browser-basierte LOINC-Suche mit exportfunktionen auf der [LOINC-website](https://loinc.org/search/) nach kostenloser Anmeldung
-	[RELMA - Regenstrief LOINC Mapping Assistant](https://loinc.org/kb/relma/overview/): kostenloses Tool zum Mapping lokaler Codes auf LOINC
-	die [LOINC-Datenbank](https://loinc.org/downloads/) im .csv-Format
-	MIRACUM [Mapper und LabVisualizer](https://www.miracum.org/das-konsortium/datenintegrationszentren/miracolix-tools/#collapse_5)
-	Kommerzielle Anbieter

Wenn sich kein passender Term finden lässt, sollte in diesen Fällen ein Änderungswunsch beim Regenstrief-Institut in Rücksprache mit dem BfArM angestoßen werden (BfArM - Änderungswünsche, Change Requests).
Bezüglich der Kodierung sollten mindestens die lokalen Kodes hinterlegt werden, um eine LOINC-Nachkodierung zu ermöglichen. LOINCs sind als internationales System standortübergreifend einheitlich interpretierbar, aber nur die lokalen Codes können mit hoher Sicherheit eineindeutig der lokal verwendeten Untersuchungsmethode/ Assay zugeordnet werden und somit ggf. für Nachkodierungen genutzt werden und in solchen Fällen die Nachvollziehbarkeit absichern. Falls möglich und sinnvoll können in diesen Fällen auch weitere standardisierte System einbezogen werden. LOINC-Zusammenführung bei multizentrischer Datennutzung:Die LOINC-Auswahl bei multizentrischen Laborwertabfragen kann für wenige Standorte und wenige Laborparameter manuell mit entsprechender Expertise des LOINC-Systems gelöst werden.
Automatisierte/teilautomatisierte/skalierbare Lösungen müssen in standartiserter und replizierbarer Weise noch etabliert werden.

### Einheiten und UCUM

Die Maßeinheit muss zwingend in [UCUM-Einheiten](https://unitsofmeasure.org/ucum) angegeben werden, damit sich die Ergebnisse ineinander umrechnen lassen. Mittels [Validatoren](https://ucum.nlm.nih.gov/ucum-lhc/demo.html) sollte sichergestellt werden, dass die verwendeten Einheiten zulässig sind.



-----

### ValueSets

Zusätzlich zu internationalen Terminologien werden durch das Modul LABOR folgende eigene ValueSets definiert. Es sei darauf hingewiesen, dass alle ValueSets keine Expansion beinhalten. Diese muss vor der Verwendung mittels eines Terminologieservers durchgeführt werden.

Canoncial: ```https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/Laborbereich```

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/Laborbereich}}

-----

Canoncial: ```https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/Laborergebnis-semiquantitativ```

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/Laborergebnis-semiquantitativ}}

-----

Canoncial: ```https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/QuelleKlinischesBezugsdatum```

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/QuelleKlinischesBezugsdatum}}

-----

Canoncial: ```https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/ValueSetOrderCodes```

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/ValueSetOrderCodes}}
