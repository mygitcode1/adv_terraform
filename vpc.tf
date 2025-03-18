resource "aws_vpc" "clsp" {
  cidr_block           = var.cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  instance_tenancy     = "default"
  tags = {
    Name = "${var.vpc_name}_${var.env}"
    Env  = "${var.env}"
  }
}

# Define the Internet Gateway
resource "aws_internet_gateway" "clsp_igw" {
  vpc_id = aws_vpc.clsp.id

  tags = {
    Name = "${var.vpc_name}_${var.env}_igw"
    Env  = "${var.env}"
  }
}