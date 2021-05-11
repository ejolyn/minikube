FROM	alpine:3.12

#install

RUN		apk update && apk upgrade
RUN		apk add nginx openssl openssh supervisor

# RUN		wget https://dl.influxdata.com/telegraf/releases/telegraf-1.18.1_linux_amd64.tar.gz && tar -zxvf telegraf-1.18.1_linux_amd*64.tar.gz
COPY	./srcs/nginx.conf /etc/nginx/conf.d/default.conf
COPY	./srcs/supervisord.conf /etc/supervisord.conf
COPY	./srcs/nginx-selfsigned.crt /etc/ssl/certs/
COPY	./srcs/nginx-selfsigned.key /etc/ssl/private/
# COPY	./srcs/telegraf.conf /etc/telegraf.conf

COPY		./srcs/start_script.sh /tmp/
RUN			chmod +x /tmp/start_script.sh
EXPOSE		80 443
RUN			mkdir -p /run/nginx && mkdir -p /var/www/localhost/htdocs/wordpress && mkdir -p /var/www/localhost/htdocs/phpmyadmin 
CMD			["/tmp/start_script.sh"]
