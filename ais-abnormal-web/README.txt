How to run this docker image:

sudo docker run -P -e DB_HOST=... -e DB_PORT=... -e DB_INST=... -e DB_USER=... -e DB_PASS=... -e STAT_FILE=... -e WEB_PORT=... -v ...:/statdata 7b3107a01acb 

The host diretory mapped to /statdata must contain the file named $STAT_FILE (e.g. STAT_FILE=/statdata/stats-20130610-20140610-dwn5-grid200)

Use "sudo docker ps" to see which local port maps to port 80 (the webapp) in the container.

