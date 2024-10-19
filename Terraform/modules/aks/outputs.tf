output "kube_config" {
  value     = azurerm_kubernetes_cluster.example.kube_admin_config_raw
  sensitive = true
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.example.name
}
