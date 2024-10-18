Profile: MII_PR_Labor_Laboranforderung
Parent: ServiceRequest
Id: mii-pr-labor-laboranforderung
Title: "MII PR Labor Laboranforderung"
Description: "Dieses Profil beschreibt eine Laboranforderung in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ServiceRequestLab"
* insert Translation(^title, de-DE, Laboranforderung)
* insert Translation(^title, en-US, Laboratory order)
* insert Translation(^description, de-DE, Auftrag für eine Laboruntersuchung)
* insert Translation(^description, en-US, Order for a laboratory test)
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^purpose = "Dieses Profil beschreibt eine Laboranforderung in der Medizininformatik-Initiative."
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* insert Translation(identifier ^short, de-DE, Identifikator)
* insert Translation(identifier ^short, en-US, Identifier)
* insert Translation(identifier ^definition, de-DE, Kennung/en\, unter der/denen diese Laboranforderung bekannt ist.)
* insert Translation(identifier ^definition, en-US, Identifier/s by which this laboratory order is known.)
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
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, Status)
* insert Translation(status ^definition, de-DE, abgeschlossen)
* insert Translation(status ^definition, en-US, completed)
* intent = #order (exactly)
* intent MS
* insert Translation(intent ^short, de-DE, Intention)
* insert Translation(intent ^short, en-US, Intent)
* insert Translation(intent ^definition, de-DE, Auftrag)
* insert Translation(intent ^definition, en-US, order)
* category 1..1 MS
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, de-DE, Klassifikation als Laborauftrag)
* insert Translation(category ^definition, en-US, Classification as laboratory order)
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains laboratory 1..1 MS
* category.coding[laboratory] = $observation-category#laboratory
* code 1.. MS
* insert Translation(code ^short, de-DE, Code)
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, de-DE, Ein LOINC Code für den Laborparameter bzw. Labortest\, der beauftragt wurde.)
* insert Translation(code ^definition, en-US, A LOINC code identifying the laboratory test that was ordered.)
* code from mii-vs-labor-order-codes (example)
* subject 1.. MS
* subject only $MII-Reference
* encounter MS
* insert Translation(encounter ^short, de-DE, Fall oder Kontakt)
* insert Translation(encounter ^short, en-US, Encounter)
* insert Translation(encounter ^definition, de-DE, Fall oder Kontakt\, bei dem der Laborauftrag gestellt wurde.)
* insert Translation(encounter ^definition, en-US, Encounter during which the laboratory order was placed.)
* authoredOn 1.. MS
* insert Translation(authoredOn ^short, de-DE, Anforderungsdatum)
* insert Translation(authoredOn ^short, en-US, Authored on)
* insert Translation(authoredOn ^definition, de-DE, Das Datum\, an dem der Laborauftrag ursprünglich verfasst wurde.)
* insert Translation(authoredOn ^definition, en-US, The date and perhaps time when the laboratory order was initially written or authored on.)
* specimen MS
* insert Translation(specimen ^short, de-DE, Probenmaterial)
* insert Translation(specimen ^short, en-US, Specimen)
* insert Translation(specimen ^definition, de-DE, Eine oder mehrere Bioproben\, die der Labortest verwendet.)
* insert Translation(specimen ^definition, en-US, One or more specimens that are used by the laboratory test.)
* specimen.reference MS
* specimen.identifier MS
* bodySite ..0
* patientInstruction ..0