terraform {
  required_providers {
     azurerm = {
    source = "hashicorp/azurerm"
    version = "3.86.0"
  }
}
required_version = ">= 1.6.6"
}
 provider "azurerm" {
   features {
     
   }
 }

resource "azurerm_resource_group" "refrg" {
  name     = rgeus05
  location = "East US"
}

resource "azurerm_storage_account" "refsto" {
  name                     = sageaccount
  resource_group_name      = azurerm_resource_group.refrg.name
  location                 = azurerm_resource_group.refrg.location
  account_tier             = Standard
  account_replication_type = LRS
}
