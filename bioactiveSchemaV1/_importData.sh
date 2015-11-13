export dataDir=$1
export databaseDir=$2

if [ $# -ne 2 ]; then
   echo "Please pass data dir and database dir as parameter"
   exit 1
fi

date

export logFileName=$databaseDir/`basename $0`_`date +%Y%m%d_%H%M%S`.log

curl -s http://instance-data/latest/meta-data/ami-id           >> $logFileName
curl -s http://instance-data/latest/meta-data/instance-type    >> $logFileName
curl -s http://instance-data/latest/meta-data/instance-id      >> $logFileName


cd $dataDir
sudo mkdir $databaseDir 2>/dev/null
sudo chown -R admin:admin $databaseDir

cp $databaseDir/messages.log $databaseDir/messages_PRE`date +%Y%m%d_%H%M%S`.log
sudo rm -rf $databaseDir/messages.log $databaseDir/neostore* $databaseDir/schema/ $databaseDir/bad.log


neo4j-import          \
  --into $databaseDir \
  --id-type INTEGER   \
  --nodes   bioactive.csv.gz                     \
  --nodes   biomarker.csv.gz                     \
  --nodes   biomarkeruse.csv.gz                  \
  --nodes   clinicalstudies.csv.gz               \
  --nodes   conditiondesease.csv.gz              \
  --nodes   drugdruginteraction.csv.gz           \
  --nodes   experimentalmodel.csv.gz             \
  --nodes   experimentalpharmacology.csv.gz      \
  --nodes   gene.csv.gz                          \
  --nodes   genevariant.csv.gz                   \
  --nodes   organization.csv.gz                  \
  --nodes   patent.csv.gz                        \
  --nodes   pharmacokinetics.csv.gz              \
  --nodes   protein.csv.gz                       \
  --nodes   target.csv.gz                        \
  --nodes   toxicity.csv.gz                      \
  --relationships   bioactive2bioactive.csv.gz                             \
  --relationships   bioactive2conditiondesease.csv.gz                      \
  --relationships   bioactive2drugdruginteraction.csv.gz                   \
  --relationships   bioactive2target.csv.gz                                \
  --relationships   biomarker2biomarker.csv.gz                             \
  --relationships   biomarker2biomarkeruse.csv.gz                          \
  --relationships   biomarker2gene.csv.gz                                  \
  --relationships   biomarker2protein.csv.gz                               \
  --relationships   biomarkeruse2bioactive.csv.gz                          \
  --relationships   biomarkeruse2biomarkeruse.csv.gz                       \
  --relationships   biomarkeruse2conditiondesease.csv.gz                   \
  --relationships   biomarkeruse2genevariant.csv.gz                        \
  --relationships   biomarkeruse2toxicity.csv.gz                           \
  --relationships   clinicalstudies2bioactive.csv.gz                       \
  --relationships   clinicalstudies2conditiondesease.csv.gz                \
  --relationships   drugdruginteraction2bioactive.csv.gz                   \
  --relationships   drugdruginteraction2toxicity.csv.gz                    \
  --relationships   experimentalmodel2bioactive.csv.gz                     \
  --relationships   experimentalmodel2conditiondesease.csv.gz              \
  --relationships   experimentalmodel2target.csv.gz                        \
  --relationships   experimentalmodel2toxicity.csv.gz                      \
  --relationships   experimentalpharmacology2bioactive.csv.gz              \
  --relationships   experimentalpharmacology2biomarkeruse.csv.gz           \
  --relationships   experimentalpharmacology2conditiondesease.csv.gz       \
  --relationships   experimentalpharmacology2experimentalmodel.csv.gz      \
  --relationships   experimentalpharmacology2target.csv.gz                 \
  --relationships   experimentalpharmacology2toxicity.csv.gz               \
  --relationships   gene2gene.csv.gz                                       \
  --relationships   gene2genevariant.csv.gz                                \
  --relationships   gene2protein.csv.gz                                    \
  --relationships   gene2target.csv.gz                                     \
  --relationships   genevariant2bioactive.csv.gz                           \
  --relationships   genevariant2conditiondesease.csv.gz                    \
  --relationships   genevariant2toxicity.csv.gz                            \
  --relationships   organization2bioactive.csv.gz                          \
  --relationships   organization2bioactive.csv.gz                          \
  --relationships   organization2patent.csv.gz                             \
  --relationships   patent2bioactive.csv.gz                                \
  --relationships   patent2target.csv.gz                                   \
  --relationships   pharmacokinetics2bioactive.csv.gz                      \
  --relationships   protein2gene.csv.gz                                    \
  --relationships   protein2protein.csv.gz                                 \
  --relationships   protein2target.csv.gz                                  \
  --relationships   target2target.csv.gz                                   \
  >> $logFileName 2>&1

#pid="$!"

#sudo renice -20 $pid
#wait $pid

echo "chown-ing..."
sudo chown -R neo4j:nogroup $databaseDir
echo IMPORT DONE
date
