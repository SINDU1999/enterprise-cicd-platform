output "hosted_zone_id" {
  value = aws_route53_zone.private_zone.zone_id
}

output "hosted_zone_name" {
  value = aws_route53_zone.private_zone.name
}