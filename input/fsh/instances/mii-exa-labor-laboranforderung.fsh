Instance: mii-exa-labor-laboranforderung
InstanceOf: MII_PR_Labor_Laboranforderung
Usage: #example
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].system = "https://exmple.org/fhir/sid/anforderung-lab-identifier"
* identifier[anforderung].value = "1234567890"
* identifier[anforderung].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[anforderung].assigner.identifier.value = "DIZ-ID"
* status = #completed
* intent = #order
* category = $observation-category#laboratory
* code = http://exmple.org/fhir/CodeSystem/LabTests#GroßesBlutbild
* subject.reference = "Patient/111"
* authoredOn = "2018-11-20T10:28:00+01:00"
* specimen.reference = "Specimen/4999"