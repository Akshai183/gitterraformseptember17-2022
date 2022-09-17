resource "azurerm_virtual_network" "vpc" {
  name                = "vpc"
  location            = azurerm_resource_group.pranayaakshai.location
  resource_group_name = azurerm_resource_group.pranayaakshai.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["8.8.8.8", "8.8.4.4"]
  tags = {
    environment = "Development"
  }
}