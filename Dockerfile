FROM elek/bigdata-base:5
ENV CONF_DIR /opt/zookeeper/conf
ADD defaults/* defaults/
ADD url .
RUN wget `cat url` -O zookeeper.tar.gz && tar zxf zookeeper.tar.gz && rm zookeeper.tar.gz && mv /opt/zookeeper* /opt/zookeeper
CMD ["/opt/zookeeper/bin/zkServer.sh start-foreground"]
