sudo rm -rf DONTBACKUP/load-test && \
neo4j-import --into DONTBACKUP/load-test --id-type INTEGER \
  --nodes DONTBACKUP/companies.csv.gz --nodes DONTBACKUP/drugs.csv.gz \
  --relationships DONTBACKUP/companiesdrugs.csv.gz         




