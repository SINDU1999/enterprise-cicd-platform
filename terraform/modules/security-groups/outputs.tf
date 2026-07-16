output "eks_nodes_security_group_id" {
  description = "EKS Worker Nodes Security Group ID"
  value       = aws_security_group.eks_nodes.id
}