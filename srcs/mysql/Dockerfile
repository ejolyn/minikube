FROM	alpine:3.12

#install

RUN		apk update && apk upgrade && apk add openrc --no-cache supervisor
RUN		apk add mysql mysql-client mariadb

COPY	./srcs/supervisord.conf /etc/supervisord.conf
# RUN		rm -rf /etc/my.cnf*
COPY	./srcs/my.cnf /etc/mysql/
COPY	./srcs/wordpress.sql .

EXPOSE  3306

COPY	./srcs/init.sh /tmp/
RUN		chmod +x /tmp/init.sh
# VOLUME ["/var/lib/mysql"]

CMD		["/tmp/init.sh"]