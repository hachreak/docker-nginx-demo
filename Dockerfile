FROM debian:latest

#RUN echo "deb http://nginx.org/packages/debian/ wheezy nginx" >> /etc/apt/sources.list.d/nginx.list
#RUN apt-key adv --fetch-keys "http://nginx.org/keys/nginx_signing.key"

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y dist-upgrade && apt-get -y install apt-utils
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install nginx

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY default /etc/nginx/sites-available/default

VOLUME ["/var/www"]

EXPOSE 80

CMD ["nginx"]
