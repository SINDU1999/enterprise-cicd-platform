resource "aws_security_group" "eks_nodes" {

  name        = "${var.name_prefix}-eks-nodes-sg"
  description = "Security Group for EKS Worker Nodes"
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow all traffic within the Security Group"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    self        = true
  }

  egress {
    description = "Allow outbound internet access"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.tags,
    {
      Name = "${var.name_prefix}-eks-nodes-sg"
    }
  )
}