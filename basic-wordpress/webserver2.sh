#!/bin/bash
sudo su
yum update -y
yum install httpd php php-mysql stress -y
cd /etc/httpd/conf
cp httpd.conf httpdconfbackup.conf
cp  httpdconfbackup.conf httpd.conf
rm -rf httpd.conf
wget https://s3-eu-west-1.amazonaws.com/acloudguru-wp/httpd.conf
wget https://github.com/chrisdee/WordPress/blob/master/InstantWordPress/InstantWPBase/InstantWP_4.2/iwpserver/server/config_tpl/httpd.conf
cd /var/www/html
aws s3 cp s3://basic-aws-apache-bucket/index.html /var/www/html/
service httpd start
chkconfig httpd on