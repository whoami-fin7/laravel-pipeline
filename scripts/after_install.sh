#!/bin/bash

echo "AfterInstall iniciado"

cd /var/www/releases/teste

composer install --no-interaction --prefer-dist --optimize-autoloader

php artisan optimize:clear

chown -R nginx:nginx /var/www/releases/teste

chmod -R 775 storage bootstrap/cache

echo "Fim AfterInstall"
