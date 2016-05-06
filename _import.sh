sudo rm -rf /mnt/databaseDisk/databases/relCnt/*

sudo chown -R admin:admin /mnt/databaseDisk/databases/relCnt


neo4j-import          \
  --into /mnt/databaseDisk/databases/relCnt         \
  --id-type string   \
--nodes /tmp/import_Neo4j/Bioactives.csv                             \
--nodes /tmp/import_Neo4j/BiologicalProcess.csv                      \
--nodes /tmp/import_Neo4j/Conditions.csv                             \
--nodes /tmp/import_Neo4j/ExperimentalPharmacology.csv               \
--nodes /tmp/import_Neo4j/PathwayNodes.csv                           \
--nodes /tmp/import_Neo4j/Targets.csv                                \
--relationships /tmp/import_Neo4j/TargetsRelBioactives.csv           \
--relationships /tmp/import_Neo4j/TargetsRelConditions.csv           \
--relationships /tmp/import_Neo4j/TargetsRelExp.csv                  \
--relationships /tmp/import_Neo4j/BiologicalProcessHierarchy.csv     \
--relationships /tmp/import_Neo4j/ConditionsHierarchy.csv            \
--relationships /tmp/import_Neo4j/ExpRelBioactives.csv               \
--relationships /tmp/import_Neo4j/PathwayNodeRelNode.csv             \
--relationships /tmp/import_Neo4j/PathwayNodeRelTarget.csv

sudo chown -R neo4j:nogroup /mnt/databaseDisk/databases/relCnt

sudo service neo4j restart
sleep 5

neo4j-shell -c "create constraint on (e:Bioactive                  ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:Target                  ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:Condition                  ) assert e.id is unique;"
neo4j-shell -c "schema ls"



