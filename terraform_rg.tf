terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
}
provider "azurerm" {
  features {}
}

variable "RG_Name" {}

resource "azurerm_resource_group" "rg" {
  for_each = var.RG_Name
  name     = each.value.name
  location = each.value.location
}