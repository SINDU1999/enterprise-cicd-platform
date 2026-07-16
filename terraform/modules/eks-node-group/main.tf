resource "aws_eks_node_group" "main" {

  cluster_name    = var.cluster_name
  node_group_name = var.node_group_name
  node_role_arn   = var.node_role_arn

  subnet_ids = var.subnet_ids

  instance_types = var.instance_types

  scaling_config {

    desired_size = var.desired_size
    min_size     = var.min_size
    max_size     = var.max_size
  }

  capacity_type = "ON_DEMAND"

  ami_type = "AL2023_x86_64_STANDARD"

  update_config {

    max_unavailable = 1
  }

  tags = var.tags
}