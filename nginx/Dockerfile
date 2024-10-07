FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/conf.d/nginx.conf
COPY ./index.html /usr/share/nginx/html
RUN apt-get -y update && apt-get install -y nginx
CMD ["nginx", "-g", "daemon off;"]
