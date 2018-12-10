#!/bin/bash

LOCAL_DIR=`pwd`/../example-mysql-db

mkdir -p $LOCAL_DIR
docker run --name lolmysql -p 8836:3306  -v $LOCAL_DIR:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=mypassword -e VIRTUAL_HOST=mysql.local.me --rm mysql

# se connecter depuis un shell:
# mysql --user=root --host=127.0.0.1 --port=8836 --password=mypassword
