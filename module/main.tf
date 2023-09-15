provider "aws" {
  region     = "us-east-1"
}
locals {
  feature_flags = {
    provision_internet_gw = var.provision_internet_gw
  }
}
module "aws_vpc" {
  source           = "C:/Users/SAKSURYA/OneDrive - Capgemini/Desktop/github/resource/aws_vpc"
  vpc_cidr_block1   = var.vpc_cidr_block
  region           = var.region
  instance_tenancy = var.instance_tenancy
}
module "aws_subnet" {
  source     = "C:/Users/SAKSURYA/OneDrive - Capgemini/Desktop/github/resource/aws_subnet"
  vpc_id     = module.aws_vpc.id
  cidr_block = "10.0.4.0/24"
}
module "route53" {
  source       = "C:/Users/SAKSURYA/OneDrive - Capgemini/Desktop/github/resource/route53"
  route53_zone = var.route53_zone
}
