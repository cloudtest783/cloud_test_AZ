variable "resource_group_name" {
  description = "The name of the resource group"
}

variable "location" {
  description = "The location of the resources"
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
}

variable "acr_name" {
  description = "The name of the ACR"
}

variable "client_id" {
  description = "The client ID for the service principal"
}

variable "client_secret" {
  description = "The client secret for the service principal"
}
