#!/bin/bash
docker exec mz-app-db-1 sh -c 'exec mysqldump --all-databases -uroot -p$MYSQL_ROOT_PASSWORD' > /home/az/develop/docker-projects/mz-app/mysql/backup/backup-$(date +%Y-%m-%d-%H.%M.%S).sql