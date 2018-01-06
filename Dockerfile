FROM sdhibit/rpi-raspbian

RUN apt-get update && \
	apt-get upgrade -y && \
	apt-get clean

RUN apt-get install nginx -y \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Certs directory and remove default nginx.conf
RUN mkdir /etc/ssl/ && \
	mkdir /etc/ssl/certs && \
	mkdir /etc/ssl/certs/web/ && \
	mkdir /usr/share/nginx/html/fileserve && \
	rm /etc/nginx/nginx.conf

COPY files/nginx.conf /etc/nginx/
COPY files/http.conf /etc/nginx/conf.d/
COPY files/https.conf /etc/nginx/conf.d/
COPY files/index.html /usr/share/nginx/html/
COPY files/pool.txt /usr/share/nginx/html/fileserve/

CMD nginx -g 'daemon off;'