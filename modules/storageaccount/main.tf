terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}



resource "random_string" "random" {
  length  = 4
  special = false
  upper   = false
}



resource "azurerm_storage_account" "demo_storage" {
  name = "daademo${random_string.random.result}${var.environment}"
  location = var.location
  resource_group_name = var.resource_group_name
  account_tier = var.account_tier  #"Standard"
  account_replication_type = var.replication_type #"LRS"
  tags = {
    environment = var.environment
  }
  # identity {
  #   type = "UserAssigned"
  #   identity_ids = [ var.managed_identity_id ]
  # }
  
}

resource "azurerm_storage_container" "demo_blob" {
  name = var.container_name
  storage_account_name = azurerm_storage_account.demo_storage.name
  container_access_type = "private"
  
}