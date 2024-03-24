---
topic: BeschreibungModul
---
## Beschreibung Modul Labor

{{render:implementation-guides/ImplementationGuide-Common/images/Modul_Laborbefund.jpg}}

Laboruntersuchungen spielen bei einem Großteil aller medizinischen Diagnosen eine entscheidende Rolle. Für zeitkritische Anwendungen, z.B. einer Entscheidungsunterstützung, die den Arzt bei einem niedrigen Hämoglobinwert warnt, können auch schon vorläufige Ergebnisse interessant sein. In der Regel werden aber sowohl in der Patientenversorgung als auch in der Forschung die finalen Laborergebnisse verwendet. Zentrales Dokument und Gegenstand dieses Moduls ist dabei der LABORBEFUND eines medizinischen Labors. Aufgrund des breiten Einsatzes des Moduls LABORBEFUND wird auf eine Beschreibung von einzelnen Anwendungen innerhalb der einzelnen Konsortien verzichtet.

**Abbildung Modul LABORBEFUND in ART-DECOR:**

[{{render:implementation-guides/ImplementationGuide-Common/images/ART-DECOR_Laborbefund.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.35&conceptEffectiveDate=2018-06-05T22%3A24%3A45&language=de-DE)

Laborbefunde sind als Dokumente zusammengefasste in einem medizinischen Labor durchgeführte Untersuchungen. Zum einzelnen Laborbefund werden jeweils verschiedene Daten erfasst, insbesondere ob es sich um einen vorläufigen oder abschließenden Befund handelt (*Status*) und verschiedene im Kontext wichtige Zeitpunkte.

## Wichtige Zeitpunkte im Laborbefund

Im Verlauf einer Laboranalyse, von der Abnahme der Probe bis zur Übermittlung des Befundes an den Einsender, werden verschiedene Zeitstempel festgehalten. 

Der *Anforderungszeitpunkt* einer Laboruntersuchung ist in der Regel, aber nicht zwingend (Nachforderung), der früheste Zeitpunkt und beschreibt den Zeitpunkt, zu dem ein Auftrag für eine Laboruntersuchung versendet wurde. 

Der Zeitpunkt der Ankunft des Probematerials im Labor sollte als *Laboreingangszeitpunkt* angegeben werden. 

Für jede Analyse gibt es einen Zeitpunkt (in der Regel den Zeitpunkt der Abnahme/Probengewinnung), zu dem die gemessene Eigenschaft im Probenmaterial (z.B. Analytkonzentration) mutmaßlich der Eigenschaft im Patienten entsprach. Im Datenmodell wird dies als *Entnahmezeitpunkt* als Eigenschaft des Probenmaterials modelliert. Wurde das Probenmaterial über einen definierten Zeitraum gesammelt (z.B. 24h Urin), kann dieser auch als Eigenschaft des Probenmaterials hinterlegt werden. In diesem Fall stellt der Entnahmezeitpunkt einen Zeitraum dar. 

Der *klinische Bezugszeitpunkt* des Laborberichts spiegelt den Entnahmezeitpunkt und liegt immer vor der Verfügbarkeit des Ergebnisses der Laboruntersuchung. Wenn der Entnahmezeitpunkt bekannt ist, wird meist dieser Zeitpunkt als klinischer Bezugszeitpunkt verwendet. Andernfalls wird zumeist behelfsmäßig der Probeneingang im Labor gewählt. Dieses Element ist wichtig, um verschiedene Analysen im Zeitverlauf sortieren zu können. Die Präzision soll ausreichen, um auch Minuten zu erfassen. 

Das *Dokumentationsdatum* gibt an, wann der Laborbericht freigegeben wurde. Da ein Laborbericht häufig mehrere Analysen umfasst, sollte für diesen der älteste Zeitstempel der enthaltenen Laboruntersuchungen gewählt werden, wenn die Befundfreigabe nicht mit einem expliziten Datum versehen ist. Vorläufige Befunde können eigenständig mit einem entsprechenden Status abgebildet werden.

Pro durchgeführter Analyse wird zudem jeweils ein *Untersuchungsdatum* festgehalten.


**Abbildung der einzelnen Laboruntersuchung im Modul LABORBEFUND:**

[{{render:implementation-guides/ImplementationGuide-Common/images/ART-DECOR_Laboruntersuchung.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.773&conceptEffectiveDate=2019-06-06T09%3A46%3A15&language=de-DE)

**Abbildung der Laboranforderung im Modul LABORBEFUND:**

[{{render:implementation-guides/ImplementationGuide-Common/images/ART-DECOR_Laboranforderung.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.923&conceptEffectiveDate=2019-06-07T09%3A37%3A25&language=de-DE)

Wann eine oder mehrere Laboruntersuchungen von einem behandelnden Arzt beauftragt werden, lässt sich dem *Anforderungsdatum* entnehmen. Gemeinsam mit den gewünschten Laborparametern, der Probe und einem Status können diese Merkmale in einer *Laboranforderung* als Leistungsanforderung gruppiert werden.

## Interpretationen und Kommentare

Ein wesentlicher Teil des Laborbefundes sind die ärztlichen Interpretationen und die Kommentare, mit denen das Labor dem Einsender hilft, die richtigen Schlüsse aus den Messergebnissen zu ziehen. Die eigentliche Interpretation wird in im Wesentlichen als Freitext abgespeichert. Zusätzliche strukturierte Codierungen sind möglich, allerdings steht SNOMED CT nur bei Verfügbarkeit entsprechender Lizenzen zur Verfügung.

Häufig beziehen sich einzelne Kommentare nicht auf den gesamten Befund, sondern nur auf einzelne Messungen (z.B. "Messung gestört"). Diese Kommentare sollten als Notiz gespeichert werden. Eine Interpretation der Lage des Messwertes in Bezug zum Referenzintervall (z.B. "+", "hoch", "-", "niedrig") können explizit angegeben werden, sind jedoch redundant, da das Referenzintervall selbst explizit abgebildet werden sollte.

## Probenmaterial

**Abbildung des Probenmaterials im Modul LABORBEFUND:**

[{{render:implementation-guides/ImplementationGuide-Common/images/ART-DECOR_Probenmaterial.png}}](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.799&conceptEffectiveDate=2019-06-06T10%3A06%3A13&language=de-DE)

Häufig werden in einem Laborbefund auch Kommentare zur Probe angegeben (z.B. "Probe hämolytisch"). Zum jetzigen Zeitpunkt wird die Probe in der Medizininformatik-Initiative nicht systematisch erfasst, da sich Informationen zur dieser nur schwer aus den Primärsystemen extrahieren lassen. Bis dahin müssen Kommentare, die sich auf eine Probe beziehen, unstrukturiert als Zusatzinformation zu den entsprechenden Messwerte abgelegt werden.
