Profile: MII_PR_Labor_Laborbefund
Parent: DiagnosticReport
Id: mii-pr-labor-laborbefund
Title: "MII PR Labor Laborbefund"
Description: "Dieses Profil beschreibt einen Laborbefund in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^experimental = false
* ^purpose = "Dieses Profil beschreibt einen Laborbefund in der Medizininformatik-Initiative."
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains befund 1..1
* identifier[befund].type 1.. MS
* identifier[befund].type = $v2-0203#FILL
* identifier[befund].type.coding MS
* identifier[befund].type.coding ^slicing.discriminator.type = #value
* identifier[befund].type.coding ^slicing.discriminator.path = "system"
* identifier[befund].type.coding ^slicing.rules = #open
* identifier[befund].type.coding contains fillerV2 1..1 MS
* identifier[befund].type.coding[fillerV2].system 1.. MS
* identifier[befund].type.coding[fillerV2].system = "http://terminology.hl7.org/CodeSystem/v2-0203" (exactly)
* identifier[befund].type.coding[fillerV2].code 1.. MS
* identifier[befund].type.coding[fillerV2].code = #FILL (exactly)
* identifier[befund].system 1.. MS
* identifier[befund].value 1.. MS
* identifier[befund].assigner 1.. MS
* identifier[befund].assigner only $MII-Reference
* basedOn 1.. MS
* basedOn only $MII-Reference
* status MS
* category 1..1 MS
* category.coding MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    loinc-lab 1..1 MS and
    diagnostic-service-sections 1..1 MS
* category.coding[loinc-lab] = $loinc#26436-6
* category.coding[diagnostic-service-sections] = $v2-0074#LAB
* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains loinc-labReport 1..1 MS
* code.coding[loinc-labReport] = $loinc#11502-2
* subject 1.. MS
* subject only $MII-Reference
* encounter MS
* effective[x] 1.. MS
* effective[x] only dateTime
* effective[x] ^definition = "Zeitpunkt, zu dem die gemessene Eigenschaft im Probenmaterial (e.g. Analytkonzentration) mutmaßlich der Eigenschaft im Patienten entsprach. Wenn der Zeitpunkt der Probenentnahme angegeben ist, wird meist dieser Zeitpunkt verwendet. Andernfalls wird zumeist behelfsmäßig der Probeneingang im Labor gewählt. Dieses Element ist wichtig um verschiedene Analysen im Zeitverlauf sortieren zu können."
* issued 1.. MS
* performer MS
* performer.reference MS
* performer.identifier MS
* specimen MS
* specimen.reference MS
* specimen.identifier MS
* result 1.. MS
* result only $MII-Reference
* conclusion MS