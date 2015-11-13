date
export dataDir=$1
export rowNums=$2
export attribNums=$3
export writeCommit=$4

if [ $# -ne 3 ]; then
   echo "Please pass path where you want files to be created,  row numbers, attrib numbers, and write commit"
   exit 1
fi

export logFileName=`basename $0`_`date +%Y%m%d_%H%M%S`.log


mkdir $dataDir 2>/dev/null
#rm -rf $dataDir/*z

export pids=""

pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   bioactive                   $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   biomarker                   $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   biomarkeruse                $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   clinicalstudies             $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   conditiondesease            $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   drugdruginteraction         $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   experimentalmodel           $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   experimentalpharmacology    $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   gene                        $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   genevariant                 $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   organization                $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   patent                      $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   pharmacokinetics            $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   protein                     $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   target                      $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.entities.matrixDb.py   toxicity                    $rowNums  $attribNums  $writeCommit  $dataDir  >> $logFileName  2>&1  &

pids="$pids $!";  sudo renice -20 $pids;wait $pids;export pids=""



pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    bioactive                         bioactive                 $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    bioactive                         conditiondesease          $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    bioactive                         drugdruginteraction       $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    bioactive                         target                    $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    biomarker                         biomarker                 $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    biomarker                         biomarkeruse              $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    biomarker                         gene                      $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    biomarker                         protein                   $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    biomarkeruse                      bioactive                 $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    biomarkeruse                      biomarkeruse              $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    biomarkeruse                      conditiondesease          $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    biomarkeruse                      genevariant               $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    biomarkeruse                      toxicity                  $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    clinicalstudies                   bioactive                 $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    clinicalstudies                   conditiondesease          $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    drugdruginteraction               bioactive                 $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    drugdruginteraction               toxicity                  $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    experimentalmodel                 bioactive                 $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    experimentalmodel                 conditiondesease          $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    experimentalmodel                 target                    $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    experimentalmodel                 toxicity                  $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    experimentalpharmacology          bioactive                 $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    experimentalpharmacology          biomarkeruse              $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    experimentalpharmacology          conditiondesease          $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    experimentalpharmacology          experimentalmodel         $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    experimentalpharmacology          target                    $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    experimentalpharmacology          toxicity                  $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    gene                              gene                      $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    gene                              genevariant               $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    gene                              protein                   $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    gene                              target                    $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    genevariant                       bioactive                 $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    genevariant                       conditiondesease          $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    genevariant                       toxicity                  $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    organization                      bioactive                 $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    organization                      bioactive                 $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    organization                      patent                    $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    patent                            bioactive                 $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    patent                            target                    $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    pharmacokinetics                  bioactive                 $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    protein                           gene                      $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    protein                           protein                   $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    protein                           target                    $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &
pids="$pids $!";  nohup ./randomData.relations.matrixDb.py    target                            target                    $rowNums  $attribNums  0  $writeCommit  $dataDir  >> $logFileName  2>&1  &


pids="$pids $!";  sudo renice -20 $pids;wait $pids;export pids=""

date