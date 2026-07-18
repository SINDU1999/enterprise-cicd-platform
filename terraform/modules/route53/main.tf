resource "aws_route53_zone" "private_zone" {

  name = var.hosted_zone_name

  comment = "Private Hosted Zone for ${var.environment}"

  vpc {
    vpc_id = var.vpc_id
  }

  force_destroy = true

  tags = {
    Name        = "${var.project_name}-${var.environment}-private-zone"
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
resource "aws_route53_record" "database_dns" {

  zone_id = aws_route53_zone.private_zone.zone_id

  name = "db.${var.environment}.${var.hosted_zone_name}"

  type = "CNAME"

  ttl = 300

  records = [var.database_service_dns]
}