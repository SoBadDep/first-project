# Используем официальный образ Apache
FROM httpd:latest

#Контейнер при запуске будет автоматически переходить в эту директорию
WORKDIR usr/local/apache2/htdocs

# Установка Apache
RUN apt-get -y update && apt-get install -y apache2

# Копируем файлы веб-сайта в каталог
COPY ./index.html /usr/local/apache2/htdocs/index.html

# Выставляем порт 80 и 443 для доступа к серверу и запускаем Apache с помощью команды CMD
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]
