
locals {
  vpc-name = data.aws_vpc.vpc.tags["Name"]
}

data "aws_vpc" "vpc" {
  id = var.vpc-id
}