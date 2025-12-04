<details>

<summary>us English version (click here)</summary>

# bms_beacon

BEACON link dumps of Bibliographie des Musikschrifttums BMS online

The Bibliography of Music Literature [BMS online](https://www.musikbibliographie.de/LNG=EN/) lists international, scholarly publications on music. Books, essays and reviews from journals, festschrifts, proceedings, yearbooks, anthologies and critical reports of musical editions are considered. The files contain BEACON link dumps with GND IDs for which publications are available in BMS online. BMS online uses the GND for the formal and subject indexing of literature. However, the authority files there have different identifiers (BMS-ID).
For more information about BEACON please visit [BEACON link dump format](https://gbv.github.io/beaconspec/beacon.html).

# Files description

[dmp](https://github.com/musikforschung/bms_beacon/tree/main/dmp)

* [beacon_tb.txt](https://www.github.com/musikforschung/bms_beacon/blob/main/dmp/beacon_tb.txt) contains the GND-IDs (Tb1-Tb4) and the corresponding BMS-IDs of music groups/ensembles for which literature is indexed in BMS online.
* [beacon_tp.txt](https://www.github.com/musikforschung/bms_beacon/blob/main/dmp/beacon_tp.txt) contains the GND-IDs (Tp1-Tp4) and the corresponding BMS-IDs of persons for whom literature is indexed in BMS online. The person can be both author and subject of the respective publication.
* [beacon_tuwim.txt](https://www.github.com/musikforschung/bms_beacon/blob/main/dmp/beacon_tuwim.txt) contains the GND-IDs (Tu1-Tu4) and the corresponding BMS-IDs of musical works for which literature is indexed in BMS online.
* [beacon_tuwis.txt](https://www.github.com/musikforschung/bms_beacon/blob/main/dmp/beacon_tuwis.txt) contains the GND-IDs (Tu1-Tu4) and the corresponding BMS-IDs of music manuscripts for which literature is indexed in BMS online.

[fix](https://github.com/musikforschung/bms_beacon/tree/main/fix)

* [beacon_sru_map.fix](https://github.com/musikforschung/bms_beacon/blob/main/fix/beacon_sru_map.fix) Catmandu fix for SRU query of authority data IDs from BMS online and checking a title link.

[shell](https://github.com/musikforschung/bms_beacon/tree/main/shell)

* [bms_beacon.sh](https://github.com/musikforschung/bms_beacon/blob/main/shell/bms_beacon.sh) Shell script for creating and uploading the individual BEACON files.

[template](https://github.com/musikforschung/bms_beacon/tree/main/template) Templates of the individual BEACON files.

# Author

* René Wallor, wallor at sim.spk-berlin.de

# Licence

Copyright © 2022 Stiftung Preußischer Kulturbesitz - Staatliches Institut für Musikforschung

CC0 1.0 Universal

</details>

---

<details open>

<summary>DE Deutsche Version</summary>

# bms_beacon

BEACON link dumps der Bibliographie des Musikschrifttums BMS online

Die Bibliographie des Musikschrifttums [BMS online](https://www.musikbibliographie.de/) verzeichnet internationale, wissenschaftliche Publikationen zur Musik. Dabei werden Bücher, Aufsätze und Rezensionen aus Zeitschriften, Festschriften, Kongreßberichten, Jahrbüchern, Sammelbänden und kritischen Berichten musikalischer Editionen berücksichtigt. Die Dateien enthalten BEACON link dumps mit GND-IDs zu denen Publikationen in BMS online vorhanden sind. BMS online nutzt die GND für die formale und sachliche Erschließung von Literatur. Diese Normdaten besitzen in BMS online abweichende Identifikatoren (BMS-ID).
Weitere Informationen zu BEACON gibt es auf [BEACON link dump format](https://gbv.github.io/beaconspec/beacon.html).

# Beschreibung der Dateien

[dmp](https://github.com/musikforschung/bms_beacon/tree/main/dmp)

* [beacon_tb.txt](https://www.github.com/musikforschung/bms_beacon/blob/main/dmp/beacon_tb.txt) enthält die GND-IDs (Tb1-Tb4) und die zugehörigen BMS-IDs von Musikgruppen/Musikensembles, zu denen Literatur in BMS online nachgewiesen ist.
* [beacon_tp.txt](https://www.github.com/musikforschung/bms_beacon/blob/main/dmp/beacon_tp.txt) enthält die GND-IDs (Tp1-Tp4) und die zugehörigen BMS-IDs von Personen, zu denen Literatur in BMS online nachgewiesen sind. Dabei kann die Person sowohl Autor als auch Thema der jeweiligen Publikation sein.
* [beacon_tuwim.txt](https://www.github.com/musikforschung/bms_beacon/blob/main/dmp/beacon_tuwim.txt) enthält die GND-IDs (Tu1-Tu4) und die zugehörigen BMS-IDs von Musikwerken, zu denen Literatur in BMS online nachgewiesen ist.
* [beacon_tuwis.txt](https://www.github.com/musikforschung/bms_beacon/blob/main/dmp/beacon_tuwis.txt) enthält die GND-IDs (Tu1-Tu4) und die zugehörigen BMS-IDs von Musikhandschriften, zu denen Literatur in BMS online nachgewiesen ist.

[fix](https://github.com/musikforschung/bms_beacon/tree/main/fix)

* [beacon_sru_map.fix](https://github.com/musikforschung/bms_beacon/blob/main/fix/beacon_sru_map.fix) Catmandu fix zur SRU-Abfrage der Normdaten IDs aus BMS online und Prüfung einer Titelverknüpfung.

[shell](https://github.com/musikforschung/bms_beacon/tree/main/shell)

* [bms_beacon.sh](https://github.com/musikforschung/bms_beacon/blob/main/shell/bms_beacon.sh) Shell-Skript zum Erstellen und Hochladen der einzelnen BEACON-Dateien.

[template](https://github.com/musikforschung/bms_beacon/tree/main/template) Vorlagen der einzelnen BEACON-Dateien.

# Autor

* René Wallor, wallor at sim.spk-berlin.de

# Lizenz

Copyright © 2022 Stiftung Preußischer Kulturbesitz - Staatliches Institut für Musikforschung

CC0 1.0 Universal

</details>	
