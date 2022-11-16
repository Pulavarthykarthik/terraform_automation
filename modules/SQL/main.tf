resource "azurerm_mssql_server" "demo_sql" {
    name  = var.sql_name
    resource_group_name = var.resource_group_name
    location                     = var.location
    version                      = "12.0"
    administrator_login          = var.administrator_login_name
    administrator_login_password = var.administrator_login_password
    minimum_tls_version          = "1.2"
    identity {
      type = "UserAssigned"
      identity_ids = [var.managed_identity_id]
      
    }
    tags = {
      environment = var.environment
    }
    primary_user_assigned_identity_id = var.managed_identity_id
    

}


resource "azurerm_mssql_database" "demo_sql_database" {
    name = var.sql_datbase
    server_id = azurerm_mssql_server.demo_sql.id
    license_type = "BasePrice"
    max_size_gb = var.max_size_gb
    sku_name = var.sku_name
  
}
