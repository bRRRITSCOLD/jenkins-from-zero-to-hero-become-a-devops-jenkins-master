#!/bin/bash

DATE=$(date +%H-%H-%S)
DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
S3_BUCKET_NAME=$4
FILENAME=$DB_NAME-$DATE.sql

echo "dumping sql database $DB_NAME to $FILENAME"

mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$FILENAME

echo "setting AWS env vars"

export AWS_ACCESS_KEY_ID=$5
export AWS_SECRET_ACCESS_KEY=$6

echo "copying $FILENAME to aws s3 bucket named $S3_BUCKET_NAME"

aws s3 cp /tmp/$FILENAME s3://$S3_BUCKET_NAME/$FILENAME