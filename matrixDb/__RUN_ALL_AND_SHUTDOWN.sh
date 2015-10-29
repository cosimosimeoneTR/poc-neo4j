set -x

touch zzz_STARTED_AT.log
#cd
#cd poc-neo4j-import/
git pull origin master
#cd
#cd poc-neo4j-stressTest/
#git pull origin master
cd
cd poc-neo4j-import/matrixDb/

date
curl -s http://instance-data/latest/meta-data/ami-id;echo;curl -s http://instance-data/latest/meta-data/instance-type;echo; curl -s http://instance-data/latest/meta-data/instance-id

echo -n "******************************************************* " && date
./_generateData.sh 
echo -n "******************************************************* " && date
./_importData.sh
echo -n "******************************************************* " && date


#cd
#cd poc-neo4j-stressTest/
#./recreateIndexes.sh
#echo -n "******************************************************* " && date

touch zzz_ENDED_AT.log
date
sudo shutdown -h now

