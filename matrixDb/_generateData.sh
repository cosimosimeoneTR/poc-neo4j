mkdir /mnt/dataDisk/matrix 2>/dev/null 

nohup ./randomData.entities.matrixDb.py  1        1000000   /mnt/dataDisk/matrix/   > `basename $0`.log  2>&1
nohup ./randomData.entities.matrixDb.py  2        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.entities.matrixDb.py  3        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.entities.matrixDb.py  4        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.entities.matrixDb.py  5        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.entities.matrixDb.py  6        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.entities.matrixDb.py  7        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.entities.matrixDb.py  8        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.entities.matrixDb.py  9        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.entities.matrixDb.py 10        1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
  
nohup ./randomData.relations.matrixDb.py  1  10   1000000   /mnt/dataDisk/matrix/   > `basename $0`.log  2>&1
nohup ./randomData.relations.matrixDb.py  2   1   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.relations.matrixDb.py  3   2   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.relations.matrixDb.py  4   3   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.relations.matrixDb.py  5   4   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.relations.matrixDb.py  6   5   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.relations.matrixDb.py  7   6   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.relations.matrixDb.py  8   7   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.relations.matrixDb.py  9   8   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1
nohup ./randomData.relations.matrixDb.py 10   9   1000000   /mnt/dataDisk/matrix/  >> `basename $0`.log  2>&1



