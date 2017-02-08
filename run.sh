#!/bin/bash

docker run --name nginx-daemon \
	-v /home/dananichev/containers/nginx/conf.d:/etc/nginx/conf.d \
	-v /home/dananichev/projects:/projects \
	-v /etc/letsencrypt:/ssl \
	-d -p 80:80 -p 443:443 nginx-alpine

