#!/usr/bin/env bash
set -ex

BUCKET_NAME="react-ec2-aws-bucket"

aws s3api create-bucket --bucket $BUCKET_NAME

npm run build

aws s3 sync ./build s3://$BUCKET_NAME