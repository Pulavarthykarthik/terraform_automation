terraform {

backend "azurerm" {
    resource_group_name  = "daa-new-adf-dev"

    storage_account_name = "daateststrterraform"

    container_name       = "daa-terraform-container"

    key                  = "terraform.tfstate"

  }
}