FROM centos

ADD redis-4.0.10.tar.gz /usr/src

RUN yum -y install gcc gcc-c++ make tar openssl openssl-devel cmake && \
    cd /usr/src/redis-4.0.10/ && make && make MALLOC=jemalloc && \
    make PREFIX=/usr/local/redis install && \
    cd /usr/local/redis && mkdir -p /usr/local/redis/conf && \
    ln -s /usr/local/redis/bin/* /usr/local/bin/ && \
    mkdir -p /data/redis/
COPY redis.conf /usr/local/redis/conf
EXPOSE 6379
CMD ["redis-server","/usr/local/redis/conf/redis.conf"]
