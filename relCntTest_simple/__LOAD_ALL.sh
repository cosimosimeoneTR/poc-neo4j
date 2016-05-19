curl -s http://instance-data/latest/meta-data/ami-id
echo
curl -s http://instance-data/latest/meta-data/instance-type
echo
curl -s http://instance-data/latest/meta-data/instance-id
echo

###### ./_generateData.sh  /mnt/dataDisk/bioactiveSchemaV1/    2000000    0    50000                        &&
./_importData.sh    /mnt/dataDisk/bioactiveSchemaV1/    /mnt/databaseDisk/bioactiveSchemaV1/
