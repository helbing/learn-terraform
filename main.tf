provider "aws" {
}

locals {
  vpc_id = aws_vpc.this.id
}

resource "aws_vpc" "this" {
  cidr_block = var.cidr
  tags = merge(
    { "Name" = var.name },
    var.tags,
  )
}

resource "aws_subnet" "this" {
  vpc_id = local.vpc_id
}
