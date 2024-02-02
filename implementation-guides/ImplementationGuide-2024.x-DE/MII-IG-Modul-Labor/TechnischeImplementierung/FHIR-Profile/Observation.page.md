---
topic: Observation
---
## ObservationLab

ObservationLab bildet das Ergebnis einer einzelnen Laboruntersuchung ab.

Canonical: 
```https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab```

**Differential**

{{tree:medizininformatikinitiative-modullabor/observationlab, diff}}

<br>

| FHIR Element | Erklärung |
|--------------|-----------|
| Patient.id      | Must-support, jedoch optional        |
| Patient.meta       | Must-support, jedoch optional         |
| Observation.identifier       | Observation muss eindeutig identifizierbar sein, keine Vorgaben zur Kodierung, Präferenz: 'LOINC CODE_Befundnummer'|
| Observation.status       |  Finale & vorläufige Ergebnisse sind zulässig.        |
| Observation.category       |  LOINC & HL7 Code, weitere Codings erlaubt. <br>Keine Vorgabe für Laborgruppen/-bereiche, da hier keine standortübergreifende Abstimmung erfolgt. <br>Für Laborgruppen wird auf das ValueSet [Laborgruppe](https://simplifier.net/medizininformatikinitiative-modullabor/laborbereich) verwiesen. Dieses kann optional verwendet werden.|
| Observation.code       | IPS LOINC ValueSet         |
| Observation.subject       | Patientenbezug muss stets gegeben sein. |
| Observation.effective[x] | Zeitpunkt des Beginns der Untersuchung/Messung. Zeitpunkt sollte als dateTime kodiert werden, siehe mii-lab-1 Constraint. Der klinische Bezugszeitpunkt sollte jedoch entweder auf Basis von Specimen.collection.collected[x] oder DiagnosticReport.effective[x] ermittelt werden. Nur diese Werte entsprechen dem Zeitpunkt zumde die gemessene Eigenschaft im Probenmaterial (e.g. Analytkonzentration) mutmaßlich der Eigenschaft im Patienten entsprach. |
| Observation.valueQuantity      | UCUM Quantity - verpflichtend, keine abweichende Kodierung zugelassen.|
|Observation.valueCodeableConcept| Für die Kodierung von semi-quantitativen (0 - +++) Ergebnissen, siehe ValueSet 'Semi_quantitative_Laborergebnisse'|
| Observation.note      | Optionaler Text |
| Observation.method      | Kodierte Methode zur welche verwendet wurde zur Messung von Observation.value. Nur zu befüllen falls Methode nicht implizit in Observation.code enthalten ist (z.B. im LOINC Code). Es wird keine Codierungsempfehlung angegeben, da diese Information meist nicht strukturiert vorliegt in den Quellsystemen.|
| Observation.specimen      | Optionale Referenz, zukünftige Spezifikationen weiterer Kerndatensatzmodule können diesbezüglich Vorgaben ausgestalten.         |
| Observation.referenceRange      | Sollte - falls vorhanden - als high, low (SimpleQuantity) kodiert werden. Abweichend ansonsten per referenceRange.text.|
| Observation.component | Observation.hasMember ist im Bereich der klinischen Chemie zu bevorzugen (passendere Semantik). Element ist für die Harmonisierung mit Genetischen Befunden erlaubt. |

<br>

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| Observation.identifier      | Laborbefund.Laboruntersuchung.Identifikation         |
| Observation.status       | Laborbefund.Laboruntersuchung.Status         |
| Observation.category      | Laborbefund.Laboruntersuchung.Bereich |
| Observation.category      | Laborbefund.Laboruntersuchung.Gruppe|
| Observation.code      | Laborbefund.Laboruntersuchung.Laborparameter|
| Observation.code      | Laborbefund.Laboruntersuchung.Laborparameter|
| Observation.effective[x]       | Laborbefund.Laboruntersuchung.Untersuchungszeitpunkt|
| Observation.issued       | Laborbefund.Laboruntersuchung.Dokumentationsdatum | 
| Observation.valueQuantity       | Laborbefund.Laboruntersuchung.Messwert |
| Observation.interpretation       | Laborbefund.Laboruntersuchung.Interpretation |
| Observation.note       | Laborbefund.Laboruntersuchung.Kommentar |
| Observation.method       | Laborbefund.Laboruntersuchung.Untersuchungsmethode|
| Observation.referenceRange       | Laborbefund.Laboruntersuchung.Referenzbereich |

<br>

| Invarianten | Beschreibung | Expression |
|--------------|-----------|-----------|
| mii-lab-1      | Datetime must be at least to day | ($this as dateTime).toString().length() >= 8 |

---

**Snapshot**

{{tree:medizininformatikinitiative-modullabor/observationlab, snapshot}}

.
---

**Beispiele**

Beispiel (vollständig):

{{json:medizininformatikinitiative-modullabor/Observation-example}}

