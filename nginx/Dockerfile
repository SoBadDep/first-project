FROM nginx:latest
WORKDIR /usr/share/nginx/html
RUN apt-get -y update && apt-get install -y nginx
COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf
COPY /usr/local/apache2/htdocs/index.html /usr/share/nginx/html
CMD ["nginx", "-g", "daemon off;"]
