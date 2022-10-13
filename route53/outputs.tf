
output "route53_private_zone" {
  value = aws_route53_zone.private
}

output "route53_public_zone" {
  value = aws_route53_zone.public
}

