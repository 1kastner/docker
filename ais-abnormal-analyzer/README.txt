How to run this docker image:

sudo docker run -e DB_HOST=... -e DB_PORT=... -e DB_INST=... -e DB_USER=... -e DB_PASS=... -e AIS_SOURCE="tcp://...:..." -e STAT_FILE=/tmp/text -v ...:/statdata ff1b04f0c3ed

The host diretory mapped to /statdata must contain the file named $STAT_FILE (e.g. STAT_FILE=/statdata/stats-20130610-20140610-dwn5-grid200)

