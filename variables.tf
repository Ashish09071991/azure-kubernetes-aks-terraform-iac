variable "location" {
  type        = string
  default     = "eastus"
  description = "Azure region for all resources"
}

variable "resource_group_name" {
  type        = string
  default     = "rg-aks-prod-01"
  description = "Name of the resource group"
}

variable "cluster_name" {
  type        = string
  default     = "aks-prod-cluster"
  description = "Name of the AKS cluster"
}

variable "dns_prefix" {
  type        = string
  default     = "aksprod"
  description = "DNS prefix for the AKS cluster"
}

variable "kubernetes_version" {
  type        = string
  default     = "1.28.3"
  description = "Kubernetes control plane version"
}

variable "system_node_count" {
  type        = number
  default     = 2
  description = "Initial number of nodes in the system node pool"
}

variable "system_vm_size" {
  type        = string
  default     = "Standard_D2s_v5"
  description = "VM size for system nodes"
}

variable "user_node_count" {
  type        = number
  default     = 2
  description = "Initial number of nodes in the user application pool"
}

variable "user_vm_size" {
  type        = string
  default     = "Standard_D4s_v5"
  description = "VM size for workload user nodes"
}

variable "vnet_address_space" {
  type        = string
  default     = "10.240.0.0/16"
}

variable "nodes_subnet_prefix" {
  type        = string
  default     = "10.240.0.0/22"
}

variable "service_cidr" {
  type        = string
  default     = "10.0.0.0/16"
}

variable "dns_service_ip" {
  type        = string
  default     = "10.0.0.10"
}

variable "tags" {
  type        = map(string)
  default = {
    Environment = "Production"
    ManagedBy   = "Terraform"
    Owner       = "Ashish Pandey"
    CostCenter  = "DevOps"
  }
}
