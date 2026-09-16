output "pvc_name" {
  description = "Name of the PostgreSQL PersistentVolumeClaim"
  value       = kubernetes_persistent_volume_claim.postgres.metadata[0].name
}
