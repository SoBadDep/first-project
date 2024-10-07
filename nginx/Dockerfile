FROM nginx:latest
WORKDIR usr/local/apache2/htdocs
COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf
RUN apt-get -y update && apt-get install -y nginx
CMD ["nginx", "-g", "daemon off;"]
