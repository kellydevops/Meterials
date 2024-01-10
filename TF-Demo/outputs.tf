output "vpc_id" {
  value = var.cidr_block[0]
}
output "region" {
  value = var.region
}
output "public_subnet" {
  value = var.cidr_block[1]
}
output "private_subnet" {
  value = var.cidr_block[2]
}

output "vpc_name" {
  value = var.tags[0]
}