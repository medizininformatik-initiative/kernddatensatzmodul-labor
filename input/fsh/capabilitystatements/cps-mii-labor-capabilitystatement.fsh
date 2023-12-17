//Instance: mii-cps-prozedur-capabilitystatement
//InstanceOf: CapabilityStatement
//Usage: #definition
//* url = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/CapabilityStatement/metadata"
//* insert Version
//* insert SP_Publisher
//* name = "MII_CPS_Prozedur_CapabilityStatement"
//* title = "MII CPS Prozedur CapabilityStatement"
//* status = #active
//* experimental = false
//* date = "2022-02-21"
//* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein konformes System unterstützen muss um das Modul Prozedur der Medizininformatik Initiative zu implementieren."
//* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
//* kind = #requirements
//* fhirVersion = #4.0.1
//* format[0] = #xml
//* format[+] = #json
//* rest.mode = #server
//* rest.resource.extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.extension.valueCode = #SHALL
//* rest.resource.type = #Procedure
//* rest.resource.supportedProfile = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure|2.0.0-ballot"
//* rest.resource.interaction[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.interaction[=].extension.valueCode = #SHALL
//* rest.resource.interaction[=].code = #read
//* rest.resource.interaction[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.interaction[=].extension.valueCode = #SHALL
//* rest.resource.interaction[=].code = #search-type
//* rest.resource.searchParam[0].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.searchParam[=].extension.valueCode = #SHALL
//* rest.resource.searchParam[=].name = "_id"
//* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
//* rest.resource.searchParam[=].type = #token
//* rest.resource.searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.searchParam[=].extension.valueCode = #SHALL
//* rest.resource.searchParam[=].name = "status"
//* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Procedure-status"
//* rest.resource.searchParam[=].type = #token
//* rest.resource.searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.searchParam[=].extension.valueCode = #SHALL
//* rest.resource.searchParam[=].name = "category"
//* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Procedure-category"
//* rest.resource.searchParam[=].type = #token
//* rest.resource.searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.searchParam[=].extension.valueCode = #SHALL
//* rest.resource.searchParam[=].name = "code"
//* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
//* rest.resource.searchParam[=].type = #token
//* rest.resource.searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.searchParam[=].extension.valueCode = #SHALL
//* rest.resource.searchParam[=].name = "date"
//* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
//* rest.resource.searchParam[=].type = #date
//* rest.resource.searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.searchParam[=].extension.valueCode = #SHALL
//* rest.resource.searchParam[=].name = "patient"
//* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
//* rest.resource.searchParam[=].type = #reference
//* rest.resource.searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.searchParam[=].extension.valueCode = #SHALL
//* rest.resource.searchParam[=].name = "subject"
//* rest.resource.searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Procedure-subject"
//* rest.resource.searchParam[=].type = #reference
//* rest.resource.searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.searchParam[=].extension.valueCode = #SHALL
//* rest.resource.searchParam[=].name = "bodySite"
//* rest.resource.searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/SearchParameter/Procedure-BodySite"
//* rest.resource.searchParam[=].type = #token
//* rest.resource.searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.searchParam[=].extension.valueCode = #SHALL
//* rest.resource.searchParam[=].name = "dokumentationsdatum"
//* rest.resource.searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/SearchParameter/Procedure-Dokumentationsdatum"
//* rest.resource.searchParam[=].type = #date
//* rest.resource.searchParam[+].extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
//* rest.resource.searchParam[=].extension.valueCode = #SHALL
//* rest.resource.searchParam[=].name = "durchfuehrungsabsicht"
//* rest.resource.searchParam[=].definition = "https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/SearchParameter/Procedure-Durchfuehrungsabsicht"
//* rest.resource.searchParam[=].type = #token