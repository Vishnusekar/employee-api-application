resource "kubernetes_persistent_volume_claim" "postgres" {
  metadata {
    name      = "postgres-pvc"
    namespace = var.namespace
  }

  wait_until_bound = false

  spec {
    access_modes = [var.access_mode]

    resources {
      requests = {
        storage = var.storage_size
      }
    }
  }
}
