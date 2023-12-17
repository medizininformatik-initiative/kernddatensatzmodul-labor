Profile: MII_PR_Labor_Laboruntersuchung
Parent: Observation
Id: mii-pr-labor-laboruntersuchung
Title: "MII PR Labor Laboruntersuchung"
Description: "Dieses Profil beschreibt eine Laborergebnis in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^purpose = "Dieses Profil beschreibt eine Laborergebnis in der Medizininformatik-Initiative."
* obeys mii-lab-2
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains analyseBefundCode 1..1 MS
* identifier[analyseBefundCode].type 1.. MS
* identifier[analyseBefundCode].type = $v2-0203#OBI
* identifier[analyseBefundCode].type.coding MS
* identifier[analyseBefundCode].type.coding ^slicing.discriminator.type = #value
* identifier[analyseBefundCode].type.coding ^slicing.discriminator.path = "system"
* identifier[analyseBefundCode].type.coding ^slicing.rules = #open
* identifier[analyseBefundCode].type.coding contains observationInstanceV2 1..1 MS
* identifier[analyseBefundCode].type.coding[observationInstanceV2].system 1.. MS
* identifier[analyseBefundCode].type.coding[observationInstanceV2].system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[analyseBefundCode].type.coding[observationInstanceV2].code 1.. MS
* identifier[analyseBefundCode].type.coding[observationInstanceV2].code = #OBI (exactly)
* identifier[analyseBefundCode].system 1.. MS
* identifier[analyseBefundCode].value 1.. MS
* identifier[analyseBefundCode].assigner 1.. MS
* identifier[analyseBefundCode].assigner only $MII-Reference
* status MS
* category 1.. MS
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    loinc-observation 1..1 MS and
    observation-category 1..1 MS
* category.coding[loinc-observation] = $loinc#26436-6
* category.coding[observation-category] = $observation-category#laboratory
* code MS
* code from $ResultsLabObservationUvIps (preferred)
* code ^binding.description = "Intensional Value Set Definition: LOINC {  {    STATUS in {ACTIVE}    CLASSTYPE in {1}    CLASS exclude {CHALSKIN, H&P.HX.LAB, H&P.HX, NR STATS, PATH.PROTOCOLS.*}  } }"
* subject 1.. MS
* subject only $MII-Reference
* encounter MS
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] obeys mii-lab-1
* effectiveDateTime.extension contains mii-ex-labor-quelle-klinisches-bezugsdatum named QuelleKlinischesBezugsdatum 0..1 MS
* issued MS
* value[x] only Quantity or CodeableConcept or Range or Ratio
* value[x] MS
* valueQuantity MS
* valueQuantity.extension contains $pq-translation-ex named pqTranslation 0..*
* valueQuantity.value 1.. MS
* valueQuantity.unit 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1.. MS
* valueQuantity.code ^comment = "The mandatory system is UCUM."
* valueCodeableConcept MS
* valueCodeableConcept.coding 1.. MS
* valueCodeableConcept.coding.system 1.. MS
* valueCodeableConcept.coding.code 1.. MS
* dataAbsentReason MS
* interpretation MS
* note MS
* bodySite ..0
* method MS
* specimen MS
* specimen.reference MS
* specimen.identifier MS
* device MS
* referenceRange MS