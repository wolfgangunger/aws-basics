Setting up Wordpress, Jenkins, Wiki ...

https://github.com/wolfgangunger/aws-basics/
https://github.com/wolfgangunger/aws-basics/tree/master/basic-wordpress

https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/install-LAMP.html
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hosting-wordpress.html

connect to you instance:
ssh ec2-user@ip-address -i keypair 

sudo yum update -y
sudo yum install -y httpd24 php70 mysql56-server php70-mysqlnd (!!!!)
sudo yum install -y httpd
sudo yum install -y php
sudo yum install -y php-mysqlnd
sudo service httpd start

systemctl list-unit-files

sudo usermod -a -G apache ec2-user
sudo chown -R ec2-user:apache /var/www
sudo chmod 2775 /var/www
find /var/www -type d -exec sudo chmod 2775 {} \;
find /var/www -type f -exec sudo chmod 0664 {} \;
test:
echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php
