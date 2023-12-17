Profile: MII_PR_Labor_Laboranforderung
Parent: ServiceRequest
Id: mii-pr-labor-laboranforderung
Title: "MII PR Labor Laboranforderung"
Description: "Dieses Profil beschreibt eine Laboranforderung in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^purpose = "Dieses Profil beschreibt eine Laboranforderung in der Medizininformatik-Initiative."
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains anforderung 1..1 MS
* identifier[anforderung].type 1.. MS
* identifier[anforderung].type = $v2-0203#PLAC
* identifier[anforderung].type.coding MS
* identifier[anforderung].type.coding ^slicing.discriminator.type = #value
* identifier[anforderung].type.coding ^slicing.discriminator.path = "system"
* identifier[anforderung].type.coding ^slicing.rules = #open
* identifier[anforderung].type.coding contains placerv2 1..1 MS
* identifier[anforderung].type.coding[placerv2].system 1.. MS
* identifier[anforderung].type.coding[placerv2].system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[anforderung].type.coding[placerv2].code 1.. MS
* identifier[anforderung].type.coding[placerv2].code = #PLAC (exactly)
* identifier[anforderung].system 1.. MS
* identifier[anforderung].value 1.. MS
* identifier[anforderung].assigner 1.. MS
* identifier[anforderung].assigner only $MII-Reference
* status = #completed (exactly)
* status MS
* intent = #order (exactly)
* intent MS
* category 1..1 MS
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains laboratory 1..1 MS
* category.coding[laboratory] = $observation-category#laboratory
* code 1.. MS
* code from mii-vs-labor-order-codes (example)
* subject 1.. MS
* subject only $MII-Reference
* encounter MS
* authoredOn 1.. MS
* specimen MS
* specimen.reference MS
* specimen.identifier MS
* bodySite ..0
* patientInstruction ..0