FROM debian:bullseye

EXPOSE 3306

RUN apt-get update -y && apt-get upgrade -y && apt-get install mariadb-server -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/init.sh /etc/mysql/init.sh

RUN chmod +x /etc/mysql/init.sh

ENTRYPOINT ["/etc/mysql/init.sh"]
CMD ["mariadbd"]
