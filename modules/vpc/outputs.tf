output "vpc_id" {
  value = aws_vpc.main.id
}

output "vpc_cidr" {
  value = aws_vpc.main.cidr_block
}

output "vpc_public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "vpc_private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "vpc_database_subnet_ids" {
  value = aws_subnet.database[*].id
}

output "vpc_internet_gateway_id" {
  value = aws_internet_gateway.main.id
}

output "nat_gateway_ids" {
  value = aws_nat_gateway.main[*].id
}
