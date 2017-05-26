#!/usr/bin/env bash

git --work-tree=/mnt/data/apps/sabia-laravel/ --git-dir=/mnt/data/apps/sabia-laravel/.git pull origin master

docker exec SABIA composer dump-autoload --working-dir /apps/sabia-laravel

docker exec SABIA php /apps/sabia-laravel/artisan migrate

docker exec SABIA chown -R www-data:www-data /apps/sabia-laravel/