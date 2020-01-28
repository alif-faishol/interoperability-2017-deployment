#!/bin/bash

docker-compose exec app bash -c 'cd alif && composer install && php artisan:migrate'

exit 0
