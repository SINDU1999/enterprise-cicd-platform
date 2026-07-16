variable "vpc_id" {
  description = "VPC ID where subnets will be created"
  type        = string
}

variable "public_subnet_1_cidr" {
  description = "CIDR block for Public Subnet 1"
  type        = string
}

variable "public_subnet_2_cidr" {
  description = "CIDR block for Public Subnet 2"
  type        = string
}

variable "private_subnet_1_cidr" {
  description = "CIDR block for Private Subnet 1"
  type        = string
}

variable "private_subnet_2_cidr" {
  description = "CIDR block for Private Subnet 2"
  type        = string
}

variable "availability_zone_1" {
  description = "Primary Availability Zone"
  type        = string
}

variable "availability_zone_2" {
  description = "Secondary Availability Zone"
  type        = string
}

variable "name_prefix" {
  description = "Prefix used for resource naming"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}