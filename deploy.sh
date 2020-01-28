#!/bin/bash

docker-compose restart
docker-compose exec app bash -c 'cd alif && composer install && php artisan:migrate && exit'
docker-compose exec app bash -c 'cd eep && composer install && php artisan:migrate && exit'

exit 0
