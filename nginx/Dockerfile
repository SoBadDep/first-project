FROM nginx:latest
COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf
COPY ./index.html /usr/share/nginx/html/index.html
RUN apt-get -y update && apt-get install -y nginx
CMD ["nginx", "-g", "daemon off;"]
