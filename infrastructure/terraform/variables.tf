variable "postgres_storage_size" {
  description = "Requested storage capacity for the PostgreSQL persistent volume"
  type        = string
  default     = "1Gi"
}