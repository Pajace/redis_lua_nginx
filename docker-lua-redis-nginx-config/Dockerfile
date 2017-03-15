FROM busybox
RUN mkdir -p /etc/nginx/conf.d && mkdir -p /tmp/s3/cache
COPY conf.d/nginx_server.conf.tmpl /etc/nginx/conf.d/
VOLUME ["/etc/nginx/conf.d", "/tmp/s3/cache"]
CMD sleep 3650d