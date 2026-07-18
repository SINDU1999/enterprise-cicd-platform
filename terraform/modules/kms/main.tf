resource "aws_kms_key" "cockroachdb" {

  description = "KMS key for Enterprise CockroachDB Platform"

  deletion_window_in_days = var.deletion_window_in_days

  enable_key_rotation = var.enable_key_rotation

  policy = data.aws_iam_policy_document.kms.json

  tags = {
    Name        = "${var.project_name}-kms"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
resource "aws_kms_alias" "cockroachdb" {
  name          = "alias/${var.project_name}-${var.environment}"
  target_key_id = aws_kms_key.cockroachdb.key_id
}