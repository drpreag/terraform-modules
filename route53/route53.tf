# Local private zone

resource "aws_route53_zone" "private" {
  name    = "local"
  comment = "PRIVATE zone for ${local.vpc-name}"
  vpc {
    vpc_id = var.vpc-id
  }
  tags = {
    Name = "${local.vpc-name}-${var.environment}"
  }
}

resource "aws_route53_zone" "public" {
  name    = var.zone-name
  comment = "PUBLIC zone for ${var.zone-name}"
  vpc {
    vpc_id = var.vpc-id
  }
  tags = {
    Name = "${local.vpc-name}-${var.environment}"
  }
}