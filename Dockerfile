FROM sdhibit/rpi-raspbian

RUN apt-get update

RUN apt-get install openssl -y

RUN apt-get install nginx -y

# A place for more apps
RUN mkdir /usr/share/nginx/apps

# Certs
RUN mkdir /etc/ssl/certs/web/

# Communication folder for containers and host
RUN mkdir /var/run/commbus/

#nginx Config
RUN rm /etc/nginx/nginx.conf
COPY files/nginx.conf /etc/nginx/
COPY files/http.conf /etc/nginx/conf.d/
COPY files/https.conf /etc/nginx/conf.d/
