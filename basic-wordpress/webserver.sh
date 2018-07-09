#!/bin/bash
yum install httpd -y
yum update -y
aws s3 cp s3://basic-aws-apache-bucket/index.html /var/www/html/
service httpd start
chkconfig httpd on