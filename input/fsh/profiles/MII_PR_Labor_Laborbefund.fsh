Profile: MII_PR_Labor_Laborbefund
Parent: DiagnosticReport
Id: mii-pr-labor-laborbefund
Title: "MII PR Labor Laborbefund"
Description: "Dieses Profil beschreibt einen Laborbefund in der Medizininformatik-Initiative."
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/DiagnosticReportLab"
* insert Translation(^title, de-DE, Laborbefund)
* insert Translation(^title, en-US, Laboratory report)
* insert Translation(^description, de-DE, Laborbefund\, der die Ergebnisse einer Laboruntersuchung enthält.)
* insert Translation(^description, en-US, Laboratory report containing the results of a laboratory test.)
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^experimental = false
* ^purpose = "Dieses Profil beschreibt einen Laborbefund in der Medizininformatik-Initiative."
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* insert Translation(identifier ^short, de-DE, Identifikator)
* insert Translation(identifier ^short, en-US, Identifier)
* insert Translation(identifier ^definition, de-DE, Kennung/en\, unter der/denen dieser Laborbefund bekannt ist.)
* insert Translation(identifier ^definition, en-US, Identifier/s by which this laboratory report is known.)
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
* insert Translation(basedOn ^short, de-DE, Basiert auf)
* insert Translation(basedOn ^short, en-US, Based on)
* insert Translation(basedOn ^definition, de-DE, Bezug zum Laborauftrag\, auf dem dieser Laborbefund basiert.)
* insert Translation(basedOn ^definition, en-US, Reference to the laboratory order on which this laboratory report is based.)
* basedOn only $MII-Reference
* status MS
* insert Translation(status ^short, de-DE, Status)
* insert Translation(status ^short, en-US, Status)
* insert Translation(status ^definition, de-DE, registriert | teilweise | vorläufig | final)
* insert Translation(status ^definition, en-US, registered | partial | preliminary | final)
* category 1..1 MS
* insert Translation(category ^short, de-DE, Kategorie)
* insert Translation(category ^short, en-US, Category)
* insert Translation(category ^definition, de-DE, Klassifikation des Befunds als Laborbefund)
* insert Translation(category ^definition, en-US, Classification of the report as laboratory report)
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
* insert Translation(code ^short, de-DE, Code)
* insert Translation(code ^short, en-US, Code)
* insert Translation(code ^definition, de-DE, Ein LOINC Code zur Identifikation des Befunds als Laborbefund.)
* insert Translation(code ^definition, en-US, A LOINC code identifying the report as laboratory report.)
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains loinc-labReport 1..1 MS
* code.coding[loinc-labReport] = $loinc#11502-2
* subject 1.. MS
* subject only $MII-Reference
* encounter MS
* insert Translation(encounter ^short, de-DE, Fall oder Kontakt)
* insert Translation(encounter ^short, en-US, Encounter)
* insert Translation(encounter ^definition, de-DE, Fall oder Kontakt\, bei dem der Laborbefund erstellt wurde.)
* insert Translation(encounter ^definition, en-US, Encounter during which the laboratory report was created.)
* effective[x] 1.. MS
* insert Translation(effective[x] ^short, de-DE, Klinisches Bezugsdatum)
* insert Translation(effective[x] ^short, en-US, Clinical reference Date)
* insert Translation(effective[x] ^definition, de-DE, Zeitpunkt\, zu dem die gemessene Eigenschaft im Probenmaterial e.g. Analytkonzentration mutmaßlich der Eigenschaft im Patienten entsprach.)
* insert Translation(effective[x] ^definition, en-US, The time when the measured property in the specimen material e.g. analyte concentration is presumed to pertain to the patient.)
* effective[x] only dateTime
* effective[x].extension contains mii-ex-labor-quelle-klinisches-bezugsdatum named QuelleKlinischesBezugsdatum 0..1 MS
* effective[x] ^definition = """
    Zeitpunkt, zu dem die gemessene Eigenschaft im Probenmaterial (e.g. Analytkonzentration) mutmaßlich der Eigenschaft im Patienten entsprach. 
    Wenn der Zeitpunkt der Probenentnahme angegeben ist, wird meist dieser Zeitpunkt verwendet. 
    Andernfalls wird zumeist behelfsmäßig der Probeneingang im Labor gewählt. 
    Dieses Element ist wichtig um verschiedene Analysen im Zeitverlauf sortieren zu können.
    """
* issued 1.. MS
* insert Translation(issued ^short, de-DE, Dokumentationsdatum)
* insert Translation(issued ^short, en-US, Issued)
* insert Translation(issued ^definition, de-DE, Zeitpunkt\, an dem der Laborbefund dokumentiert wurde.)
* insert Translation(issued ^definition, en-US, The time when the laboratory report was documented.)
* performer MS
* insert Translation(performer ^short, de-DE, Ausführende*r)
* insert Translation(performer ^short, en-US, Performer)
* insert Translation(performer ^definition, de-DE, Verantwortliche Person oder Organisation\, die für die Ausstellung des Befunds verantwortlich ist.)
* insert Translation(performer ^definition, en-US, The diagnostic service that is responsible for issuing the report.)
* performer.reference MS
* performer.identifier MS
* specimen MS
* insert Translation(specimen ^short, de-DE, Probenmaterial)
* insert Translation(specimen ^short, en-US, Specimen)
* insert Translation(specimen ^definition, de-DE, Details zu den Bioproben\, auf denen dieser Laborbefund basiert.)
* insert Translation(specimen ^definition, en-US, Details about the specimens on which this diagnostic report is based.)
* specimen.reference MS
* specimen.identifier MS
* result 1.. MS
* insert Translation(result ^short, de-DE, Ergebnis)
* insert Translation(result ^short, en-US, Result)
* insert Translation(result ^definition, de-DE, Laborergebnisse\, die Teil dieses Laborbefunds sind.)
* insert Translation(result ^definition, en-US, Laboratory test results that are part of this diagnostic report.)
* result only $MII-Reference
* conclusion MS
* insert Translation(conclusion ^short, de-DE, Schlussfolgerung)
* insert Translation(conclusion ^short, en-US, Conclusion)
* insert Translation(conclusion ^definition, de-DE, Klinische Schlussfolgerung/Interpretation der Testergebnisse)
* insert Translation(conclusion ^definition, en-US, Clinical conclusion/interpretation of test results)