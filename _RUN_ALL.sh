sudo rm -rf DONTBACKUP/load-test/* && \
./randomData.CSV.py && \
for file in `ls DONTBACKUP/*csv.gz`;do echo $file `zcat $file | wc -l`; done;echo ;echo  && \
./neo4jImport.sh && \
sudo chown -R neo4j:nogroup DONTBACKUP/load-test/ && \
echo ;echo "Restarting neo4jserver..." && \
sudo service neo4j restart && \
echo "DONE!"


