resource "azurerm_virtual_network" "vpc" {
<<<<<<< HEAD
<<<<<<< HEAD
  name                = var.vpc_name
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = [var.vpc_cidr_block]
  dns_servers         = [var.dns1, var.dns2]
=======
  name                = "vpc"
  location            = azurerm_resource_group.pranayaakshai.location
  resource_group_name = azurerm_resource_group.pranayaakshai.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["8.8.8.8", "8.8.4.4"]
>>>>>>> parent of 7e19496 (adding storage account)
=======
  name                = "vpc"
  location            = azurerm_resource_group.pranayaakshai.location
  resource_group_name = azurerm_resource_group.pranayaakshai.name
  address_space       = ["10.0.0.0/16", "10.28.0.0/16"]
  dns_servers         = ["8.8.8.8", "8.8.4.4"]
>>>>>>> parent of 0d9b381 (Revert "Revert "variables are added"")
  tags = {
    environment = "Development"
  }
<<<<<<< HEAD
}
resource "azurerm_subnet" "subnet1" {
  name                 = "subnet1"
  resource_group_name  = azurerm_resource_group.pranayaakshai.name
  virtual_network_name = azurerm_virtual_network.vpc.name
  address_prefixes     = ["10.0.1.0/24"]
}
resource "azurerm_subnet" "subnet2" {
<<<<<<< HEAD
  name                 = var.subnet2_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vpc_name
  address_prefixes     = [var.subnet2_cidr]
=======
>>>>>>> parent of 7e19496 (adding storage account)
}
=======
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
resource "azurerm_subnet" "subnet5" {
  name                 = "subnet5"
  resource_group_name  = azurerm_resource_group.pranayaakshai.name
  virtual_network_name = azurerm_virtual_network.vpc.name
  address_prefixes     = ["10.0.3.0/24"]
}
>>>>>>> parent of 0d9b381 (Revert "Revert "variables are added"")
