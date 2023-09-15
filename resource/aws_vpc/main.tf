resource "aws_vpc" "main" {
  tags                             = var.tags
  cidr_block                       = var.vpc_cidr_block1
  instance_tenancy                 = var.instance_tenancy
}