---
topic: Datenstzeinkl.Beschreibungen
---
## Datensätze inkl. Beschreibungen

Die offizielle und abgenommene Version des Informationsmodells für das Modul Person findet sich auf [ArtDecor](https://art-decor.org/art-decor/decor-datasets--mide-). Zur Vereinheitlichung der Repräsentation wurde das Informationsmodell zusätzlich als FHIR Logical Model abgebildet:

{{tree:fsh-generated/resources/StructureDefinition-mii-lm-labor.json}}

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

| Logischer Datensatz | Beschreibung |
|--------------|-----------|
| Laborbefund.Identifikation     |  Identifikator des Laborbefunds        |
| Laborbefund.Status     |  Status des Laborbefunds       |
| Laborbefund.KlinischesBezugsdatum     |  Zeitpunkt, zu dem die gemessene Eigenschaft im Probenmaterial (e.g. Analytkonzentration) mutmaßlich der Eigenschaft im Patienten entsprach. Wenn der Zeitpunkt der Probenentnahme angegeben ist, wird dieses Datum verwendet. Andernfalls wird behelfsmäßig der Probeneingang im Labor gewählt. Das "Gültigkeitsdatum" ist wichtig, um verschiedene Analysen im Zeitverlauf sortieren zu können.       |
| Laborbefund.KlinischesBezugszeitpunkt | Identisch zu Laborbefund.KlinischesBezugsdatum, jedoch konnte im FHIR Logical Model der Name "Laborbefund.Klinisches/r Bezugsdatum/-zeitpunkt nicht abgebildelt werden (Constraint in ElementDefinition.path erlaubt '/' nicht), sodass das Elemente aufgeteilt werden musste."|
| Laborbefund.Dokumentationsdatum     |  Zeitpunkt, an dem der Laborbefund dokumentiert (verifiziert und freigegeben) wurde. |

<br><br>

| Logischer Datensatz | Beschreibung |
|--------------|-----------|
| Probenmaterial.Identifikation     |   ID der Probe     |
| Probenmaterial.Ent-Abnahmezeitpunkt     |  Zeitpunkt der Ent-/Abnahme der Probe|
| Probenmaterial.Laboreingangszeitpunkt	     |  Zeitpunkt des Eingangs der Probe im Labor|
| Probenmaterial.Probenart     | Art der Probe |
| Probenmaterial.Koerperstelle     | Lokalisation der Körperstelle am Patienten, an der die Probe entnommen / abgenommen wurde |
| Probenmaterial.Kommentar     | Freitextlicher Kommentar zur Probe |

<br><br>

| Logischer Datensatz | Beschreibung |
|--------------|-----------|
| Laboruntersuchung.Code    | Code des Laborparameters (LOINC) |
| Laboruntersuchung.Identifikation     |  Identifikator der Untersuchung     |
| Laboruntersuchung.Status     |  Status der Laboruntersuchung (durchgeführt, offen, storniert)|
| Laboruntersuchung.Bereich     | Laboruntersuchungen werden in diagnostische Fachbereiche gruppiert, z.B. Hämatologie, Mikrobiologie, Pathologie etc.|
| Laboruntersuchung.Bereich.KodeDesLaborbereiches     | Kode des Laborbereichs (LOINC)|
| Laboruntersuchung.Bereich.BezeichungDesLaborbereiches     | Textuelle Beschreibung des Laborbereiches|
| Laboruntersuchung.Gruppe     | Innerhalb der Fachbereiche werden Laboruntersuchungen in Gruppen zusammengefasst, z.B. gibt es in der Hämatologie die Gruppen kleines Blutbild, Differentialblutbild, großes Blutbild, Leberwerte, Nierenwerte etc.|
| Laboruntersuchung.Gruppe.KodeDerLaborgruppe     | Kode der Laborgruppe (Frei wählbar)|
| Laboruntersuchung.Gruppe.BezeichnungDerLaborgruppe     | Textuelle Beschreibung de Laborgruppe|
| Laboruntersuchung.Laborparameter     | in der Laboruntersuchung analysierter/gemessener Laborparameter |
| Laboruntersuchung.Laborparameter.Code    | Bezeichnung des Laborparameters |
| Laboruntersuchung.Untersuchungszeitpunkt     |  Zeitpunkt des Beginns der Untersuchung |
| Laboruntersuchung.Dokumentationsdatum     | Zeitpunkt, an dem das Ergebnis der Laboruntersuchung dokumentiert wurde|
| Laboruntersuchung.Messwert     | Wert der Analyse|
| Laboruntersuchung.Interpretation     | Interpretation des Messwerts (Kennzeichen)|
| Laboruntersuchung.Kommentar     |  Kommentierung der Laboruntersuchung|
| Laboruntersuchung.Untersuchungsmethode     |  konkrete Untersuchungsmethode, wenn ein verwendeter LOINC-Code für den Laborparameter keine Methode enthält|
| Laboruntersuchung.Referenzbereich     |  Referenzbereich der Analyse.|

<br><br>


| Logischer Datensatz | Beschreibung |
|--------------|-----------|
| Laboranforderung.Identifikation     |  Identifikator der Laboranforderung|
| Laboranforderung.Status     | Status der Laboranforderung|
| Laboranforderung.Anforderungsdatum     | Beschreibt das Datum, zu dem die Laboranforderung erstellt wurde.|
