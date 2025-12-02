#bms_beacon.sh
#!/bin/bash -e

Date=$(date '+%Y-%m-%d')

# tp
#cp ./template/beacon_tp.txt ./dmp/ &&
#sed -i "s/TIMESTAMP: [0-9]\+-[0-9]\+-[0-9]\+/TIMESTAMP: $Date/g" ./dmp/beacon_tp.txt &&
#catmandu convert SRU --base 'http://sru.k10plus.de/bmsonline!rec=2' --recordSchema picaxml --parser picaxml --query '(pica.bbg=Tpv1 and pica.tbs=s and pica.tbs=m)' to Text --fields GND_ID,PPN --field_sep '||' --fix ./fix/beacon_sru_map.fix >> ./dmp/beacon_tp.txt &&
# tb_kim
#cp ./template/beacon_tb.txt ./dmp/ &&
#sed -i "s/TIMESTAMP: [0-9]\+-[0-9]\+-[0-9]\+/TIMESTAMP: $Date/g" ./dmp/beacon_tb.txt &&
#catmandu convert SRU --base 'http://sru.k10plus.de/bmsonline!rec=2' --recordSchema picaxml --parser picaxml --query '(pica.bbg=Tbv1 and pica.tbs=s and pica.tbs=m and pica.ent=kim)' to Text --fields GND_ID,PPN --field_sep '||' --fix ./fix/beacon_sru_map.fix >> ./dmp/beacon_tb.txt &&
# tu_wis
cp ./template/beacon_tuwis.txt ./dmp/ &&
sed -i "s/TIMESTAMP: [0-9]\+-[0-9]\+-[0-9]\+/TIMESTAMP: $Date/g" ./dmp/beacon_tuwis.txt &&
catmandu convert SRU --base 'http://sru.k10plus.de/bmsonline!rec=2' --recordSchema picaxml --parser picaxml --query '(pica.bbg=Tuv1 and pica.ent=wis)'to Text --fields GND_ID,PPN --field_sep '||' --fix ./fix/beacon_sru_map.fix >> ./dmp/beacon_tuwis.txt &&
# tu_wim
#cp ./template/beacon_tuwim.txt ./dmp/ &&
#sed -i "s/TIMESTAMP: [0-9]\+-[0-9]\+-[0-9]\+/TIMESTAMP: $Date/g" ./dmp/beacon_tuwim.txt &&
#catmandu convert SRU --base 'http://sru.k10plus.de/bmsonline!rec=2' --recordSchema picaxml --parser picaxml --query '(pica.bbg=Tuv1 and pica.tbs=s and pica.tbs=m and pica.ent=wim)' to Text --fields GND_ID,PPN --field_sep '||' --fix ./fix/beacon_sru_map.fix >> ./dmp/beacon_tuwim.txt &&

git add ./dmp/beacon_tp.txt ./dmp/beacon_tb.txt ./dmp/beacon_tuwis.txt ./dmp/beacon_tuwim.txt &&
git commit -am "Update" &&
git push -u origin
