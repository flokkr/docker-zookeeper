FROM flokkr/base:17
ENV PATH $PATH:/opt/zookeeper/bin
ENV CONF_DIR /opt/zookeeper/conf
ADD url .
RUN wget `cat url` -O zookeeper.tar.gz && tar zxf zookeeper.tar.gz && rm zookeeper.tar.gz && mv /opt/zookeeper* /opt/zookeeper
WORKDIR /opt/zookeeper
CMD ["/opt/zookeeper/bin/zkServer.sh start-foreground"]
