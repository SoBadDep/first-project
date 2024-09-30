FROM nginx:latest
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
RUN apt-get -y update && apt-get install -y nginx
CMD ["nginx", "-D", "FOREGROUND"]
