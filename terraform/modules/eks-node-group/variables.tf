variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "node_role_arn" {
  description = "IAM Role ARN for EKS Worker Nodes"
  type        = string
}

variable "subnet_ids" {
  description = "Private Subnet IDs for Worker Nodes"
  type        = list(string)
}

variable "node_group_name" {
  description = "EKS Managed Node Group Name"
  type        = string
}

variable "instance_types" {
  description = "EC2 Instance Types for Worker Nodes"
  type        = list(string)
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
}