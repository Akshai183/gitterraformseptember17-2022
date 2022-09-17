resource "azurerm_virtual_network" "vpc" {
  name                = "vpc"
  location            = azurerm_resource_group.pranayaakshai.location
  resource_group_name = azurerm_resource_group.pranayaakshai.name
  address_space       = ["10.0.0.0/16", "10.28.0.0/16"]
  dns_servers         = ["8.8.8.8", "8.8.4.4"]
  tags = {
    environment = "Development"
  }
}
resource "azurerm_subnet" "subnet1" {
  name                 = "subnet1"
  resource_group_name  = azurerm_resource_group.pranayaakshai.name
  virtual_network_name = azurerm_virtual_network.vpc.name
  address_prefixes     = ["10.0.1.0/24"]
}
resource "azurerm_subnet" "subnet2" {
  name                 = "subnet2"
  resource_group_name  = azurerm_resource_group.pranayaakshai.name
  virtual_network_name = azurerm_virtual_network.vpc.name
  address_prefixes     = ["10.0.2.0/24"]
}
resource "azurerm_subnet" "subnet3" {
  name                 = "subnet3"
  resource_group_name  = azurerm_resource_group.pranayaakshai.name
  virtual_network_name = azurerm_virtual_network.vpc.name
  address_prefixes     = ["10.28.1.0/24"]
}
resource "azurerm_subnet" "subnet4" {
  name                 = "subnet4"
  resource_group_name  = azurerm_resource_group.pranayaakshai.name
  virtual_network_name = azurerm_virtual_network.vpc.name
  address_prefixes     = ["10.28.2.0/24"]
}