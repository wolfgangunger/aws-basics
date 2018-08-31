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
(you can install other stuff like wiki, jenkins, nexus simular like this) 

2. 
-setup mysql database on AWS RDS 
if you use the standard security groups, which will be created, you might have to adapt the inbound rules, so your
ec2-instance can access the database
-setup ec2 instance
select AMI and paste wordpress.sh into launch configuration
(sudo) nano wp-config.php
paste the content on the wordpress installation site in the file and save it


