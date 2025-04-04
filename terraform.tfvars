# Define variable values, If not available at system level
region  = "us-east-1"
profile = "clustershop"

## VPC
vpc_name   = "clsp"
env        = "prod"
cidr_block = "172.20.0.0/16"

## azs
azs = ["us-east-1a", "us-east-1b"]

## Subnets
public_subnet_cidr  = ["172.20.1.0/24", "172.20.2.0/24"]
private_subnet_cidr = ["172.20.31.0/24"]

instance_type = ["t2.micro", "t2.medium"]
key_name      = ["Laptop-key-pem"]

amis = {
    "us-east-1" = "ami-0c4f7023847b90238",
    "us-east-2" = "ami-0960ab670c8bb45f3",
}

