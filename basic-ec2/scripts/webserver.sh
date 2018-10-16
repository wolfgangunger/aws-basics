#!/bin/bash
sudo yum install httpd -y
sudo yum update -y
#start index
#copy index file
cd /var/www/html/
#aws s3 cp s3://YOURBUCKETNAMEHERE/index.html /var/www/html/
sudo wget https://s3.eu-central-1.amazonaws.com/ungerw-aws-examples/index.html
# create it
#cd /var/www/html/
#sudo nano index.html 
# end index 
sudo service httpd start
sudo chkconfig httpd on