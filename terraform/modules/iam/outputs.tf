output "eks_cluster_role_arn" {
  description = "EKS Cluster IAM Role ARN"
  value       = aws_iam_role.eks_cluster_role.arn
}
output "eks_node_role_arn" {
  description = "EKS Node IAM Role ARN"
  value       = aws_iam_role.eks_node_role.arn
}
