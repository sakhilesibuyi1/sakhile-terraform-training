# PUBLIC SUBNETS
module "aws_public_services_subnet" {
  name               = "${local.name}-services"
  source             = "app.terraform.io/sakhile-training/subnet/aws"
  version            = "1.0.1"
  availability_zones = var.availability_zones
  cidrs              = var.public_cidrs.svc
  public             = true
  create_nat_gateway = true
  region             = var.region
  tier               = "public"
  vpc_id             = module.vpc.vpc_id
}

# PRIVATE SUBNETS
module "aws_private_services_subnet" {
  name               = "${local.name}-services"
  source             = "app.terraform.io/sakhile-training/subnet/aws"
  version            = "1.0.1"
  availability_zones = var.availability_zones
  cidrs              = var.private_cidrs.svc
  public             = false
  region             = var.region
  tier               = "private"
  vpc_id             = module.vpc.vpc_id
}