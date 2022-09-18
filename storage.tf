resource "azurerm_storage_account" "storageakshai" {
  name                     = "storageakshai"
  resource_group_name      = azurerm_resource_group.pranayaakshai.name
  location                 = azurerm_resource_group.pranayaakshai.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "var.environment"
  }
}
resource "azurerm_storage_account" "storageakshai2" {
  name                     = "storageaksha2"
  resource_group_name      = azurerm_resource_group.pranayaakshai.name
  location                 = azurerm_resource_group.pranayaakshai.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "var.environment"
  }
}
resource "azurerm_storage_account" "storageakshai3" {
  name                     = "storageakshai3"
  resource_group_name      = azurerm_resource_group.pranayaakshai.name
  location                 = azurerm_resource_group.pranayaakshai.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "var.environment"
  }
}