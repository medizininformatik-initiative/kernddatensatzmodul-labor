---
canonical: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab
capability: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/CapabilityStatement/metadata
resType: ServiceRequest
expand: 1
---
## {{link}}

Der ServiceRequestLab bildet den Auftrag für eine Laboruntersuchung ab.

### Metadaten

<fql output="table" headers="true">
from
	StructureDefinition
where
	url = %canonical
select
	Canonical: url, Status: status, Version: version, Basis: baseDefinition
</fql>

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree, buttons}}</tab>
  <tab title="Beschreibung">{{page:FQL-Beschreibung}}</tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

<br>

### Constraints/Invarianten
<fql headers="true">
from StructureDefinition where url = %canonical for differential.element.constraint select Name: key, Schweregrad: severity, Beschreibung: human, Ausdruck: expression
</fql>

### RestFul API

<tabs>
        <tab title="Interaktionen"> 
        {{page:FQL-Capability-REST}}
    </tab>
    <tab title="Suchparameter">
        {{page:FQL-Capability-Search}}
    </tab>
    <tab title="Operationen">
        {{page:FQL-Capability-Operations}}
    </tab>
    <tab title="Link">
    <!-- Achtung: Link muss noch händisch gesetzt werden, hier funktioniert der Platzhalter %capability nicht!-->
        {{link:https://www.medizininformatik-initiative.de/fhir/core/modul-labor/CapabilityStatement/metadata}}
    </tab>
</tabs>

### Mappings

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

**Beispiele**

Beispiel (vollständig):

{{json:fsh-generated/resources/ServiceRequest-mii-exa-labor-laboranforderung.json}}

