curl -s http://instance-data/latest/meta-data/ami-id
echo
curl -s http://instance-data/latest/meta-data/instance-type
echo
curl -s http://instance-data/latest/meta-data/instance-id
echo

./_generateData.sh  /mnt/dataDisk/relCntTest_simple/    200000    0    190000                       &&
./_importData.sh    /mnt/dataDisk/relCntTest_simple/    /mnt/databaseDisk/relCntTest_simple/         &&
./constraintCreate.sh
