touch zzz_STARTED_AT.log

./_generateData.sh && ./_importData.sh

touch zzz_ENDED_AT.log

sudo shutdown -h now

