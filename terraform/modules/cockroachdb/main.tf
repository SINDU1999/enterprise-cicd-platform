resource "kubernetes_namespace" "cockroachdb" {
  metadata {
    name = var.namespace

    labels = {
      app         = "cockroachdb"
      managed-by  = "terraform"
      environment = "dev"
    }
  }
}
resource "helm_release" "cockroachdb" {
  name       = "cockroachdb"
  repository = "https://charts.cockroachdb.com/"
  chart      = "cockroachdb"
  version    = "21.0.1"

  namespace = kubernetes_namespace.cockroachdb.metadata[0].name

  create_namespace = false

  values = [
    file("${path.module}/values.yaml")
  ]

  depends_on = [
    kubernetes_namespace.cockroachdb,
    kubernetes_storage_class.gp3_encrypted
  ]
}