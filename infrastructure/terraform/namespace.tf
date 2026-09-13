resource "kubernetes_namespace" "employee" {
  metadata {
    name = "employee"
  }
}
