terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "<backend rg name>"
    storage_account_name = "backend storage account name"
    container_name = "backend container name"
    key = "terraform.tfstate"
    #pass your subscription id,client id,client secret and tenant id here
  }
}

provider "azurerm" {
  features {

  }
#pass your subscription id,client id,client secret and tenant id here
  # Configuration options
}