resource "aws_eks_cluster" "main" {

  name     = var.cluster_name
  role_arn = var.cluster_role_arn

  version = "1.32"

  vpc_config {

    subnet_ids = var.subnet_ids

    endpoint_private_access = true
    endpoint_public_access  = true
  }

  enabled_cluster_log_types = [
    "api",
    "audit",
    "authenticator",
    "controllerManager",
    "scheduler",

  ]

  tags = var.tags
}