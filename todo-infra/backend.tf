terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "digwitfstatestorage"
    container_name       = "tfstate"
    key                  = "dev.tfstate"
    subscription_id = "ab1ac19d-06cd-4ac2-b289-cbb67e904a92"
  }
}