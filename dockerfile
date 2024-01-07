FROM wyveo/nginx-php-fpm:php82

USER root

WORKDIR /var/www/html

# Override nginx's default config
# COPY ./deployment/nginx.conf /etc/nginx/conf.d/default.conf

# Let supervisord start nginx & php-fpm
#CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]

#HEALTHCHECK --timeout=10s CMD curl --silent --fail http://127.0.0.1:8080/fpm-ping