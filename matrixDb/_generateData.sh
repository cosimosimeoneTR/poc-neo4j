mkdir /mnt/dataDisk/matrix 2>/dev/null 

export pids=""

nohup ./randomData.entities.matrixDb.py  A        50000000   /mnt/dataDisk/matrix/   > `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  B        50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  C        50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  D        50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  E        50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  F        50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  G        50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  H        50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  I        50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.entities.matrixDb.py  J        50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
  
nohup ./randomData.relations.matrixDb.py  A   J   50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  B   A   50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  C   B   50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  D   C   50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  E   D   50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  F   E   50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  G   F   50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  H   G   50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  I   H   50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  J   I   50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"

nohup ./randomData.relations.matrixDb.py  B   D   50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"
nohup ./randomData.relations.matrixDb.py  D   B   50000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1  &
pids="$pids $!"



wait $pids
