output "node_group_name" {
  description = "EKS Managed Node Group Name"
  value       = aws_eks_node_group.main.node_group_name
}

output "node_group_arn" {
  description = "EKS Managed Node Group ARN"
  value       = aws_eks_node_group.main.arn
}