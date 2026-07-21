#!/bin/bash

echo "AfterInstall iniciado"

cd /var/www/teste

composer install --no-interaction --prefer-dist --optimize-autoloader

php artisan optimize:clear

chown -R nginx:nginx /var/www/teste

chmod -R 775 storage bootstrap/cache

echo "Fim AfterInstall"
