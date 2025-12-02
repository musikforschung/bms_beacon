#bms_beacon.sh
#!/bin/bash -e

Date=$(date '+%Y-%m-%d')

# tp
#cp -f $HOME/bms_beacon/template/beacon_tp.txt $HOME/bms_beacon/dmp/ &&
#sed -i "s/TIMESTAMP: [0-9]\+-[0-9]\+-[0-9]\+/TIMESTAMP: $Date/g" $HOME/bms_beacon/dmp/beacon_tp.txt &&
#catmandu convert SRU --base 'http://sru.k10plus.de/bmsonline!rec=2' --recordSchema picaxml --parser picaxml --query '(pica.bbg=Tpv1 and pica.tbs=s and pica.tbs=m)' to Text --fields GND_ID,PPN --field_sep '||' --fix $HOME/bms_beacon/fix/beacon_sru_map.fix >> $HOME/bms_beacon/dmp/beacon_tp.txt &&
# tb_kim
#cp -f $HOME/bms_beacon/template/beacon_tb.txt $HOME/bms_beacon/dmp/ &&
#sed -i "s/TIMESTAMP: [0-9]\+-[0-9]\+-[0-9]\+/TIMESTAMP: $Date/g" $HOME/bms_beacon/dmp/beacon_tb.txt &&
#catmandu convert SRU --base 'http://sru.k10plus.de/bmsonline!rec=2' --recordSchema picaxml --parser picaxml --query '(pica.bbg=Tbv1 and pica.tbs=s and pica.tbs=m and pica.ent=kim)' to Text --fields GND_ID,PPN --field_sep '||' --fix $HOME/bms_beacon/fix/beacon_sru_map.fix >> $HOME/bms_beacon/dmp/beacon_tb.txt &&
# tu_wis
#cp -f $HOME/bms_beacon/template/beacon_tuwis.txt $HOME/bms_beacon/dmp/ &&
#sed -i "s/TIMESTAMP: [0-9]\+-[0-9]\+-[0-9]\+/TIMESTAMP: $Date/g" $HOME/bms_beacon/dmp/beacon_tuwis.txt &&
#catmandu convert SRU --base 'http://sru.k10plus.de/bmsonline!rec=2' --recordSchema picaxml --parser picaxml --query '(pica.bbg=Tuv1 and pica.ent=wis)' to Text --fields GND_ID,PPN --field_sep '||' --fix $HOME/bms_beacon/fix/beacon_sru_map.fix >> $HOME/bms_beacon/dmp/beacon_tuwis.txt
# tu_wim
#cp -f $HOME/bms_beacon/template/beacon_tuwim.txt $HOME/bms_beacon/dmp/ &&
#sed -i "s/TIMESTAMP: [0-9]\+-[0-9]\+-[0-9]\+/TIMESTAMP: $Date/g" $HOME/bms_beacon/dmp/beacon_tuwim.txt &&
#catmandu convert SRU --base 'http://sru.k10plus.de/bmsonline!rec=2' --recordSchema picaxml --parser picaxml --query '(pica.bbg=Tuv1 and pica.tbs=s and pica.tbs=m and pica.ent=wim)' to Text --fields GND_ID,PPN --field_sep '||' --fix $HOME/bms_beacon/fix/beacon_sru_map.fix >> $HOME/bms_beacon/dmp/beacon_tuwim.txt &&

git add $HOME/bms_beacon/dmp/beacon_tp.txt $HOME/bms_beacon/dmp/beacon_tb.txt $HOME/bms_beacon/dmp/beacon_tuwis.txt $HOME/bms_beacon/dmp/beacon_tuwim.txt &&
git commit -am "Update" &&
git push -u origin
