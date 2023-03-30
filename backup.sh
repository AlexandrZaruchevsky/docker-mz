#!/bin/bash
backupDir=/home/az/develop/docker-projects/mz-app/mysql/backup
filenameSql=backup-$(date +%Y-%m-%d-%H.%M.%S).sql
filenameArchive=$backupDir/$filenameSql.zip
docker exec mz-app-db-1 sh -c 'exec mysqldump --all-databases -uroot -p$MYSQL_ROOT_PASSWORD' > $backupDir/$filenameSql
zip -j $filenameArchive $backupDir/$filenameSql
rm -rf $backupDir/*.sql
