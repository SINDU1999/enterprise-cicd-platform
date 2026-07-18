output "namespace" {
  description = "CockroachDB Kubernetes Namespace"
  value       = kubernetes_namespace.cockroachdb.metadata[0].name
}

output "helm_release_name" {
  description = "CockroachDB Helm Release"
  value       = helm_release.cockroachdb.name
}

output "storage_class_name" {
  description = "StorageClass used by CockroachDB"
  value       = kubernetes_storage_class.gp3_encrypted.metadata[0].name
}