# Route Table for Public Subnet
resource "aws_route_table" "clsp_public_rt" {
  vpc_id = aws_vpc.clsp.id

  route {
    cidr_block = "0.0.0.0/0" # Default route to the internet
    gateway_id = aws_internet_gateway.clsp_igw.id
  }

  tags = {
    Name = "${var.vpc_name}_${var.env}_public_rt"
    Env  = "${var.env}"
  }
}

# # Route Table for Private Subnet
resource "aws_route_table" "clsp_private_rt" {
  vpc_id = aws_vpc.clsp.id

  # route {
  #   cidr_block = "0.0.0.0/0" # Internet_bound traffic
  #   nat_gateway_id = aws_nat_gateway.clsp_nat.id
  # }

  tags = {
    Name = "${var.vpc_name}_${var.env}_private_rt"
    Env  = "${var.env}"
  }
}