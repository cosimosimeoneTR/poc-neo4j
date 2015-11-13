curl -s http://instance-data/latest/meta-data/ami-id
curl -s http://instance-data/latest/meta-data/instance-type
curl -s http://instance-data/latest/meta-data/instance-id

./_generateData.sh  /mnt/dataDisk/bioactiveSchemaV1/    1000000    0    50000                        &&
./_importData.sh    /mnt/dataDisk/bioactiveSchemaV1/    /mnt/databaseDisk/bioactiveSchemaV1/
