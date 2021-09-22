provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_vpc" "dpt_vpc" {
cidr_block = var.vpcid

tags = {
    Name = "dpt_vpc"
  }

}

resource "aws_internet_gateway" "dpt_gw" {
    vpc_id = aws_vpc.dpt_vpc.id

}