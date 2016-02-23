set -x
date
./constraintDrop.sh
neo4j-shell -c "schema ls"
./constraintCreate.sh
date
