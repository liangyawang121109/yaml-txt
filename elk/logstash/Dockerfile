FROM centos

ADD logstash-6.5.3.tar.gz /usr/local

RUN cd /usr/local && mv /usr/local/logstash-6.5.3 /usr/local/logstash && \
    mkdir /usr/local/logstash/config/conf.d

COPY nginx.conf /usr/local/logstash/config/conf.d

CMD ["/usr/local/logstash/bin/logstash","-f","/usr/local/logstash/config/conf.d/nginx.conf"]
