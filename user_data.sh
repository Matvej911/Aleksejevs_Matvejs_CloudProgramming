#!/bin/bash


yum update -y
yum install -y httpd


systemctl start httpd.service
systemctl enable httpd.service


aviability_z=$(curl -s http://169.254.169.254/latest/meta-data/placement/aviability-zone)

HOSTNAME=$(hostname -f)
echo "<h1>Hello World!</h1>" > /var/www/html/index.html
echo "<p>This is the hostname: ${HOSTNAME}</p>" >> /var/www/html/index.html

