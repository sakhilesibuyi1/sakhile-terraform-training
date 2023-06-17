# MAIN
variable "region" {
  type        = string
  default     = "eu-west-1"
  description = "AWS Region [string]"
}
variable "product" {
  type        = string
  default     = "ayoba"
  description = "Top Level Resources Identification [string]"
}
variable "env" {
  type        = string
  description = "environment of networking stack"
}
variable "stack" {
  type        = string
  description = "stack of deployment"
}
variable "domain_name" {
  type        = string
  description = "Domain name of networking stack"
}

# VPC
variable "vpc_cidr" {
  description = "CIDR block of VPC"
  type = string
}
variable "vpc_secondary_cidrs" {
  description = "CIDR secondary block of VPC"
  type = list
}
variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
}
variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
}

# SUBNET
variable "availability_zones" {
  description = "A list of availability zones names or ids in the region"
  type = list
}
variable "public_cidrs" {
  description = "CIDR block publics ips"
}
variable "private_cidrs" {
  description = "CIDR block private ips"
}
