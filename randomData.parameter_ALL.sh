export pids=""
nohup ./randomData.parameter.py companies       &
pids="$pids $!"
nohup ./randomData.parameter.py companiesdrugs  &
pids="$pids $!"
nohup ./randomData.parameter.py diseases        &
pids="$pids $!"
nohup ./randomData.parameter.py drugs           &
pids="$pids $!"
nohup ./randomData.parameter.py drugsdiseases   &
pids="$pids $!"
nohup ./randomData.parameter.py drugsdrugs      &
pids="$pids $!"
nohup ./randomData.parameter.py trials          &
pids="$pids $!"
nohup ./randomData.parameter.py trialsdrugs     &
pids="$pids $!"

wait $pids
