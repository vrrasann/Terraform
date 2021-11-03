
resource "aws_route_table" "dpt2_priv_rt" {
    vpc_id = aws_vpc.dpt2_vpc.id
}

resource "aws_route_table" "dpt2_pub_rt" {
    vpc_id = aws_vpc.dpt2_vpc.id
}


resource "aws_route_table_association" "dpt2-pub-rt-association" {
    route_table_id = aws_route_table.dpt2_pub_rt.id
    subnet_id = aws_subnet.dpt2_pub_sub.id
}

resource "aws_route" "route-pub-rt" {
  route_table_id = aws_route_table.dpt2_pub_rt.id
  destination_cidr_block = var.rt_destination_cidr
  gateway_id = aws_internet_gateway.dpt2_gw.id

}
