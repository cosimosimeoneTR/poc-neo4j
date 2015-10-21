export pids=""
nohup ./randomData.parameter.py trials          &
pids="$pids $!"
nohup ./randomData.parameter.py trialsdrugs     &
pids="$pids $!"

wait $pids
