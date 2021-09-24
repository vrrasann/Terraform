output "vpcid" {
    value = aws_vpc.dpt_vpc.id
}

output "pub_subnet" {
    value = aws_subnet.dpt_pub_sub.id
}