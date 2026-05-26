#!/bin/bash
systemctl status nginx --no pager /dev/null
if{$? -eq 0}
then 
echo "Nginx service is running on the server and Lets validate using CURL"
curl -sl http://localhost | grep -i nginx
else
echo "lets start the nginx service"
systemctl start nginx
curl -sl http://localhost | grep -i nginx

