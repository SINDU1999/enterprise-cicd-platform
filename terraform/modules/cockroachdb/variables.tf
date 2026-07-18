variable "cluster_name" {
  type = string
}

variable "namespace" {
  type    = string
  default = "cockroachdb"
}

variable "replicas" {
  type    = number
  default = 3
}

variable "storage_size" {
  type    = string
  default = "100Gi"
}

variable "kms_key_arn" {
  type = string
}