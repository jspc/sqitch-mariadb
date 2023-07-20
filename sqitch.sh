#!/usr/bin/env bash

export MYSQL_PWD="${MARIADB_ROOT_PASSWORD}"

set -axe

: "${SQITCH_DATABASE_PASSWORD:=my-sqitch-password}"

mysql -u root -e "CREATE DATABASE sqitch ;"
mysql -u root -e "CREATE USER 'sqitch'@'%' IDENTIFIED BY '${SQITCH_DATABASE_PASSWORD}' ;"
mysql -u root -e "GRANT ALL PRIVILEGES on sqitch.* TO 'sqitch'@'%' ;"
mysql -u root -e "FLUSH PRIVILEGES ;"
