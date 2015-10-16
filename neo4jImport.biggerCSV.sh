sudo rm -rf DONTBACKUP/load-test && \
time neo4j-import --into DONTBACKUP/load-test  --id-type INTEGER  \
  --nodes DONTBACKUP/companies.csv --nodes DONTBACKUP/drugs.csv --nodes DONTBACKUP/trials.csv \
  --nodes DONTBACKUP/diseases.csv   \
  --relationships DONTBACKUP/companiesdrugs.csv --relationships DONTBACKUP/trialsdrugs.csv    \
  --relationships DONTBACKUP/drugsdiseases.csv  --relationships DONTBACKUP/drugsdrugs.csv




