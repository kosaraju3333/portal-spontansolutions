#!/bin/bash
set -e

Directory="/home/ubuntu/portal-spontansolutions/"

if [ -d "$Directory" ]
then
   echo "portal-spontansolutions is already exist"
   break
else
   mkdir /home/ubuntu/portal-spontansolutions
fi

aws s3 cp s3://portal-spontansolutions/portal-spontan.tar.gz /home/ubuntu/portal-spontansolutions