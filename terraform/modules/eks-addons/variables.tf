variable "cluster_name" {
  type = string
}

variable "tags" {
  type = map(string)
}
variable "ebs_csi_role_arn" {
  description = "IAM Role ARN for the EBS CSI Driver"
  type        = string
}
