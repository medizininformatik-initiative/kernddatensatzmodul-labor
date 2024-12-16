## {{page-title}}

### Version: 2025.0.0

Die Version 2025.0.0 enthält im Vergleich zur Vorversion 1.0.6 von 2021 folgende Änderungen (für einen vollständigen Überblick über die Änderungen kann der diff-view im Github verwendet werden):

### FHIR/Inhaltliche Änderungen:

#### Generell:
-	References der Profile sind nicht mehr als MII-Reference profiliert
- Ressourcen verwenden in diesem Release modulübergreifend SNOMED CT in der Version `http://snomed.info/sct/900000000000207008/version/20240701`, um eine stabile [ValueSet-Expansion](http://hl7.org/fhir/R4/valueset.html#expansion) sicherzustellen.

#### MII_PR_Labor_Laboruntersuchung
-	Anpassung Invariante: mii-lab-2  
Erlaubt nun auch Observations ohne .value/dataAbsentReason falls hasMember befüllt ist um Paneluntersuchungen zu supporten
-	Observation.identifier.type ist per extensible Binding an: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/ValueSet/mii-vs-labor-identifier-type-codes gebunden
-	Value[x] erlaubt zusätzlich: Range & Ratio

#### MII_PR_Labor_Laboranforderung
-	Keine Änderung

#### MII_PR_Labor_Laborbefund
-	Extension - Quelle Klinisches Bezugsdatum slice  zu .effective.extension hinzugefügt

#### Extension - Quelle Klinisches Bezugsdatum
-	Kontext: DiagnosticReport.effective.ofType(dateTime) hinzugefügt

#### MII_VS_Labor_Laborergbenis_Semiquantitativ
- Konzept entfernt:
  - "code": "260350009"	
  - "display": "Present four plus out of four plus"

### Implementation Guide:
-	Beschreibung Modul: Ausführlichere Beschreibung der Zeitpunkte im Labor
-	Technische Implementierung>Zeitpunkte im Labor: Hinzufügen einer Zeitpunkte-Übersetzungstabelle
-	FHIR-Profile: Anpassung der Beschreibungen der Zeitpunkt-FHIR-Items jeweils unter „Mappings“
-	Terminologien: Absatz zur LOINC-MII-Top-300 hinzugefügt

### Zukünftige Änderungen:
-	Die oben genannte Extension QuelleKlinischesBezugsdatum wird in zukünftigen Versionen des Modul Laborbefund voraussichtlich eine Pflichtangabe (1..1).
-	Für kommende Versionen wird eine Angleichung zwischen dem MII KDS Laborbefund und dem MIO Laborbefund angestrebt. Dabei sollen die Schnittmengen der beiden Laborbefunde so harmonisiert werden, dass mit den gleichen FHIR-Items gearbeitet werden kann.
