
data "aws_vpc" "vpc" {
  id = var.vpc-id
}

locals {
  vpc-name = data.aws_vpc.vpc.tags["Name"]
  vpc-cidr = data.aws_vpc.vpc.cidr_block
}