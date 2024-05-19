resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_virtual_network" "example" {
  name                = var.network_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.address_space
  dns_servers         = var.dns_servers

  subnet {
    name           = var.subnet_name
    address_prefix = var.address_prefix
  }

  tags = {
    environment = var.environment_tag
  }
}

terraform {
  backend "azurerm" {}
}
