variable "namespace" {
  description = "Kubernetes namespace where the PostgreSQL PVC will be created"
  type        = string
}

variable "storage_size" {
  description = "Requested storage capacity for the PostgreSQL persistent volume"
  type        = string
}

variable "access_mode" {
  description = "Kubernetes access mode for the PostgreSQL PVC"
  type        = string

  validation {
    condition = contains(
      ["ReadWriteOnce", "ReadOnlyMany", "ReadWriteMany", "ReadWriteOncePod"],
      var.access_mode
    )
    error_message = "access_mode must be a valid Kubernetes PVC access mode."
  }
}
