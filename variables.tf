# Provider
variable "region" {}
variable "profile" {}

## VPC
variable "vpc_name" {}
variable "cidr_block" {}
variable "env" {}


## azs
variable "azs" {}

## Subnets
variable "public_subnet_cidr" {}
variable "private_subnet_cidr" {}

variable "amis" {}
variable "instance_type" {}
variable "key_name" {}
