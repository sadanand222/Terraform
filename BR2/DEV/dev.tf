# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "DEV" {
  name     = "example-BR2-DEV"
  location = "West Europe"
}

# Create a storageaccount
resource "azurerm_storage_account" "DEV" {
  name     = "storageaccountname-BR2-DEV"
  location = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    environment = "DEV"
}