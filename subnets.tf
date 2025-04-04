resource "aws_subnet" "public" {
  # count                   = length(var.public_subnet_cidr)
  count                   = 2
  vpc_id                  = aws_vpc.clsp.id
  cidr_block              = element(var.public_subnet_cidr, count.index)
  availability_zone       = element(var.azs, count.index)
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.vpc_name}_${var.env}_public${count.index + 1}"
    Env  = "${var.env}"
  }
}

resource "aws_subnet" "private" {
  # count           = length(var.private_subnet_cidr)
  count             = 1
  vpc_id            = aws_vpc.clsp.id
  cidr_block        = element(var.private_subnet_cidr, count.index)
  availability_zone = "us-east-1c"
  tags = {
    Name = "${var.vpc_name}_${var.env}_private${count.index + 1}"
    Env  = "${var.env}"
  }
}
