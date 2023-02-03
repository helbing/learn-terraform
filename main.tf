provider "aws" {
}

module "simple_vpc" {
  source = "./modules/simple_vpc"

  name           = var.name
  cidr           = var.cidr
  tags           = var.tags
  subnet_enabled = var.subnet_enabled
  subnet_cidr    = var.subnet_cidr
  subnet_az      = var.subnet_az
}
