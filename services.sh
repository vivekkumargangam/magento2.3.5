#!/bin/sh
#starting nginx
service nginx start
watch netstat -tulpn
