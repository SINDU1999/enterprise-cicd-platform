output "kms_key_id" {
  description = "KMS Key ID"
  value       = aws_kms_key.cockroachdb.key_id
}

output "kms_key_arn" {
  description = "KMS Key ARN"
  value       = aws_kms_key.cockroachdb.arn
}

output "kms_key_alias" {
  description = "KMS Key Alias"
  value       = aws_kms_alias.cockroachdb.name
}