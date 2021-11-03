provider "aws" {
  region     = var.region
 }

terraform {
  backend "s3" {
    bucket = "dpt2-web-data"
    key    = "dpt2/vpc/dpt2-vpc"
    region = "us-east-1"
  }
}

resource "aws_vpc" "dpt2_vpc" {
cidr_block = var.vpcid

tags = {
    Name = "dpt2_vpc"
  }

}

resource "aws_internet_gateway" "dpt2_gw" {
    vpc_id = aws_vpc.dpt2_vpc.id

}