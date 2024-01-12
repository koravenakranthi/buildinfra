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

resource "azurerm_resource_group" "sample" {
  name     = "sample-resource-group"
  location = "East US"
}

resource "azurerm_storage_account" "stosample" {
  name                     = "samplestorageaccount"
  resource_group_name      = azurerm_resource_group.sample.name
  location                 = azurerm_resource_group.sample.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
