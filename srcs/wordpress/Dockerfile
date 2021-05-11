FROM	alpine:3.12

#install

RUN		apk update && apk upgrade && apk add wget && apk add tar 
RUN		apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli
RUN		apk add php7-zlib php7-curl php7-mbstring php7-json php7-session && apk add nginx openssl supervisor

RUN		wget https://wordpress.org/latest.tar.gz && \
		tar -xvzf latest.tar.gz 
RUN		mv wordpress /var/www/localhost/htdocs && rm -f /var/www/localhost/htdocs/wordpress/wp-config-sample.php 
COPY	./srcs/supervisord.conf /etc/supervisord.conf
RUN		mkdir /run/nginx && mkdir -p /var/www/localhost/htdocs/wordpress/wp-content/uploads/2021/04

COPY	./srcs/123ка.jpg /var/www/localhost/htdocs/wordpress/wp-content/uploads/2021/04/
COPY	./srcs/nginx.conf /etc/nginx/conf.d/default.conf
COPY	./srcs/wp-config.php /var/www/localhost/htdocs/wordpress/wp-config.php
COPY	./srcs/init.sh /tmp/
RUN		chmod +x /tmp/init.sh

EXPOSE  5050
CMD		["/tmp/init.sh"]