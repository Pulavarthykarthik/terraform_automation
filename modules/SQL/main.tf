# data "azurerm_key_vault_secret" "example" {
#   name         = "DEP-secret"
#   key_vault_id = var.key_vault_id
# }

# output "secret_value" {
#   value     = data.azurerm_key_vault_secret.example.value
#   sensitive = false
# }
resource "azurerm_mssql_server" "example" {
  name                         = "mssqlserverdepiac"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "mradministrator"
  administrator_login_password = var.administrator_login_password
  minimum_tls_version          = "1.2"

  tags = {
    environment = var.environment
  }
}
resource "azurerm_storage_account" "example" {
  name                     = "${var.environment}sqlthreatauditlogs"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_mssql_server_security_alert_policy" "example" {
  resource_group_name        = var.resource_group_name
  server_name                = azurerm_mssql_server.example.name
  state                      = "Enabled"
  storage_endpoint           = azurerm_storage_account.example.primary_blob_endpoint
  storage_account_access_key = azurerm_storage_account.example.primary_access_key
  disabled_alerts = [
    "Sql_Injection",
    "Data_Exfiltration"
  ]
  email_addresses = [ "pulavarthy.karthik@nagarro.com" ]
  retention_days = 20
}

resource "azurerm_mssql_database" "test" {
  name           = "DEPexample-db"
  server_id      = azurerm_mssql_server.example.id
  license_type   = "BasePrice"
  max_size_gb    = var.max_size_gb
  sku_name       = var.sku_name

}