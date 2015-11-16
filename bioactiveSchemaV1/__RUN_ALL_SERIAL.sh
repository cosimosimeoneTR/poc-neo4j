curl -s http://instance-data/latest/meta-data/ami-id
echo
curl -s http://instance-data/latest/meta-data/instance-type
echo
curl -s http://instance-data/latest/meta-data/instance-id
echo

./_generateDataSerial.sh  /mnt/dataDisk/bioactiveSchemaV1/    10000000    5    90000                        &&
./_importData.sh    /mnt/dataDisk/bioactiveSchemaV1/    /mnt/databaseDisk/bioactiveSchemaV1/                &&
./constraintCreate.sh

