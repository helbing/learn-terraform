provider "aws" {
}

locals {
  vpc_id = aws_vpc.this.id
  all_tags = merge(
    { Name = var.name },
    var.tags,
  )
}

resource "aws_vpc" "this" {
  cidr_block = var.cidr
  tags       = local.all_tags
}

resource "aws_subnet" "this" {
  vpc_id     = local.vpc_id
  cidr_block = var.subnet_cidr
}
