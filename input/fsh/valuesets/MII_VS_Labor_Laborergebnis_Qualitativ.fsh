ValueSet: MII_VS_Labor_Laborergebnis_Qualitativ
Id: mii-vs-labor-laborergebnis-qualitativ
Title: "MII VS Labor Laborergebnis Qualitativ"
Description: "Kodierung für qualitative Laborergebnisse"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/Laborergebnis-qualitativ"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^experimental = false
* ^date = "2023-12-12"
* $sct#10828004 "Positive (qualifier value)"
* $sct#280416009 "Indeterminate result (qualifier value)"
* $sct#260385009 "Negative (qualifier value)"
* $sct#260415000 "Not detected (qualifier value)"
* $sct#419984006 "Inconclusive (qualifier value)"
* $sct#260373001 "Detected (qualifier value)"
* $sct#52101004 "Present (qualifier value)"
* $sct#410594000 "Definitely NOT present (qualifier value)"
* include codes from system $sct where concept is-a #272519000