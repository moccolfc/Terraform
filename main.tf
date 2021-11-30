
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "Main-RG" {
  name     = "Main-RG"
  location = "UK South"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "Main-Network" {
  name                = "Main-Network"
  resource_group_name = azurerm_resource_group.Main-RG.name
  location            = azurerm_resource_group.Main-RG.location
  address_space       = ["10.0.0.0/16"]
}