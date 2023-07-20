FROM mariadb:lts

ADD sqitch.sh /docker-entrypoint-initdb.d/sqitch.sh
