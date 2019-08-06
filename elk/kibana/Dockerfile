FROM centos

ADD kibana-6.5.3-linux-x86_64.tar.gz /usr/local/

RUN cd /usr/local/ && mv kibana-6.5.3-linux-x86_64 kibana && \
    mkdir -p /data/kibana/logs/kibana.log && \
    rm -rf /usr/local/kibana/config/kibana.yml

COPY kibana.yml /usr/local/kibana/config/

EXPOSE 5601

CMD ["/usr/local/kibana/bin/kibana"]
