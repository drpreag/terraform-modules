
output "route53-private-zone" {
  value = aws_route53_zone.private
}

output "route53-public-zone" {
  value = aws_route53_zone.public
}

