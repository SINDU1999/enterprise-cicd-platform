variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
}

variable "cluster_oidc_issuer" {
  description = "OIDC Issuer URL"
  type        = string
}

variable "name_prefix" {
  description = "Resource name prefix"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}