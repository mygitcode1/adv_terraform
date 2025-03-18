# Define variable values, If not available at system level
region  = "us-east-1"
profile = "clustershop"

## VPC
vpc_name   = "clsp"
env        = "prod"
cidr_block = "172.20.0.0/16"

## azs
azs = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]

## Subnets
public_subnet_cidr  = ["172.20.1.0/24", "172.20.2.0/24", "172.20.3.0/24"]
private_subnet_cidr = ["172.20.31.0/24"]
