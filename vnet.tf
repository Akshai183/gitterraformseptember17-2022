resource "azurerm_virtual_network" "vpc" {
  name                = var.vpc_name
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = [var.vpc_cidr_block]
  dns_servers         = [var.dns1, var.dns2]
  tags = {
    environment = var.environment
  }
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
}