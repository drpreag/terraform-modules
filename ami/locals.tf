data "aws_region" "current" {}
data "aws_availability_zones" "available" { state = "available" }

locals {
  ami = data.aws_ami.aws_linux_image.id
  # aws-region = data.aws_region.current.name
  az         = data.aws_availability_zones.available.names
}