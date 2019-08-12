FROM centos
ADD nginx-1.16.0.tar.gz /usr/src/
RUN yum -y install pcre-devel pcre zlib zlib-devel \
    opensll openssl-devel gcc gcc-c++ make && \
    cd /usr/src/nginx-1.16.0 &&  \
    ./configure --prefix=/usr/local/nginx \
    --with-http_stub_status_module \
    --with-http_gzip_static_module \
    --with-http_realip_module \
    --with-http_sub_module \
    --with-http_ssl_module  && \
    make && make install && \
    yum -y clean all && \
    rm -rf /usr/local/nginx/conf/nginx.conf && \
    rm -rf /usr/local/nginx/html/index.html && \
    ln -s /usr/local/nginx/sbin/nginx /usr/local/bin/
COPY nginx.conf /usr/local/nginx/conf/
COPY index.html /usr/local/nginx/html/
CMD ["nginx"]
