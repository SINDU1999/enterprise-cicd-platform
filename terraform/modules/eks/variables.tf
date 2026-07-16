variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "cluster_role_arn" {
  description = "IAM Role ARN for EKS Cluster"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for the EKS Cluster"
  type        = list(string)
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}