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

cp .env.base ./UAS_Booking/.env
echo "DB_DATABASE=booking_restoran" >> ./UAS_Booking/.env
echo "APP_URL=http://fajar.2017a.site" >> ./UAS_Booking/.env
docker-compose exec -T app bash -c "cd fajar && composer install && php artisan migrate && exit"

cp .env.base ./UAS-API_TEDC/.env
echo "DB_DATABASE=media_bacaan" >> ./UAS-API_TEDC/.env
echo "APP_URL=http://yusuf.2017a.site" >> ./UAS-API_TEDC/.env
docker-compose exec -T app bash -c "cd yusuf && composer install && php artisan migrate && exit"

cp .env.base ./LumenHotel/.env
echo "DB_DATABASE=lumen_hotel" >> ./LumenHotel/.env
echo "APP_URL=http://bella.2017a.site" >> ./LumenHotel/.env
docker-compose exec -T app bash -c "cd bella && composer install && php artisan migrate && exit"

cp .env.base ./gamestore/.env
echo "DB_DATABASE=db_gamestore" >> ./gamestore/.env
echo "APP_URL=http://idham.2017a.site" >> ./gamestore/.env
docker-compose exec -T app bash -c "cd idham && composer install && php artisan migrate && exit"

exit 0
