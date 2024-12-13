---
canonical: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab
capability: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/CapabilityStatement/metadata
resType: DiagnosticReport
expand: 1
---
## {{link}}

Der DiagnosticReportLab bildet einen Laborbefund ab.

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
  <tab title="Beschreibung"> 
    {{page:implementation-guides/ImplementationGuide-2024.x-DE/MII-IG-Modul-Labor/TechnischeImplementierung/FHIR-Profile/FQL-Beschreibung.page.md}}
  </tab>
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
        {{page:implementation-guides/ImplementationGuide-2024.x-DE/MII-IG-Modul-Labor/TechnischeImplementierung/FHIR-Profile/FQL-Capability-REST.page.md}}
    </tab>
    <tab title="Suchparameter">
        {{page:implementation-guides/ImplementationGuide-2024.x-DE/MII-IG-Modul-Labor/TechnischeImplementierung/FHIR-Profile/FQL-Capability-Search.page.md}}
    </tab>
    <tab title="Operationen">
        {{page:implementation-guides/ImplementationGuide-2024.x-DE/MII-IG-Modul-Labor/TechnischeImplementierung/FHIR-Profile/FQL-Capability-Operations.page.md}}
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
| DiagnosticReport.identifier       | Befundnummer, keine Vorgaben zur Kodierung|
| DiagnosticReport.basedOn       | Bezug zum initialen ServiceRequest muss stets gegeben sein|
| DiagnosticReport.status       | Keine Vorgaben, vorläufige Befunde sind erlaubt|
| DiagnosticReport.category       | Verpflichtende LOINC & HL7 v2 Codes, weitere Codings erlaubt|
| DiagnosticReport.subject       | Bezug zum Patienten muss stets gegeben sein|
| DiagnosticReport.effective[x]       | Zeitpunkt der Probenentnahme (Zeitpunkt zu dem die gemessene Eigenschaft im Probenmaterial (e.g. Analytkonzentration) mutmaßlich der Eigenschaft im Patienten entsprach).  Falls nicht dokumentiert, Laboreingangszeitpunkt als am nächsten liegender Zeitpunkt. Muss identisch sein zu Observation.effective[x].extension:KlinischerBezugszeitpunkt. Die Information wird sowohl im DiagnosticReport als auch in der Observation gespeichert um anschließend Datenauswertungen zu erleichtern. Per Extension 'ExtensionQuelleKlinischesBezugsdatum' kann angegeben werden welches der oben genannten Daten verwendet wird. |
| DiagnosticReport.issued       | Zeitpunkt der Freigabe des Befundes|
| DiagnosticReport.specimen       | Optionale Referenz, zukünftige Spezifikationen weiterer Kerndatensatzmodule können diesbezüglich Vorgaben ausgestalten.|
| DiagnosticReport.result       | DiagnosticReport sollte min. ein Ergebnis in Form eines Laborergebnisses enthalten|
| DiagnosticReport.conclusion       | Optional, Textuelle Beschreibung der abschließenden ärztlichen Bewertung des Befundes|

<br>

| FHIR Element | Logischer Datensatz |
|--------------|-----------|
| DiagnosticReport.identifier       | Laborbefund.Identifikation        |
| DiagnosticReport.status       | Laborbefund.Status        |
| DiagnosticReport.effective[x]       |Laborbefund.KlinischesBezugsdatum |
| DiagnosticReport.effective[x]       |Laborbefund.KlinischerBezugszeitpunkt |
| DiagnosticReport.issued       |Laborbefund.Dokumentationsdatum|
| DiagnosticReport.specimen       |Laborbefund.Probenmaterial|

---

**Beispiele**

Beispiel (vollständig):

{{json:mii-exa-labor-laborbefund}}


