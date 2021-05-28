#sdfs
terraform {
  required_providers {
    azurerm = {
      version = ">=2.61.0"
    }
  }

  # Define backend for teraffrom state file. 
  backend "azurerm" {
    resource_group_name  = "test"
    storage_account_name = "termaformanasdasdasd"
    container_name       = "tfstatehgjhgjhg"
    key                  = "tf.production.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "Main_Resource_Group_RG1" {
  source  = "../modules/az-rg"
 }




 



