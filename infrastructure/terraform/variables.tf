variable "postgres_storage_size" {
  description = "Requested storage capacity for the PostgreSQL persistent volume"
  type        = string
  default     = "1Gi"
}

variable "postgres_access_mode" {
  description = "Access mode for PostgreSQL persistent storage."
  type        = string
  default     = "ReadWriteOnce"
}
