# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "QA" {
  name     = "example-BR2-QA"
  location = "West Europe"
}

# Create a storageaccount
resource "azurerm_storage_account" "QA" {
  name     = "storageaccountname-BR2-QA"
  location = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    environment = "DEV"
}