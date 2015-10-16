sudo rm -rf DONTBACKUP/load-test/* && ./randomDrugsCompanyData.biggerCSV.py && wc -l DONTBACKUP/*csv && ./neo4jImport.biggerCSV.sh && sudo chown -R neo4j:nogroup DONTBACKUP/load-test/ && sudo service neo4j restart


