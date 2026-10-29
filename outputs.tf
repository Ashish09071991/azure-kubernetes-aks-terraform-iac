output "aks_cluster_id" {
  value       = azurerm_kubernetes_cluster.k8s.id
  description = "The ID of the AKS Kubernetes Cluster"
}

output "aks_cluster_name" {
  value       = azurerm_kubernetes_cluster.k8s.name
  description = "The name of the AKS Kubernetes Cluster"
}

output "aks_oidc_issuer_url" {
  value       = azurerm_kubernetes_cluster.k8s.oidc_issuer_url
  description = "OIDC issuer URL for workload identity federation"
}

output "log_analytics_workspace_id" {
  value       = azurerm_log_analytics_workspace.aks_logs.id
  description = "Log Analytics Workspace resource ID"
}
