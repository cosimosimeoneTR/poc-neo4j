touch zzz_STARTED_AT.log

./_generateData.sh $1 && ./_importData.sh $1 $2

touch zzz_ENDED_AT.log
