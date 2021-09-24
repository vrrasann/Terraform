resource "aws_subnet" "dpt_pub_sub" {

cidr_block = var.pub_sub_cidr
availability_zone = var.pub_sub_az
vpc_id = aws_vpc.dpt_vpc.id

}