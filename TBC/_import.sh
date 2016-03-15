sudo rm -rf /mnt/databaseDisk/TBC/*

sudo chown -R admin:admin /mnt/databaseDisk/TBC


neo4j-import          \
  --into /mnt/databaseDisk/TBC \
  --id-type integer   \
  --nodes bioactives.csv.gz     \
  --nodes condition.csv.gz      \
  --nodes target.csv.gz         \
  --relationships condition2condition.csv.gz     \
  --relationships target2bioactive.csv.gz        \
  --relationships target2condition.csv.gz        \

sudo chown -R neo4j:nogroup /mnt/databaseDisk/TBC

sudo service neo4j restart

neo4j-shell -c "create constraint on (e:bioactive                  ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:target                  ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:condition                  ) assert e.id is unique;"
neo4j-shell -c "schema ls"



