FROM kaspernielsen/javabox

RUN apt-get install maven -y
RUN mkdir -p /data
RUN git clone https://github.com/dma-ais/AisView /AisView
RUN (cd /AisView; mvn clean install)

ADD ./start.sh /start.sh

EXPOSE 8090

ENV SOURCES sourceName=1.2.3.4
ENV BACKUP /data/
ENV DATABASE localhost

CMD ["/bin/bash", "/start.sh"]
