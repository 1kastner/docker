cd /AisLib
git pull
mvn clean install
java -jar ais-lib-cli/target/ais-lib-cli-2.1-SNAPSHOT.jar filedump $SOURCES -directory $DIRECTORY