variable "hosted_zone_name" {
  description = "Private Hosted Zone Name"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "environment" {
  description = "Deployment Environment"
  type        = string
}

variable "project_name" {
  description = "Project Name"
  type        = string
}
variable "database_service_dns" {
  description = "Kubernetes service DNS name for CockroachDB"
  type        = string
}