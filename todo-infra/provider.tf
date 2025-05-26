terraform {
    required_providers {
      azurerm = {
        source = "hashicorp/azurerm"
        version = "4.30.0"
      }
    }
}

provider "azurerm" {
    features{}
    subscription_id = "ab1ac19d-06cd-4ac2-b289-cbb67e904a92"
}