module "vpc" {
  source               = "app.terraform.io/sakhile-training/vpc/aws"
  version              = "1.0.0"
  cidr                 = var.vpc_cidr
  secondary_cidrs      = var.vpc_secondary_cidrs
  domain_name          = local.env_domain_name
  enable_dns_hostnames = true
  enable_dns_support   = true
  name                 = local.name
}
