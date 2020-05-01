ARG BASE=36
FROM flokkr/base:${BASE}
ARG ARTIFACTDIR
ENV PATH $PATH:/opt/zookeeper/bin
ENV CONF_DIR /opt/zookeeper/conf
RUN useradd --uid 1000 zookeeper --gid 1000 -G flokkr --home /opt/zookeeper && chown zookeeper /opt
USER zookeeper
ADD 013_zookeeper /opt/launcher/plugins/013_zookeeper
RUN sudo chmod o+x /opt/launcher/plugins/013_zookeeper/zookeeper.sh
ADD --chown=zookeeper:flokkr ${ARTIFACTDIR} /opt/zookeeper
WORKDIR /opt/zookeeper
CMD ["/opt/zookeeper/bin/zkServer.sh start-foreground"]
