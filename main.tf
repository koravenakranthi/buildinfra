terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.86.0"
    }
  }

  required_version = ">= 1.6.6"
}

provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "resprod" {
  count = length(var.resname)
  name = "${var.resname[count.index]}"
  location = var.region
}