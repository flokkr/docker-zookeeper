FROM flokkr/base:29
ARG URL
ENV PATH $PATH:/opt/zookeeper/bin
ENV CONF_DIR /opt/zookeeper/conf
ADD 013_zookeeper /opt/launcher/plugins/013_zookeeper
RUN sudo chmod o+x /opt/launcher/plugins/013_zookeeper/zookeeper.sh
RUN wget $URL -O zookeeper.tar.gz && tar zxf zookeeper.tar.gz && rm zookeeper.tar.gz && mv /opt/zookeeper* /opt/zookeeper
WORKDIR /opt/zookeeper
CMD ["/opt/zookeeper/bin/zkServer.sh start-foreground"]
