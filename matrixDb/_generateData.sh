mkdir /mnt/dataDisk/matrix 2>/dev/null 

export pids=""

nohup ./randomData.entities.matrixDb.py  A        10000000   /mnt/dataDisk/matrix/   > `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  B        10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  C        10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  D        10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  E        10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  F        10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  G        10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  H        10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  I        10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  J        10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
  
nohup ./randomData.relations.matrixDb.py  A   J   10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  B   A   10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  C   B   10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  D   C   10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  E   D   10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  F   E   10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  G   F   10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  H   G   10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  I   H   10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  J   I   10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"

nohup ./randomData.relations.matrixDb.py  B   D   10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  D   B   10000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"



wait $pids
