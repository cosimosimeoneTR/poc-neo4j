date

curl -s http://instance-data/latest/meta-data/ami-id
echo
curl -s http://instance-data/latest/meta-data/instance-type
echo
curl -s http://instance-data/latest/meta-data/instance-id
echo
set -x
date
sudo service neo4j restart
date
neo4j-shell -c "create constraint on (e:nodeONE                  ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:nodeTWO                  ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:nodeTHREE                ) assert e.id is unique;"


neo4j-shell -c "schema ls"

#watch 'date;neo4j-shell -c "schema ls"'

date
