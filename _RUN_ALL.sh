sudo rm -rf DONTBACKUP/load-test/* && ./randomDrugsCompanyData.CSV.py && wc -l DONTBACKUP/*csv && ./neo4jImport.sh && sudo chown -R neo4j:nogroup DONTBACKUP/load-test/ && sudo service neo4j restart


