#!/bin/bash

echo "ApplicationStart iniciado"

systemctl restart php-fpm
systemctl start nginx

echo "Aplicação iniciada"
