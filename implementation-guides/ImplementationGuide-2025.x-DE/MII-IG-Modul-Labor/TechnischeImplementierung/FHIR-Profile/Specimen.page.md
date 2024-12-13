---
topic: Specimen
---
## Specimen

### Bestehende Profile Kerndatensatz Medizininformatik-Initiative

**Modul Biobank**

Durch den Kerndatensatz der Medizininformatik Initative wird bereits das Konzept der "Bioprobe" im Modul Biobank definiert. Diese Spezifikation wird im Rahmen dieses Moduls wiederverwendet.
Siehe Profil ["Specimen (Bioprobe)"](https://simplifier.net/guide/MedizininformatikInitiative-ModulBiobank-ImplementationGuide/SpecimenBioprobe?version=current).

Canonical URL: ``https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/Specimen``

Es ist zu beachten, dass alle weiteren Vorgaben und Pflichtfelder des Kerndatensatz-Moduls einzuhalten sind.

Alle Elemente für das Konzept 'Probenmaterial' lassen sich durch das Profil wie folgt abbilden:

| Logischer Datensatz | FHIR Element |
|---------------------|--------------|
| Probenmaterial.Identifikation | Specimen.identifier |
| Probenmaterial.Ent-Abnahmezeitpunkt | Specimen.collection.collected |
| Laboreingangszeitpunkt | Specimen.receivedTime |
| Probenart| Specimen.type |
| Koerperstelle | Specimen.collection.bodySite |
| Kommentar | Specimen.note |