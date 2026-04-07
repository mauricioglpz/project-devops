#!/bin/bash

source config/config.env

ACCION=$1

echo "Iniciando deploy..." >> logs/deploy.log

python3 ec2/gestionar_ec2.py $ACCION $INSTANCE_ID

if [ $? -ne 0 ]; then
    echo "Error en EC2" >> logs/deploy.log
    exit 1
fi

bash s3/backup_s3.sh $DIRECTORY $BUCKET_NAME

if [ $? -ne 0 ]; then
    echo "Error en S3" >> logs/deploy.log
    exit 1
fi

echo "Deploy completado" >> logs/deploy.log
