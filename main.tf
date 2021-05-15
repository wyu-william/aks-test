terraform {
  backend "azurerm" {
    resource_group_name = "azure-k8stest"
    storage_account_name = "azurek8stest0brick001"
    container_name       = "tfstate"
    key                  = "codelab.microsoft.tfstate"

    # cannot use variable inside the backend block
    # sourced from an Environment Variable - xport ARM_ACCESS_KEY=
    # https://docs.microsoft.com/en-us/azure/developer/terraform/store-state-in-azure-storage
    # access_key = 
  }
}

provider "azurerm" {
    # The "feature" block is required for AzureRM provider 2.x. 
    # If you are using version 1.x, the "features" block is not allowed.
    # version = "~>2.0"
    features {}
}