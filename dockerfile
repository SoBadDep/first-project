# Используем официальный образ Apache
FROM httpd:latest

#Контейнер при запуске будет автоматически переходить в эту директорию
WORKDIR /var/www/html

# Копируем файлы веб-сайта в каталог
COPY git clone https://github.com/SoBadDep/first-project.git
     cd /home/debian/Documents/first-project/
     cp index.html /var/www/html/index.html

# Установка Apache
RUN apt-get -y update && apt-get install -y apache2

# Выставляем порт 80 и 443 для доступа к серверу и запускаем Apache с помощью команды CMD
EXPOSE 80 443
CMD ["httpd", "-D", "FOREGROUND"]
