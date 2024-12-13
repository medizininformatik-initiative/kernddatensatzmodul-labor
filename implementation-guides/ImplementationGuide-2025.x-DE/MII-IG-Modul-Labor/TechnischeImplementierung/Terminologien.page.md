---
topic: Terminologien
---
## Terminologien

Die Laboranalyse sollte möglichst genau so kodiert werden, wie sie auch durchgeführt wird. Dafür stehen alle [LOINC](https://www.loinc.org)-Terme  aus dem Laborbereich zur Verfügung. Wenn sich kein passender Term finden lässt, sind weitere standardisierte Systeme lokalen Kodes vorzuziehen. In Frage kommen insbesondere die sogenannten "V-Kodes" aus der österreichischen [ELGA](https://www.elga.gv.at/technischer-hintergrund/technische-elga-leitfaeden/index.html), die sich eng an LOINC orientieren. Desweiteren können LOINC-Codes durch das TC Terminologien von HL7 Deutschland beantragt werden. Eine weitere Terminologie für Labordaten ["Nomenclature for Properties and Units"](http://www.npu-terminology.org/) hat in Deutschland keine Verbreitung gefunden. 

Die Maßeinheit muss zwingend in [UCUM-Einheiten](http://unitsofmeasure.org/ucum.html) angegeben werden, damit sich die Ergebnisse ineinander umrechnen lassen. Mittels [Validatoren](https://ucum.nlm.nih.gov/ucum-lhc/demo.html) sollte sichergestellt werden, dass die verwendeten Einheiten zulässig sind. 

Zusätzlich zu internationalen Terminologien werden durch das Modul LABOR folgende eigene ValueSets definiert. Es sei darauf hingewiesen, dass alle ValueSets keine Expansion beinhalten. Diese muss vor der Verwendung mittels eines Terminologieservers durchgeführt werden.

-----

### ValueSets

Canoncial: ```https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/Laborbereich```

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/Laborbereich}}

-----

Canoncial: ```https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/Laborergebnis-semiquantitativ```

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/Laborergebnis-semiquantitativ}}

-----

Canoncial: ```https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/QuelleKlinischesBezugsdatum```

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/QuelleKlinischesBezugsdatum}}

-----

Canoncial: ```https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/ValueSetOrderCodes```

{{render:https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/ValueSetOrderCodes}}
