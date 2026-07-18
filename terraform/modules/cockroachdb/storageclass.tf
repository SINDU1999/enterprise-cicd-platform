resource "kubernetes_storage_class" "gp3_encrypted" {

  metadata {
    name = "gp3-encrypted"
  }

  storage_provisioner = "ebs.csi.aws.com"

  reclaim_policy = "Retain"

  volume_binding_mode = "WaitForFirstConsumer"

  allow_volume_expansion = true

  parameters = {
    type      = "gp3"
    encrypted = "true"
    kmsKeyId  = var.kms_key_arn
    fsType    = "ext4"
  }
}