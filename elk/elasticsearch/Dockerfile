FROM centos
ADD jdk1.8.0_131.tar.gz /usr/local
ADD elasticsearch-6.5.3.tar.gz /usr/local
RUN cd /usr/local && mv /usr/local/elasticsearch-6.5.3 /usr/local/elasticsearch && \
    useradd -M -s /sbin/nologin elk && \
    mv /usr/local/jdk1.8.0_131 /usr/local/jdk && \
    rm -rf /usr/local/elasticsearch/config/elasticsearch.yml && \
    mkdir -p /data/elk/elasticsearch/{data,logs} && \
    chown -R elk.elk /data

COPY elasticsearch.yml /usr/local/elasticsearch/config

RUN chown -R elk.elk /usr/local/elasticsearch

ENV JAVA_HOME /usr/local/jdk/
ENV PATH $PATH:$JAVA_HOME/bin
ENV CLASSPATH .:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:$CLASSPATH

EXPOSE 9200
EXPOSE 9300
CMD ["/usr/local/elasticsearch/bin/elasticsearch"] 
