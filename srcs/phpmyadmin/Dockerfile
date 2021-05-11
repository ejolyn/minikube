FROM	alpine:3.12

WORKDIR /var/www/
#install

RUN		apk update && apk upgrade && apk add wget && apk add tar 
RUN		apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli
RUN		apk add php7-zlib php7-curl php7-mbstring php7-json php7-session && apk add nginx openssl supervisor

COPY	./srcs/nginx.conf /etc/nginx/conf.d/default.conf
COPY	./srcs/supervisord.conf /etc/supervisord.conf
COPY	./srcs/init.sh .

RUN		mkdir /run/nginx
RUN		chmod +x init.sh
RUN		wget https://files.phpmyadmin.net/phpMyAdmin/5.0.4/phpMyAdmin-5.0.4-all-languages.tar.gz \
		&& tar -xvzf phpMyAdmin-5.0.4-all-languages.tar.gz
RUN		mv phpMyAdmin-5.0.4-all-languages phpMyAdmin
COPY	./srcs/config.inc.php /var/www/phpMyAdmin/

EXPOSE	5000

CMD		["/var/www/init.sh"]