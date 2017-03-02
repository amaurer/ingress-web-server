# Ingress Web Server
Docker files and config for my ingress web server at home. Built on top of https://github.com/sdhibit/docker-rpi-raspbian and is for the ARMv7 processor - specifically, a Raspberry Pi3.

## Build like
`docker build -t amaurer/ingress_web_server --no-cache -t amaurer/ingress_web_server:x.x .`

## Run like...
`docker run -d --restart=always -p 80:80 -p 443:443 -v /etc/ssl/certs/web/:/etc/ssl/certs/web/ -v /var/log/ingress_web_server/:/var/log/nginx/ --name ingress_web amaurer/ingress_web_server`

OR

`docker-compose up`