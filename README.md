# Ingress Web Server
Docker files and config for my ingress web server at home. Built on top of https://github.com/sdhibit/docker-rpi-raspbian and is for the ARMv7 processor - specifically, a Raspberry Pi3.

## Build like (--no-cache if you want updated apt-get)
`docker build -t amaurer/ingress_web_server:x.x .`

## Run like...
`docker run -d --restart=always -p 80:80 -p 443:443 -v /etc/ssl/certs/web/:/etc/ssl/certs/web/ -v /home/pi/ingress_web_server/logs/:/var/log/nginx/ -v /home/pi/ingress_web_server/fileserve/:/usr/share/nginx/html/fileserve/ --name ingress_web amaurer/ingress_web_server:x.x`

OR

`docker-compose up`
