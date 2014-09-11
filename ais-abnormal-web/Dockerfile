FROM kaspernielsen/javabox

RUN apt-get install maven -y
RUN git clone https://github.com/dma-ais/AisAbnormal.git /AisAbnormal
RUN (cd /AisAbnormal; mvn install; cd ais-ab-web/target/; unzip ais-ab-web-0.1-SNAPSHOT-bundle.zip)

VOLUME /statdata

ADD ./start.sh /start.sh

EXPOSE 80

CMD ["/bin/bash", "/start.sh"]
