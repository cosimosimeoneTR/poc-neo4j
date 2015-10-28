mkdir /mnt/dataDisk/matrix 2>/dev/null 

export pids=""

nohup ./randomData.entities.matrixDb.py  A        5000000   /mnt/dataDisk/matrix/   > `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  B        5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  C        5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  D        5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  E        5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  F        5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  G        5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  H        5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  I        5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  J        5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
  
nohup ./randomData.relations.matrixDb.py  A   J   5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  B   A   5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  C   B   5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  D   C   5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  E   D   5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  F   E   5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  G   F   5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  H   G   5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  I   H   5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  J   I   5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"

nohup ./randomData.relations.matrixDb.py  B   D   5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  D   B   5000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"



wait $pids
