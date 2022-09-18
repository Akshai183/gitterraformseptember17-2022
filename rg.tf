# Create a resource group
resource "azurerm_resource_group" "pranayaakshai" {
  name     = var.rg_name
  location = var.location
}