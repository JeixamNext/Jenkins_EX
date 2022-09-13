#!/bin/bash

BACKUP=db-$DATE.sql
DATE=$(date +%H-%M-%S)
DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
ID_AWS=$4
SECRET_KEY=$5
BUCKET_NAME=$6

mysqldump -u root -h $DB_HOST -p $DB_PASSWORD $DB_NAME > /tmp/BACKUP && /
export AWS_ACCSESS_KEY_ID=$ID_AWS && /
export AWS_ACCSESS_KEY=$SECRET_KEY && /
echo "Uploading db $BACKUP backup" &&/ 
aws s3 cp temp/db-$DATE.sql s3://$BUCKET_NAME/BACKUP

