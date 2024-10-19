provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "YourName-CANDIDATE_RG"
  location = "East US"
}

module "aks" {
  source              = "./modules/aks"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  aks_cluster_name    = "exampleAKS"
  client_id           = var.client_id
  client_secret       = var.client_secret
}

module "acr" {
  source              = "./modules/acr"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  acr_name            = "exampleACR"
}
