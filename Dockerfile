FROM alpine

LABEL maintainer="bjoern@intevation.de"

RUN apk upgrade -U && \
    apk add mapserver --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
    apk add apache2

RUN mkdir -p /run/apache2
RUN sed -i -e 's/#LoadModule\ cgid_module/LoadModule\ cgid_module/g' /etc/apache2/httpd.conf
RUN sed -i -e 's/#LoadModule\ cgi_module/LoadModule\ cgi_module/g' /etc/apache2/httpd.conf
RUN echo 'Header set Access-Control-Allow-Origin "*"' >> /etc/apache2/conf.d/default.conf

RUN ln -s /usr/bin/mapserv /var/www/localhost/cgi-bin/mapserv

ENV MS_DEBUGLEVEL 0
ENV MS_ERRORFILE stderr
ENV MAX_REQUESTS_PER_PROCESS 1000

EXPOSE 80

CMD ["/usr/sbin/httpd","-DFOREGROUND"]
