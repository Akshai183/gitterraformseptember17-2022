resource "azurerm_virtual_network" "vpc" {
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
  tags = {
    environment = var.environment
  }
<<<<<<< HEAD
}
resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vpc_name
  address_prefixes     = [var.subnet1_cidr]
}
resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2_name
  resource_group_name  = var.rg_name
  virtual_network_name = var.vpc_name
  address_prefixes     = [var.subnet2_cidr]
=======
>>>>>>> parent of 7e19496 (adding storage account)
}