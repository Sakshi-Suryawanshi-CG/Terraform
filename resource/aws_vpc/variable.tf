variable "tags" {
  description = "Name of the internet gateway"
  type        = map(string)
  default     = {}
}
variable "region" {
  type        = string
  description = "Region to deploy AWS services"
}
variable "vpc_cidr_block1" {
  description = "CIDR block for VPC"
  type        = string
  default     = ""
}
variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC."
  type        = string
}