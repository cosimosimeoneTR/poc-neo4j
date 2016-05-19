curl -s http://instance-data/latest/meta-data/ami-id
echo
curl -s http://instance-data/latest/meta-data/instance-type
echo
curl -s http://instance-data/latest/meta-data/instance-id
echo

./_generateData.sh  /mnt/dataDisk/relCntTest/    2000000    20    190000                       &&
./_importData.sh    /mnt/dataDisk/relCntTest/    /mnt/databaseDisk/relCntTest/         &&
./constraintCreate.sh
