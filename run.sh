#!/bin/bash

service nginx start
consul-template -consul=$CONSUL_URL -template="/nginx.ctmpl:/etc/nginx/conf.d/service.conf:service nginx reload"