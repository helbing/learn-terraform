locals {
  // VPC ID
  vpc_id = aws_vpc.this.id

  // VPC name
  name = aws_vpc.this.tags["Name"]

  // Merge tags
  all_tags = merge(
    { Name = var.name },
    var.tags,
  )

  // Is subnet enabled
  is_subnet_enabled = var.subnet_enabled ? 1 : 0
}

resource "aws_vpc" "this" {
  cidr_block = var.cidr
  tags       = local.all_tags
}

resource "aws_subnet" "this" {
  count             = local.is_subnet_enabled
  vpc_id            = local.vpc_id
  cidr_block        = var.subnet_cidr
  availability_zone = var.subnet_az
}

