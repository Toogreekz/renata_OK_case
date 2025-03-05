FROM nginx:alpine

# Удаляем дефолтную конфигурацию
RUN rm /etc/nginx/conf.d/default.conf

# Копируем нашу конфигурацию
COPY docker/nginx.conf /etc/nginx/conf.d

# Копируем файлы приложения
COPY src/ /usr/share/nginx/html

EXPOSE 80 443
