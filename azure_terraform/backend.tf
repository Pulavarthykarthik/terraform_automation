terraform {

backend "azurerm" {

    resource_group_name  = "dem-admin-bi-rg"

    storage_account_name = "demtstatesa"

    container_name       = "dem-terraform-container"

    key                  = "terraform.tfstate"

  }
}