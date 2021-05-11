#!/bin/bash

minikube start --vm-driver=virtualbox --cpus 2 --memory 3000
eval $(minikube docker-env)
minikube addons enable metallb
docker pull metallb/speaker:v0.8.2
docker pull metallb/controller:v0.8.2

# сборка образов
docker build -t nginx_image ./srcs/nginx
docker build -t wordpress_image ./srcs/wordpress
docker build -t mysql_image ./srcs/mysql
docker build -t php_image ./srcs/phpmyadmin 
docker build -t grafana_image ./srcs/grafana
docker build -t influx_image ./srcs/influxdb
docker build -t ftps_image ./srcs/ftps

# применение ямээлов
kubectl apply -f ./srcs/nginx/srcs/nginx.yaml
kubectl apply -f ./srcs/nginx/srcs/configmap.yaml
kubectl apply -f ./srcs/wordpress/srcs/wordpress.yaml
kubectl apply -f ./srcs/mysql/srcs/mysql.yaml
kubectl apply -f ./srcs/phpmyadmin/srcs/phpmyadmin.yaml
kubectl apply -f ./srcs/grafana/srcs/grafana.yaml
kubectl apply -f ./srcs/influxdb/srcs/influx.yaml
kubectl apply -f ./srcs/ftps/srcs/ftps.yaml