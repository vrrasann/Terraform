provider "aws" {
    region = var.region
}

terraform {
  backend "s3" {
    bucket = "dpt-web-data1dec"
    key    = "dpt/ec2/cloudguru"
    region = "us-east-1"
  }
}

module "dptinstance" {
  source = "../ec2-module"
  region = var.region
  associate_public_ip_address = var.associate_public_ip_address
  key_name = var.key_name
  instance_type = var.instance_type
}
