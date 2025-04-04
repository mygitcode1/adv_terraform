# resource "aws_eip" "EIP-NAT" {
#   tags = {
#     Name = "NAT-EIP"
#   }
# }

# resource "aws_nat_gateway" "clsp-nat" {
#   allocation_id = aws_eip.EIP-NAT.id
#   subnet_id     = aws_subnet.public.0.id

#   tags = {
#     Name = "clsp-NAT-gw"
#   }

#   # To ensure proper ordering, it is recommended to add an explicit dependency
#   # on the Internet Gateway for the VPC.
#   depends_on = [aws_internet_gateway.clsp_igw]
# }