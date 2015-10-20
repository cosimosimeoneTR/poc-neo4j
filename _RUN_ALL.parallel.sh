sudo rm -rf DONTBACKUP/load-test/* && \
./randomData.parameter_ALL.sh && \
for file in `ls DONTBACKUP/*csv.gz`;do echo $file `zcat $file | wc -l`; done;echo ;echo  && \
./neo4jImport.biggerCSV.sh && \
echo ;echo "Restarting neo4jserver..." && \
sudo chown -R neo4j:nogroup DONTBACKUP/load-test/ && \
sudo service neo4j restart && \
echo "DONE!"



