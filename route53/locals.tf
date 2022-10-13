
locals {
  vpc-name = var.vpc.tags["Name"]
}

data "aws_vpc" "vpc" {
  id = var.vpc-id
}