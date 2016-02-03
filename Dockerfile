FROM nginx:latest

ENV CONSUL_URL consul:8500

RUN rm -v /etc/nginx/conf.d/\*.conf

COPY run.sh /
COPY consul-template /usr/local/bin/
COPY nginx.ctmpl /
ONBUILD COPY nginx.ctmpl /

CMD ["/run.sh"]