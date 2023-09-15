variable "provision_internet_gw" {
  type        = bool
  default     = false
  description = "If AWS internet gateway should be provisioned or not?"
}
variable "region" {
  type        = string
  description = "Region to deploy AWS services"
}
variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
}
variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC."
  type        = string
}
variable "route53_zone" {
  description = "name for route53"
  type        = string
}
