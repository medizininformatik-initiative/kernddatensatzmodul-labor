ValueSet: MII_VS_Labor_Order_Codes
Id: mii-vs-labor-order-codes
Title: "MII VS Labor Order Codes"
Description: "Kodierung der Beauftragungen von Laboruntersuchungen"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/ValueSetOrderCodes"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^experimental = false
* ^date = "2023-12-12"
* include codes from system LOINC where ORDER_OBS regex /Order|Both/