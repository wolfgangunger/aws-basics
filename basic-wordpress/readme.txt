Setting up Wordpress ( or Jenkins, Wiki ...)

https://github.com/wolfgangunger/aws-basics/
https://github.com/wolfgangunger/aws-basics/tree/master/basic-wordpress

https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/install-LAMP.html
https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/hosting-wordpress.html

1. istalling an marketplace machine image
2. setting up your own ec2 instance with apache and wordpress and mysql db on aws


1. 
select wordpress image 
 user and password in instance log

2. 
setup mysql database

select AMI and paste wordpress.sh into launch configuration
(sudo) nano wp-config.php


wget https://s3.eu-central-1.amazonaws.com/ungerw-aws-examples/wp-config.php 
