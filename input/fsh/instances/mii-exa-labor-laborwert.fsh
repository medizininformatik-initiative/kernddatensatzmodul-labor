Instance: mii-exa-labor-laborwert
InstanceOf: MII_PR_Labor_Laboruntersuchung
Usage: #example
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].system = "https://exmaple.org/fhir/sid/test-lab-results"
* identifier[analyseBefundCode].value = "59826-8_1234567890"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category.coding[loinc-observation] = $loinc#26436-6 "Laboratory studies (set)"
* category.coding[observation-category] = $observation-category#laboratory "Laboratory"
* category.coding[2] = http://exmple.org/fhir/sid/Laborgruppe#Niere/Elektrolyte
* code = $loinc#59826-8 "Creatinine [Moles/volume] in Blood"
* code.text = "Kreatinin"
* subject.reference = "Patient/111"
* encounter.reference = "Encounter/555"
* effectiveDateTime = "2018-11-20T12:05:00+01:00"
* effectiveDateTime.extension.url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/QuelleKlinischesBezugsdatum"
* effectiveDateTime.extension.valueCoding = $sct#399445004 "Specimen collection date (observable entity)"
* issued = "2018-03-11T10:28:00+01:00"
* performer.reference = "Organization/7772"
* performer.display = "Zentrallabor des IKCL"
* valueQuantity = 72 'umol/L' "µmol/l"
* interpretation = $v3-ObservationInterpretation#N
* referenceRange.low.value = 72
* referenceRange.high.value = 127
* referenceRange.type = $referencerange-meaning#normal "Normal Range"