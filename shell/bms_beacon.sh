#!/usr/bin/env bash

# Perl-Umgebung laden BEVOR set -e greift
export PERLBREW_ROOT=/opt/perl5
source ${PERLBREW_ROOT}/etc/bashrc 

set -euo pipefail


BASE_DIR="$HOME/bms_beacon"
DMP_DIR="$BASE_DIR/dmp"
TMPL_DIR="$BASE_DIR/template"
FIX_FILE="$BASE_DIR/fix/beacon_sru_map.fix"
DATE=$(date '+%Y-%m-%d')

# Liste der Beacons: "Dateiname|SRU-Query"
beacons=(
    "beacon_tp.txt|(pica.bbg=Tpv1 and pica.tbs=s and pica.tbs=m)"
    "beacon_tb.txt|(pica.bbg=Tbv1 and pica.tbs=s and pica.tbs=m and pica.ent=kim)"
    "beacon_tuwis.txt|(pica.bbg=Tuv1 and pica.ent=wis)"
    "beacon_tuwim.txt|(pica.bbg=Tuv1 and pica.tbs=s and pica.tbs=m and pica.ent=wim)"
    "beacon_tggib.txt|(pica.bbg=Tgv1 and pica.ent=gib)"
)

for entry in "${beacons[@]}"; do
    IFS="|" read -r FILE QUERY <<< "$entry"
    
    echo "Processing $FILE..."
    
    # Template kopieren
    cp -f "$TMPL_DIR/$FILE" "$DMP_DIR/$FILE"
    
    # Zeitstempel ersetzen
    sed -i "s/TIMESTAMP: [0-9]\+-[0-9]\+-[0-9]\+/TIMESTAMP: $DATE/g" "$DMP_DIR/$FILE"
    
    # 3. Daten via SRU abrufen
    catmandu convert SRU \
        --base 'http://sru.k10plus.de/bmsonline!rec=2' \
        --recordSchema picaxml \
        --parser picaxml \
        --query "$QUERY" \
        to Text --fields PPN --field_sep '||' --fix "$FIX_FILE" >> "$DMP_DIR/$FILE"
done

# Git
cd "$BASE_DIR"
git add "$DMP_DIR"/*.txt
# Nur committen, wenn es auch Änderungen gab
git diff-index --quiet HEAD || git commit -m "Cronjob update $DATE"
git push origin main  
