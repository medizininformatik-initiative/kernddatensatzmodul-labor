---
topic: ZeitpunkteImLabor
---
## Zeitpunkte im Labor

In der Beschreibung des Moduls, siehe {{pagelink:BeschreibungModul}}, wird darauf eingegangen welche Zeitpunkte im Verlauf der Laboranforderung und -untersuchung dokumentiert werden.
Diese werden wie folgt im FHIR-Modell abgebildet:

| Zeitpunkt | FHIR-Mapping |
|--------------|-----------|
| Anforderungszeitpunkt | ServiceRequest.authoredOn |
| Laboreingangszeitpunkt | Specimen.receivedTime |
| Entnahmezeitpunkt | Specimen.collected[x] |
| Untersuchungszeitpunkt | Observation.effectiveDateTime |
| Klinische Bezugszeitpunkt des Laborberichts | DiagnosticReport.effective[x] & Observation.effective[x].extension[QuelleKlinischesBezugsdatum] |
| Dokumentationsdatum | DiagnosticReport.issued |