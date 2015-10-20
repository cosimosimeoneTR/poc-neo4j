sudo rm -rf DONTBACKUP/load-test && \
neo4j-import --into DONTBACKUP/load-test  --id-type INTEGER  \
  --nodes DONTBACKUP/companies.csv.gz --nodes DONTBACKUP/drugs.csv.gz --nodes DONTBACKUP/trials.csv.gz \
  --nodes DONTBACKUP/diseases.csv.gz   \
  --relationships DONTBACKUP/companiesdrugs.csv.gz --relationships DONTBACKUP/trialsdrugs.csv.gz    \
  --relationships DONTBACKUP/drugsdiseases.csv.gz  --relationships DONTBACKUP/drugsdrugs.csv.gz




