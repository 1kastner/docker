FROM kaspernielsen/javabox

RUN apt-get install maven -y
RUN git clone https://github.com/dma-ais/AisAbnormal.git /AisAbnormal
RUN (cd /AisAbnormal; mvn install -DskipTests; cd ais-ab-analyzer/target/; unzip ais-ab-analyzer-0.1-SNAPSHOT-bundle.zip)

VOLUME /statdata

ADD ./start.sh /start.sh

CMD ["/bin/bash", "/start.sh"]
