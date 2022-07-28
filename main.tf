terraform {

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 0.12.6"

  
 
  backend "azurerm" {
  
    resource_group_name  = "tfstate"
    storage_account_name = "tfstate13078"
    container_name       = "tfstate"
    key                  = "root.terraform.tfstate"
  }
}

 provider "azurerm" {
    features {}
  }