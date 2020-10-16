Intro
=========

This is to set up wordpress using AWS infrastructure. We are using terraform to provision infrastructure. Code uses and creates following aws services.

1. VPC and it's components
2. Subnets, Route Tables, Internet Gateway, Nat Gateway.
3. EC2 instance
4. EIP for NAT Gateway
5. RDS mysql instance.
6. Security Groups to access both EC2 and MYSQL


Usage:
=======

provisioning:
-------------

1. git clone https://github.com/vaidehiramadugu/wordpress-terraform
2. cd  wordpress-terraform
2. terraform init
3. terraform plan
4. terraform apply -auto-approve


Destroying the Infra:
---------------------
1. cd wordpress-terraform
2. terraform destroy -auto-approve


Versions:
--------
Terraform v0.12.24
+ provider.aws v2.12.0
+ provider.template v2.1.2


Outputs:
---------
Login = ssh -i terraform-keypairs ubuntu@13.58.104.214
access = http://13.58.104.214/index.php
ami_id = ami-032eae14ebea64f91
azs = [
  [
    "us-east-2a",
    "us-east-2b",
    "us-east-2c",
  ],
]
db_access_from_ec2 = mysql -h terraform-20201016054400415900000001.ciajt8m190b7.us-east-2.rds.amazonaws.com -P 3306 -u admin -padmin12345



=======
# wordpress-terraform
