#!/bin/bash

DIRECTORIO=$1
BUCKET=$2
FECHA=$(date +%Y%m%d_%H%M%S)
ARCHIVO="backup_$FECHA.tar.gz"

tar -czf $ARCHIVO $DIRECTORIO

aws s3 cp $ARCHIVO s3://$BUCKET/

echo "Backup realizado: $ARCHIVO" >> logs/backup.log
