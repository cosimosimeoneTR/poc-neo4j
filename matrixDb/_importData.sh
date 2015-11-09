export dataDir=$1
export databaseDir=$2

if [ $# -ne 2 ]; then
   echo "Please pass data dir and database dir as parameter"
   exit 1
fi

cd $dataDir
sudo mkdir $databaseDir 2>/dev/null
sudo chown -R admin:admin $databaseDir

sudo rm -rf $databaseDir/messages.log $databaseDir/neostore* $databaseDir/schema/ $databaseDir/bad.log


neo4j-import --into $databaseDir --id-type INTEGER \
  --nodes entityA.csv.gz \
  --nodes entityB.csv.gz \
  --nodes entityC.csv.gz \
  --nodes entityD.csv.gz \
  --nodes entityE.csv.gz \
  --relationships entityB2entityA.csv.gz \
  --relationships entityB2entityD.csv.gz \
  --relationships entityC2entityB.csv.gz \
  --relationships entityD2entityB.csv.gz \
  --relationships entityD2entityC.csv.gz \
  --relationships entityE2entityD.csv.gz 


sudo chown -R neo4j:nogroup $databaseDir
