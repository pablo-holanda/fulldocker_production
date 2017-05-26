#!/usr/bin/env bash

git --work-tree=/mnt/data/apps/academico-retsus/ --git-dir=/mnt/data/apps/academico-retsus/.git pull origin master

docker exec RETSUS composer dump-autoload --working-dir /apps/academico-retsus

docker exec RETSUS php /apps/academico-retsus/artisan migrate

docker exec RETSUS chown -R www-data:www-data /apps/academico-retsus/