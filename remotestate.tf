terraform {
  backend "azurerm" {
    resource_group_name  = "pranayaakshai"
    storage_account_name = "storageakshai"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}