curl -s http://instance-data/latest/meta-data/ami-id
curl -s http://instance-data/latest/meta-data/instance-type
curl -s http://instance-data/latest/meta-data/instance-id
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


#watch 'date;neo4j-shell -c "schema ls"'
