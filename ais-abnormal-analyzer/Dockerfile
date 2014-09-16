FROM tbsalling/javabox
VOLUME /data
ADD ./start.sh /start.sh
RUN git clone https://github.com/dma-ais/AisAbnormal.git /AisAbnormal
RUN cd /AisAbnormal; mvn install # pre-load local maven repo 
CMD ["/bin/bash", "/start.sh"]
