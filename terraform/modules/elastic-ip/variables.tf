variable "name" {
  description = "Elastic IP Name"
  type        = string
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
}