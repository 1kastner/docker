sed -i "s/PLACEHOLDER/${SERVER}:${PORT}/g" CONFIG.xml
sed -i "s/<source>.*<\/source>/<source>${SOURCE}<\/source>/g" CONFIG.xml

/bin/bash coverage.sh -file CONFIG.xml
