terraform {
  cloud {
    organization = "vishnu-platform"

    workspaces {
      name = "employee-platform-iac"
    }
  }

  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }
}

variable "kubeconfig_path" {
  description = "Path to the Kubernetes kubeconfig file"
  type        = string
  default     = "~/.kube/config"
}

provider "kubernetes" {
  config_path = var.kubeconfig_path
}

module "postgres_storage" {
  source = "./modules/postgres-storage"

  namespace    = kubernetes_namespace.employee.metadata[0].name
  storage_size = var.postgres_storage_size
  access_mode  = var.postgres_access_mode
}
