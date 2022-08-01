terraform {

  backend "azurerm" {

    resource_group_name  = "tfstate"
    storage_account_name = "tfstate13078"
    container_name       = "tfstate"
    key                  = "root.terraform.tfstate"
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 0.12.6"
}





provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}

resource "azurerm_container_registry" "acr" {
  name                = "mohammedkamrulregistry"
  resource_group_name = "tfstate"
  location            = "East US"
  sku                 = "Basic"
  admin_enabled       = true
  georeplications {
    location                = "westeurope"
    zone_redundancy_enabled = true
    tags                    = {}
  }
  georeplications {
    location                = "westeurope"
    zone_redundancy_enabled = true
    tags                    = {}
  }
}


  