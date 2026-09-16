output "employee_namespace" {
  description = "Name of the Kubernetes namespace managed by Terraform"
  value       = kubernetes_namespace.employee.metadata[0].name
}

output "postgres_pvc" {
  description = "Name of the PostgreSQL PersistentVolumeClaim managed by Terraform"
  value       = module.postgres_storage.pvc_name
}
