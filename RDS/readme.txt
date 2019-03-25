Github:
https://github.com/wolfgangunger
https://github.com/wolfgangunger/aws-basics/tree/master/RDS

AWS Documentation
https://aws.amazon.com/rds/?nc1=h_ls

Setup Scenarios:
https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_VPC.Scenarios.html

ssh -i /path/to/keypair.pem -NL 9000:RDS_ENDPOINT:3306 ec2-user@EC2_HOST –v

ssh -i "ungerw-london.pem" -NL 9000:awstutorialprivate.ckz0x47ylciu.eu-west-2.rds.amazonaws.com:3306 ec2-user@ec2-35-178-148-152.eu-west-2.compute.amazonaws.com -v


Costs of a RDS database:
General calculator:
http://calculator.s3.amazonaws.com/index.html

RDS Calculator:
https://aws.amazon.com/rds/pricing/
Example PostgreSQL
https://aws.amazon.com/rds/postgresql/pricing/


Aurora Calculator:
https://aws.amazon.com/rds/aurora/pricing/

