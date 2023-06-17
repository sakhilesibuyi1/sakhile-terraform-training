resource "aws_vpc_endpoint" "s3" {
  vpc_id          = module.vpc.vpc_id
  service_name    = "com.amazonaws.${var.region}.s3"
  route_table_ids = [module.aws_public_subnet_route_table.route_id, module.aws_private_subnet_route_table.route_id]
}
