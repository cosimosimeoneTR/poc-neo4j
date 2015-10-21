sudo rm -rf DONTBACKUP/load-test/db/* && \
./randomData.parameter_ALL.sh >/dev/null 2>&1 && \
for file in `ls DONTBACKUP/*csv.gz`;do echo $file `zcat $file | wc -l`; done;echo ;echo  && \
./neo4jImport.biggerCSV.sh && \
echo ;echo "Restarting neo4jserver..." && \
sudo chown -R neo4j:nogroup DONTBACKUP/load-test/ && \
sudo service neo4j restart && \
echo "DONE!"



