cd /mnt/dataDisk/matrix/
sudo mkdir /mnt/databaseDisk/matrix.db 2>/dev/null
sudo chown -R admin:admin /mnt/databaseDisk/matrix.db

#sudo rm -rf /mnt/databaseDisk/matrix.db/* && \
neo4j-import --into /mnt/databaseDisk/matrix.db --id-type INTEGER \
  --nodes entityA.csv.gz \
  --nodes entityB.csv.gz \
  --nodes entityC.csv.gz \
  --nodes entityD.csv.gz \
  --nodes entityE.csv.gz \
  --nodes entityF.csv.gz \
  --nodes entityG.csv.gz \
  --nodes entityH.csv.gz \
  --nodes entityI.csv.gz \
  --nodes entityJ.csv.gz \
  --relationships entityA2entityJ.csv.gz \
  --relationships entityB2entityA.csv.gz \
  --relationships entityB2entityD.csv.gz \
  --relationships entityC2entityB.csv.gz \
  --relationships entityD2entityB.csv.gz \
  --relationships entityD2entityC.csv.gz \
  --relationships entityE2entityD.csv.gz \
  --relationships entityF2entityE.csv.gz \
  --relationships entityG2entityF.csv.gz \
  --relationships entityH2entityG.csv.gz \
  --relationships entityI2entityH.csv.gz \
  --relationships entityJ2entityI.csv.gz 


sudo chown -R neo4j:nogroup /mnt/databaseDisk/matrix.db
