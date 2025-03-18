resource "aws_route_table_association" "public_rt" {
  count          = 2
  subnet_id      = element(aws_subnet.public.*.id, count.index)
  route_table_id = aws_route_table.clsp_public_rt.id
}


resource "aws_route_table_association" "private_rt" {
  count          = 1
  subnet_id      = element(aws_subnet.private.*.id, count.index)
  route_table_id = aws_route_table.clsp_private_rt.id
}