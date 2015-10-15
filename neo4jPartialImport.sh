sudo rm -rf DONTBACKUP/load-test && \
time neo4j-import --into DONTBACKUP/load-test --id-type INTEGER \
  --nodes DONTBACKUP/companies.csv --nodes DONTBACKUP/drugs.csv \
  --relationships DONTBACKUP/companiesdrugs.csv         




