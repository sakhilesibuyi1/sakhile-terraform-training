locals {
  name = "${var.env}-${var.stack}"
  account_id = data.aws_caller_identity.current.account_id
  env_domain_name = "${var.env}.${var.domain_name}"
  tags = {
    Env = var.env
    Product = var.product
    Stack = var.stack
    Terraform = "yes"
  }
}