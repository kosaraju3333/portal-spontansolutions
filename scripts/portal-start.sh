#!/bin/bash
set -e 

sleep 5

is_service_up=`pm2 list | sed -n "4p" | awk -F " " '{print$4}'`

if [ "$is_service_up" = "portal-app" ]
then
   echo "$is_service_up is already exists so now restaring the $is_service_up"
   pm2 restart /home/ubuntu/portal-spontansolutions/portal-app.js
   break
else
   echo "portal-app is not exists so now staring the portal-app"
   pm2 start /home/ubuntu/portal-spontansolutions/portal-app.js
fi
