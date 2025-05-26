terraform {
  backend "azurerm" {
    resource_group_name  = "rg-digwi"
    storage_account_name = "digwistorage"
    container_name       = "tfstate"
    key                  = "prod.tfstate"
    subscription_id = "ab1ac19d-06cd-4ac2-b289-cbb67e904a92"
  }
}