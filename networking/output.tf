output "vpc_id" {
  value = module.vpc.vpc_id
}

output "internet_gateway_id" {
  value = module.vpc.internet_gateway_id
}

output "public_cidrs" {
  value = var.public_cidrs
}

output "private_cidrs" {
  value = var.private_cidrs
}

output "public_services_subnets" {
  value = module.aws_public_services_subnet.ids
}

output "private_services_subnets" {
  value = module.aws_private_services_subnet.ids
}

