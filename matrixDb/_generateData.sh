export dataDir=$1

if [ $# -ne 1 ]; then
   echo "Please pass path where you want files to be created"
   exit 1
fi


mkdir $dataDir 2>/dev/null 
rm -rf $dataDir/*z

export pids=""

nohup ./randomData.entities.matrixDb.py  A        200000000   $dataDir   > `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  B        200000000   $dataDir  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  C        200000000   $dataDir  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  D        200000000   $dataDir  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  E        200000000   $dataDir  >> `basename $0`.log  2>&1  &
pids="$pids $!"
#nohup ./randomData.entities.matrixDb.py  F        200000000   $dataDir  >> `basename $0`.log  2>&1  &
#pids="$pids $!"
#nohup ./randomData.entities.matrixDb.py  G        200000000   $dataDir  >> `basename $0`.log  2>&1  &
#pids="$pids $!"
#nohup ./randomData.entities.matrixDb.py  H        200000000   $dataDir  >> `basename $0`.log  2>&1  &
#pids="$pids $!"

#sudo renice -20 $pids
#wait $pids
#export pids=""

#nohup ./randomData.entities.matrixDb.py  I        200000000   $dataDir  >> `basename $0`.log  2>&1  &
#pids="$pids $!"
#nohup ./randomData.entities.matrixDb.py  J        200000000   $dataDir  >> `basename $0`.log  2>&1  &
#pids="$pids $!"
#nohup ./randomData.relations.matrixDb.py  A   J   200000000   $dataDir  >> `basename $0`.log  2>&1  &
#pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  B   A   200000000   $dataDir  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  C   B   200000000   $dataDir  >> `basename $0`.log  2>&1  &
pids="$pids $!"

#sudo renice -20 $pids
#wait $pids
#export pids=""

nohup ./randomData.relations.matrixDb.py  D   C   200000000   $dataDir  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  E   D   200000000   $dataDir  >> `basename $0`.log  2>&1  &
pids="$pids $!"
#nohup ./randomData.relations.matrixDb.py  F   E   200000000   $dataDir  >> `basename $0`.log  2>&1  &
#pids="$pids $!"
#nohup ./randomData.relations.matrixDb.py  G   F   200000000   $dataDir  >> `basename $0`.log  2>&1  &
#pids="$pids $!"
#nohup ./randomData.relations.matrixDb.py  H   G   200000000   $dataDir  >> `basename $0`.log  2>&1  &
#pids="$pids $!"
#nohup ./randomData.relations.matrixDb.py  I   H   200000000   $dataDir  >> `basename $0`.log  2>&1  &
#pids="$pids $!"
#nohup ./randomData.relations.matrixDb.py  J   I   200000000   $dataDir  >> `basename $0`.log  2>&1  &
#pids="$pids $!"

#sudo renice -20 $pids
#wait $pids
#export pids=""

nohup ./randomData.relations.matrixDb.py  B   D   200000000   $dataDir  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  D   B   200000000   $dataDir  >> `basename $0`.log  2>&1  &
pids="$pids $!"



sudo renice -20 $pids
wait $pids
export pids=""
