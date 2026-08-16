terraform {
  backend "azurerm" {
    resource_group_name  = "shri"
    storage_account_name = "shri889965"
    container_name       = "container1"
    key                  = "pipeline.tfstate"

  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.77.0"
    }
  }
}

provider "azurerm" {
  features {}
}