terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.11.0"
    }
  }
}


resource "random_string" "random" {
  length  = 4
  special = false
  upper   = false
}

resource "azurerm_storage_account" "example" {
  name                     = "${lower(var.base_name)}${random_string.random.result}${var.environment}"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  tags = {
    environment = var.environment
  }

}
resource "azurerm_storage_container" "example" {
  count                 = var.contCount
  name                  = "${var.contName}-vhds-${count.index}"
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}

resource "azurerm_storage_account_network_rules" "example" {
  storage_account_id = azurerm_storage_account.example.id

  default_action = "Allow"
  ip_rules       = []
  #   virtual_network_subnet_ids = [azurerm_subnet.example.id]
  bypass = ["Metrics", "AzureServices"]
}

resource "azurerm_storage_management_policy" "example" {
  storage_account_id = azurerm_storage_account.example.id

  rule {
    name    = "rule1"
    enabled = true
    filters {
      blob_types = ["blockBlob"]
    }
    actions {
      base_blob {
        tier_to_cool_after_days_since_modification_greater_than    = 10
        tier_to_archive_after_days_since_modification_greater_than = 50
        delete_after_days_since_modification_greater_than          = 100
      }
      snapshot {
        delete_after_days_since_creation_greater_than = 30
      }
    }
  }
}
