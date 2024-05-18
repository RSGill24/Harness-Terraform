provider "azurerm" {
  features {}
  client_id = var.client_id
  client_secret = var.client_secret
  environment = var.env
  subscription_id = var.subscription_id
  tenant_id = var.tenant_id
}
