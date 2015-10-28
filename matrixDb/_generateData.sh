mkdir /mnt/dataDisk/matrix 2>/dev/null 

export pids=""

nohup ./randomData.entities.matrixDb.py  A        1000000   /mnt/dataDisk/matrix/   > `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  B        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  C        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  D        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  E        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  F        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  G        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  H        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  I        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  J        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
  
nohup ./randomData.relations.matrixDb.py  A   J   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  B   A   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  C   B   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  D   C   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  E   D   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  F   E   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  G   F   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  H   G   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  I   H   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  J   I   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"

nohup ./randomData.relations.matrixDb.py  B   D   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  D   B   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"



wait $pids
