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
* identifier MS
  * ^definition = "Kennung/en, unter der/denen diese Laboranforderung bekannt ist."
  * ^short = "Identifikator"
* insert Translation(identifier ^short, en-US, Identifier)
* insert Translation(identifier ^definition, en-US, [[Identifier/s by which this laboratory order is known.]])
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
//* identifier[anforderung].assigner only $MII-Reference
* status = #completed (exactly)
* status MS
  * ^short = "Status"
  * ^definition = "Der Status der Laboranforderung."
* insert Translation(status ^short, en-US, Status)
* insert Translation(status ^definition, en-US, completed)
* intent = #order (exactly)
* intent MS
  * ^short = "Intention"
  * ^definition = "Auftrag"
* insert Translation(intent ^short, en-US, Intent)
* insert Translation(intent ^definition, en-US, order)
* category 1..1 MS
  * ^short = "Kategorie"
  * ^definition = "Klassifikation als Laborauftrag"
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, en-US, Classification as laboratory order)
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains laboratory 1..1 MS
* category.coding[laboratory] = $observation-category#laboratory
* code 1.. MS
  * ^short = "Code"
  * ^definition = "Ein LOINC Code für den Laborparameter bzw. Labortest, der beauftragt wurde."
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, en-US, A LOINC code identifying the laboratory test that was ordered.)
* code from mii-vs-labor-order-codes (example)
* subject 1.. MS
//* subject only $MII-Reference
* encounter MS
  * ^short = "Fall oder Kontakt"
  * ^definition = "Fall oder Kontakt, bei dem der Laborauftrag gestellt wurde."
* insert Translation(encounter ^short, en-US, Encounter)
* insert Translation(encounter ^definition, en-US, Encounter during which the laboratory order was placed.)
* authoredOn 1.. MS
  * ^short = "Anforderungsdatum"
  * ^definition = "Das Datum, an dem der Laborauftrag ursprünglich verfasst wurde."
* insert Translation(authoredOn ^short, en-US, Authored on)
* insert Translation(authoredOn ^definition, en-US, The date and perhaps time when the laboratory order was initially written or authored on.)
* specimen MS
  * ^short = "Probenmaterial"
  * ^definition = "Eine oder mehrere Bioproben, die der Labortest verwendet."
* insert Translation(specimen ^short, en-US, Specimen)
* insert Translation(specimen ^definition, en-US, One or more specimens that are used by the laboratory test.)
* specimen.reference MS
* specimen.identifier MS
* bodySite ..0
* patientInstruction ..0