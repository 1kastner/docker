cd /AisView
mvn clean install
java -jar target/ais-view-0.2-SNAPSHOT.jar $SOURCES -backup $BACKUP -database $DATABASE