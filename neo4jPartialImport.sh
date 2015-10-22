sudo chown -R admin:admin DONTBACKUP/load-test/

sudo rm -rf DONTBACKUP/load-test/db/* && \
neo4j-import --into DONTBACKUP/load-test/db --id-type INTEGER \
  --nodes DONTBACKUP/companies.csv.gz --nodes DONTBACKUP/drugs.csv.gz \
  --relationships DONTBACKUP/companiesdrugs.csv.gz         

sudo chown -R neo4j:nogroup DONTBACKUP/load-test/
