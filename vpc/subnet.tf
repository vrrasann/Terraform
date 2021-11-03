resource "aws_subnet" "dpt2_pub_sub" {

cidr_block = var.pub_sub_cidr
availability_zone = var.pub_sub_az
vpc_id = aws_vpc.dpt2_vpc.id

}