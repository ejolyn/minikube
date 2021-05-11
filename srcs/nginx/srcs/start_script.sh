#!/bin/sh

ssh-keygen -A
nginx -g 'daemon off;'
# /usr/bin/supervisord -c /etc/supervisord.conf