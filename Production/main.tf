#sdfs
terraform {
  required_providers {
    azurerm = {
      version = ">=2.53.0"
    }
  }

  # Define backend for teraffrom state file. 
  backend "azurerm" {
    resource_group_name  = "Operations"
    storage_account_name = "terraformrelated"
    container_name       = "tfstate"
    key                  = "production.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "Main_Resource_Group_RG1" {
  source  = "../modules/az-rg"
 }




 



