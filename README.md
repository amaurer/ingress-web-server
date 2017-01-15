# Ingress Web Server
Docker files and config for my Ingress web server at home

## Build like
`docker build -t amaurer/ingress_web_server -t amaurer/ingress_web_server:0.1 . `

## Run like...
`docker-compose up`
`docker run -p 80:80 -p 443:443 -v /etc/ssl/certs/web/:/etc/ssl/certs/web/ -v /var/run/commbus/:/var/run/commbus/ amaurer/ingress_web_server `
`docker run -p 80:80 -p 443:443 -v /Users/andrew/certs/:/etc/ssl/certs/web/ -v /Users/andrew/commbus/:/var/run/commbus/ -it amaurer/ingress_web_server` 
`docker run -p 80:80 -p 443:443 -v /etc/ssl/certs/web/:/etc/ssl/certs/web/ -v /var/run/commbus/:/var/run/commbus/ -it amaurer/ingress_web_server` 
