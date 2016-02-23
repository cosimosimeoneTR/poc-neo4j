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
neo4j-shell -c "create constraint on (e:bioactive                  ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:biomarker                  ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:biomarkeruse               ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:clinicalstudies            ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:conditiondesease           ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:drugdruginteraction        ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:experimentalmodel          ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:experimentalpharmacology   ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:gene                       ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:genevariant                ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:organization               ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:patent                     ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:pharmacokinetics           ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:protein                    ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:target                     ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:toxicity                   ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:UnkNode17                   ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:UnkNode18                   ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:UnkNode19                   ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:UnkNode20                   ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:UnkNode21                   ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:UnkNode22                   ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:UnkNode23                   ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:UnkNode24                   ) assert e.id is unique;"
neo4j-shell -c "create constraint on (e:UnkNode25                   ) assert e.id is unique;"


neo4j-shell -c "schema ls"

#watch 'date;neo4j-shell -c "schema ls"'

date
