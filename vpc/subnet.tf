resource "aws_subnet" "dpt_priv_sub" {

cidr_block = var.priv_sub_cidr
availability_zone = var.priv_sub_az
vpc_id = aws_vpc.dpt_vpc.id
}

resource "aws_subnet" "dpt_pub_sub" {

cidr_block = var.pub_sub_cidr
availability_zone = var.pub_sub_az
vpc_id = aws_vpc.dpt_vpc.id

}