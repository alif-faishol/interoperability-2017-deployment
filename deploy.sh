#!/bin/bash


git checkout master
git pull https://${CI_DEPLOY_USER}:${CI_DEPLOY_PASSWORD}@gitlab.com/alifaishol/interoperability-2017-deployment.git master
git submodule update
docker-compose exec app bash -c 'cd alif && composer install && php artisan:migrate'

exit 0
