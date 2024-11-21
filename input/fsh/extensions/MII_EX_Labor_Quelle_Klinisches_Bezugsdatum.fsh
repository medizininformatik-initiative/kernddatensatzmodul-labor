Extension: MII_EX_Labor_Quelle_Klinisches_Bezugsdatum
Id: mii-ex-labor-quelle-klinisches-bezugsdatum
Title: "MII EX Labor Quelle Klinisches Bezugsdatum"
Description: "Quelle des klinischen Bezugsdatums"
Context: "Observation.effective.ofType(dateTime)", "DiagnosticReport.effective.ofType(dateTime)"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* insert PR_CS_VS_Version
* insert Publisher
* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum" (exactly)
* value[x] 1..
* value[x] only Coding
* value[x] from mii-vs-labor-quelle-klinisches-bezugsdatum (required)
* valueCoding.system 1..
* valueCoding.code 1..