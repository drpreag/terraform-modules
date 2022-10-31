# terraform-modules

# VPC
Creates VPC in variable number of AZs.
Creates ENI for future Bastion/Jumpbox/VPN host.
All public routes use this ENI for routing.

# Security groups

# EC2 bastion
Creates Bastion/Jumpbox/VPN instance

# EKS

# KMS

# Route53
- private zone
- public zone


# Usage:

```
module "vpc" {
  source      = "git::https://github.com/drpreag/terraform-modules.git//vpc?ref=1.0.0"
  vpc-name    = var.vpc-name
  vpc-cidr    = var.vpc-cidr
  az-count    = var.az-count
  environment = var.environment
  company-ips = var.company-ips
}
```