#!/bin/bash

LOCAL_DIR=`pwd`/../example-mysql-db

mkdir -p $LOCAL_DIR
docker run --name lolmysql -p 8836:3306  -v $LOCAL_DIR:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=mypassword -e VIRTUAL_HOST=mysql.local.me --rm mysql

# se connecter depuis un shell:
# mysql --user=root --host=127.0.0.1 --port=8836 --password=mypassword

# CREATE DATABASE lolmysql;
# USE lolmysql;
# CREATE TABLE lol (id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY, firstname VARCHAR(30) NOT NULL, seen INT(6) UNSIGNED);
# SHOW TABLES;
# INSERT INTO lol (firstname) VALUES ("bebert");
# SELECT * FROM lol;
