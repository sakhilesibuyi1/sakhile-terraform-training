terraform {
  backend "remote" {
    organization = "sakhile-training"
    workspaces {
      prefix = "networking-"
    }
  }
}

provider "aws" {
  region = var.region
  default_tags {
    tags = local.tags
  }
}

data "aws_caller_identity" "current" {}

# data "terraform_remote_state" "networking" {
#   backend = "remote"
#   config = {
#     organization = "sakhile-training"
#     workspaces = {
#       name = "networking-${var.env}"
#     }
#   }
# }