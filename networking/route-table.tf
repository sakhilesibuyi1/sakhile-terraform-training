module "aws_public_subnet_route_table" {
  name         = "${local.name}-public"
  source       = "app.terraform.io/sakhile-training/route-table/aws"
  version      = "1.0.0"
  gateway_id   = module.vpc.internet_gateway_id
  add_ig_route = true
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = concat(module.aws_public_services_subnet.ids)
}

module "aws_private_subnet_route_table" {
  name          = "${local.name}-private"
  source        = "app.terraform.io/sakhile-training/route-table/aws"
  version       = "1.0.0"
  vpc_id        = module.vpc.vpc_id
  gateway_id    = element(module.aws_public_services_subnet.nat_gateway_ids, 0)
  add_nat_route = true
  subnet_ids    = concat(module.aws_private_services_subnet.ids)
}