#!/bin/bash

docker-compose up -d
docker-compose exec -T app bash -c "cd alif && composer install && php artisan migrate && exit"
docker-compose exec -T app bash -c "cd eep && composer install && php artisan migrate && exit"

exit 0
