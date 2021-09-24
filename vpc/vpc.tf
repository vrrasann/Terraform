provider "aws" {
  region     = var.region
 }

terraform {
  backend "s3" {
    bucket = "dpt-web-data"
    key    = "dpt/vpc/dpt-vpc"
    region = "us-east-1"
  }
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