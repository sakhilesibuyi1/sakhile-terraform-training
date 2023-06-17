region  = "us-east-1"
env         = "dev"
stack       = "sakhile"
product     = "sakhile"
domain_name = "sakhile.com"

# VPC
vpc_cidr             = "10.10.0.0/16"
vpc_secondary_cidrs  = ["44.192.206.240/28"]
enable_dns_hostnames = "true"
enable_dns_support   = "true"

# SUBNET
public_cidrs = {
  nat = [
    "44.192.206.240/28",
  ],
  svc = [
    "10.10.0.0/24",
    "10.10.2.0/24",
  ]
}

private_cidrs = {
  svc = [
    "10.10.8.0/24",
    "10.10.10.0/24",
  ]
}

availability_zones = [
  "a",
  "b"
]
