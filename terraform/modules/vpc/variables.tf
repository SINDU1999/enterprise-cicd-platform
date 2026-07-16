variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "name" {
  description = "Name of the VPC"
  type        = string
}

variable "tags" {
  description = "Common tags for all resources"
  type        = map(string)
}