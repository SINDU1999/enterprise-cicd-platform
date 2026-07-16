variable "allocation_id" {
  description = "Elastic IP Allocation ID"
  type        = string
}

variable "subnet_id" {
  description = "Public Subnet ID for NAT Gateway"
  type        = string
}

variable "name" {
  description = "NAT Gateway Name"
  type        = string
}

variable "tags" {
  description = "Common Tags"
  type        = map(string)
}