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
resource "azurerm_resource_group" "QA" {
  name     = "example-BR2-QA"
  location = "West Europe"
}

# Create a resource group
resource "azurerm_resource_group" "DEV" {
  name     = "example-BR2-DEV"
  location = "West Europe"
}
