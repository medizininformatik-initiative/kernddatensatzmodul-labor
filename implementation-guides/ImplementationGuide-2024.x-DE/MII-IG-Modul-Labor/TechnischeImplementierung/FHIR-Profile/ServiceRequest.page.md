---
topic: ServiceRequest-duplicate-2
---
### ServiceRequestLab

Der ServiceRequestLab bildet den Auftrag für eine Laboruntersuchung ab.

Canonical: 
```https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab```

**Differential**

{{tree:medizininformatikinitiative-modullabor/servicerequestlab, diff}}

<br>

| FHIR Element | Erklärung |
|--------------|-----------|
| Patient.id      | Must-support, jedoch optional        |
| Patient.meta       | Must-support, jedoch optional         |
| ServiceRequest.identifier       |  Anforderungsnummer der gewünschten Untersuchung, min. eindeutig durch System und Value identifiziert. Dient zur Verknüfung des Labor-Systems und dem anfordernden System.|
| ServiceRequest.status       | Fixed value, da nur finale Anforderungen abgebildet werden sollen. |
| ServiceRequest.intent       | Fixed value, ServiceRequest repräsentiert immer die Anforderung der Diagnostik.|
| ServiceRequest.category       | Fixed Laboratory (HL7 v2) Coding Slice, weitere Codings erlaubt.|
| ServiceRequest.code       | CodeableConcept, keine Einschränkungen. Falls angeforderte Laborparameter nicht kodiert vorliegen -> CodeableConcept.text |
| ServiceRequest.subject       |  Bezug zum Patienten muss stets gegeben sein|
| ServiceRequest.authoredOn       |  Erstelldatum der Anforderung, falls nicht vorhanden Eingangsdatum der Anforderung        |
| ServiceRequest.specimen       | Optionale Referenz, zukünftige Spezifikationen weiterer Kerndatensatzmodule können diesbezüglich Vorgaben ausgestalten.|

<br>

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| ServiceRequest.identifier       |  Laborbefund.Laboranforderung.Identifikation        |
| ServiceRequest.status       | Laborbefund.Laboranforderung.Status         |
| ServiceRequest.code       | Laborbefund.Laboranforderung.Laborparameter         |
| ServiceRequest.authoredOn       |  Laborbefund.Laboranforderung.Anforderungsdatum          |
| ServiceRequest.specimen       |  Laborbefund.Laboranforderung.Probenmaterial         |

---

**Snapshot**

{{tree:medizininformatikinitiative-modullabor/servicerequestlab, snapshot}}


---

**Beispiele**

Beispiel (vollständig):

{{json:medizininformatikinitiative-modullabor/ServiceRequest-example}}

