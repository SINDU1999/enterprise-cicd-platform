resource "aws_eip" "nat_gateway" {

  domain = "vpc"

  tags = merge(
    var.tags,
    {
      Name = var.name
    }
  )
}