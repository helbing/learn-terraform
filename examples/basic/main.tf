provider "aws" {
}

variable "name" {
}

output "name" {
  value = module.simple_vpc.name
}

module "simple_vpc" {
  source = "../../modules/simple_vpc"

  name = var.name
}
