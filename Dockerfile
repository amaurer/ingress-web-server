FROM sdhibit/rpi-raspbian

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get update
RUN apt-get clean

RUN apt-get install nginx -y

# Certs directory and remove default nginx.conf
RUN mkdir /etc/ssl/ && mkdir /etc/ssl/certs && mkdir /etc/ssl/certs/web/ && rm /etc/nginx/nginx.conf

COPY files/nginx.conf /etc/nginx/
COPY files/http.conf /etc/nginx/conf.d/
COPY files/https.conf /etc/nginx/conf.d/

CMD nginx -g 'daemon off;'