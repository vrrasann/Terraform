output "vpcid" {
    value = aws_vpc.dpt_vpc.id
}

output "priv_subnet" {
    value = aws_subnet.dpt_priv_sub.id
}