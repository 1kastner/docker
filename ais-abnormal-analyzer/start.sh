cd /AisAbnormal
git fetch --all
git checkout $GIT_COMMIT
mvn clean install -DskipTests 
cd /AisAbnormal/ais-ab-analyzer/target/
unzip ais-ab-analyzer-0.1-SNAPSHOT-bundle.zip
cd ais-ab-analyzer-0.1-SNAPSHOT
./run-analyzer.sh $CONFIG_FILE

