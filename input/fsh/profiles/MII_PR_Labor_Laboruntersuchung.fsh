Profile: MII_PR_Labor_Laboruntersuchung
Parent: Observation
Id: mii-pr-labor-laboruntersuchung
Title: "MII PR Labor Laboruntersuchung"
Description: "Dieses Profil beschreibt eine Laborergebnis in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab"
* insert Translation(^title, de-DE, Laboruntersuchung)
* insert Translation(^title, en-US, Laboratory test)
* insert Translation(^description, de-DE, Ergebnis einer Laboruntersuchung)
* insert Translation(^description, en-US, Result of a laboratory test)
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
  * ^short = "Identifikator"
  * ^definition = "Kennung/en, unter der/denen diese Laboruntersuchung bekannt ist."
* insert Translation(identifier ^short, en-US, Identifier)
* insert Translation(identifier ^definition, en-US, Identifier/s by which this laboratory test is known.)
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains analyseBefundCode 1..1 MS
* identifier[analyseBefundCode].type 1.. MS
* identifier[analyseBefundCode].type from mii-vs-labor-identifier-type-codes (extensible)
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
//* identifier[analyseBefundCode].assigner only $MII-Reference
* status MS
  * ^short = "Status"
  * ^definition = "abgeschlossen"
* insert Translation(status ^short, en-US, Status)
* insert Translation(status ^definition, en-US, completed)
* category 1.. MS
  * ^short = "Kategorie"
  * ^definition = "Klassifikation in diagnostischen Fachbereich und Gruppe der Laboruntersuchung"
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, en-US, Classification of the laboratory test in the diagnostic service section and laboratory group)
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
  * ^short = "Code"
  * ^definition = "Ein LOINC Code für den Laborparameter bzw. Labortest, der durchgeführt wurde."
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, en-US, A LOINC code identifying the laboratory test that was performed.)
* code from $ResultsLabObservationUvIps (preferred)
* code ^binding.description = "Intensional Value Set Definition: LOINC {  {    STATUS in {ACTIVE}    CLASSTYPE in {1}    CLASS exclude {CHALSKIN, H&P.HX.LAB, H&P.HX, NR STATS, PATH.PROTOCOLS.*}  } }"
* subject 1.. MS
//* subject only $MII-Reference
* encounter MS
  * ^short = "Fall oder Kontakt"
  * ^definition = "Fall oder Kontakt, bei dem die Laboruntersuchung durchgeführt wurde."
* insert Translation(encounter ^short, en-US, Encounter)
* insert Translation(encounter ^definition, en-US, Encounter during which the laboratory test was performed.)
* effective[x] 1.. MS
  * ^short = "Untersuchungszeitpunkt"
  * ^definition = "Zeitpunkt des Beginns der Untersuchung"
* insert Translation(effective[x] ^short, en-US, Time of observation)
* insert Translation(effective[x] ^definition, en-US, The time at which the observation was made)
* effective[x] only dateTime
* effective[x] obeys mii-lab-1
* effective[x].extension contains mii-ex-labor-quelle-klinisches-bezugsdatum named QuelleKlinischesBezugsdatum 0..1 MS
* effective[x].extension[QuelleKlinischesBezugsdatum]
  * ^short = "Quelle klinisches Bezugsdatum"
  * ^definition = "Datum der Probenentnahme | Datum des Eingangs der Probe im Labor"
* insert Translation(effective[x].extension[QuelleKlinischesBezugsdatum] ^short, en-US, Source of clinical reference date)
* insert Translation(effective[x].extension[QuelleKlinischesBezugsdatum] ^definition, en-US, Specimen collection date | Date sample received in laboratory)
* issued MS
  * ^short = "Dokumentationsdatum"
  * ^definition = "Zeitpunkt, an dem das Ergebnis der Laboruntersuchung dokumentiert wurde"
* insert Translation(issued ^short, en-US, Issued)
* insert Translation(issued ^definition, en-US, The point in time when the laboratory result was documented)
* value[x] only Quantity or CodeableConcept or Range or Ratio
* value[x] MS
  * ^short = "Messwert"
  * ^definition = "Wert der Analyse"
* insert Translation(value[x] ^short, en-US, Value)
* insert Translation(value[x] ^definition, en-US, Value of the analysis)
* valueQuantity MS
* valueQuantity.extension contains $pq-translation-ex named pqTranslation 0..*
* valueQuantity.extension[pqTranslation] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* valueQuantity.extension[pqTranslation] ^extension[=].valueCode = #draft
* valueQuantity.value 1.. MS
* valueQuantity.value.extension contains $quantity-precision-ex named quantityPrecision 0..1 MS
* valueQuantity.value.extension[quantityPrecision] ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* valueQuantity.value.extension[quantityPrecision] ^extension[=].valueCode = #draft
* valueQuantity.unit 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1.. MS
* valueQuantity.code ^comment = "The mandatory system is UCUM."
* valueCodeableConcept MS
* valueCodeableConcept.coding 1.. MS
* valueCodeableConcept.coding.system 1.. MS
* valueCodeableConcept.coding.code 1.. MS
* valueRange MS
* valueRatio MS
* dataAbsentReason MS
  * ^short = "Grund für fehlende Daten"
  * ^definition = "unbekannt | maskiert | nicht anwendbar | Fehler | nicht durchgeführt"
* insert Translation(dataAbsentReason ^short, en-US, Data absent reason)
* insert Translation(dataAbsentReason ^definition, en-US, unknown | masked | not-applicable | error | not-performed)
* interpretation MS
  * ^short = "Interpretation"
  * ^definition = "Eine kategorische Bewertung des Messwertes. Zum Beispiel hoch, niedrig, normal."
* insert Translation(interpretation ^short, en-US, Interpretation)
* insert Translation(interpretation ^definition, en-US, A categorical assessment of the value. For example\, high\, low\, normal.)
* note MS
  * ^short = "Hinweis"
  * ^definition = "Zusätzliche Informationen zur Laboruntersuchung als Freitext."
* insert Translation(note ^short, en-US, Note)
* insert Translation(note ^definition, en-US, Additional information about the laboratory test as free text.)
* bodySite ..0
* method MS
  * ^short = "Untersuchungsmethode"
  * ^definition = "Konkrete Untersuchungsmethode, wenn der verwendete LOINC-Code für den Laborparameter keine Methode enthält."
* insert Translation(method ^short, en-US, Method)
* insert Translation(method ^definition, en-US, Specific examination method\, if the LOINC code for the laboratory test does not contain a method)
* specimen MS
  * ^short = "Probenmaterial"
  * ^definition = "Probe, auf deren Basis die Laboruntersuchungen angefertigt werden"
* insert Translation(specimen ^short, en-US, Specimen)
* insert Translation(specimen ^definition, en-US, Specimen on which the laboratory tests are performed)
* specimen.reference MS
* specimen.identifier MS
* device MS
  * ^short = "Gerät"
  * ^definition = "Gerät, das zur Generierung der Messwerte verwendet wurde."
* insert Translation(device ^short, en-US, Device)
* insert Translation(device ^definition, en-US, The device used to generate the test data.)
* referenceRange MS
  * ^short = "Referenzbereich"
  * ^definition = "Bereich, in dem der Messwert als normal oder empfohlen betrachtet wird."
* insert Translation(referenceRange ^short, en-US, Reference range)
* insert Translation(referenceRange ^definition, en-US, Guidance on how to interpret the value by comparison to a normal or recommended range.)