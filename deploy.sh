#!/bin/bash

docker-compose up -d

cp .env.base ./tedc-sw-interoperability-exam/src/.env
echo "DB_DATABASE=space_reservation" >> ./tedc-sw-interoperability-exam/src/.env
echo "APP_URL=http://alif.2017a.site" >> ./tedc-sw-interoperability-exam/src/.env

docker-compose exec -T app bash -c "cd alif && composer install && php artisan migrate && exit"

cp .env.base ./UAS-PengelolaTurnamen/.env
echo "DB_DATABASE=pengelola_turnamen" >> ./UAS-PengelolaTurnamen/.env
echo "APP_URL=http://eep.2017a.site" >> ./UAS-PengelolaTurnamen/.env
docker-compose exec -T app bash -c "cd eep && composer install && php artisan migrate && exit"

cp .env.base ./E-Voting-KPU/.env
echo "DB_DATABASE=e_voting" >> ./E-Voting-KPU/.env
echo "APP_URL=http://muzib.2017a.site" >> ./E-Voting-KPU/.env
docker-compose exec -T app bash -c "cd muzib && composer install && php artisan migrate && exit"

exit 0
