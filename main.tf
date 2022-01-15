terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.91.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "example-Sadanand"
  location = "West Europe"
}

# Create a resource group
resource "azurerm_resource_group" "Testing" {
  name     = "example-Sada"
  location = "West Europe"
}