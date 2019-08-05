FROM centos
ADD mysql-5.7.19-linux-glibc2.12-x86_64.tar.gz /usr/local
RUN cd /usr/local && \
    yum install -y libaio numactl && \
    mv mysql-5.7.19-linux-glibc2.12-x86_64/ mysql && \
    mkdir /usr/local/mysql/data && mkdir /usr/local/mysql/binlogs && \
    useradd -M -s /sbin/nologin mysql && \
    chown -R mysql.mysql /usr/local/mysql/ && \
    rm -rf /etc/my.cnf && \
    ln -s /usr/local/mysql/bin/* /usr/bin/
COPY my.cnf /etc/
COPY mysql.sh /usr/local/
CMD ["/bin/bash","/usr/local/mysql.sh"]

