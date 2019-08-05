#!/bin/bash

mysqld --initialize --user=mysql --basedir=/usr/local/mysql --datadir=/usr/local/mysql/data
paswd=`grep 'temporary password' /usr/local/mysql/error.log | awk '{print $NF}'`
cat >> /usr/local/.my.cnf << EOF
[mysql]
host = localhost
user = root
password = $paswd
[mysqladmin]
host = localhost
user = root
password = $paswd
EOF
mysqld_safe --defaults-file=/etc/my.cnf
