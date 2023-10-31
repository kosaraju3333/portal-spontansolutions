#!/bin/bash
set -e

cd /home/ubuntu
mkdir portal-spontansolutions
aws s3 cp s3://portal-spontansolutions/portal-spontan.tar.gz /home/ubuntu/portal-spontansolutions