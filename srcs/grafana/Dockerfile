FROM	alpine:3.12

#install

RUN		apk update && apk --no-cache add ca-certificates wget

RUN		wget https://dl.grafana.com/oss/release/grafana-7.5.4.linux-amd64.tar.gz && tar -zxvf grafana-7.5.4.linux-amd64.tar.gz
RUN 	wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN 	wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.33-r0/glibc-2.33-r0.apk && apk add glibc-2.33-r0.apk

EXPOSE  3000
WORKDIR /grafana-7.5.4
COPY	./srcs/grafana.db ./data/grafana.db
RUN		chmod +x ./data/grafana.db
CMD		["./bin/grafana-server"]