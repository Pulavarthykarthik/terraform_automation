output "SQL_server_name" {
  value = azurerm_mssql_server.demo_sql.name
}


output "SQL_database_name" {
    value = azurerm_mssql_database.demo_sql_database.name
}


output "max_size_gb" {
    value = azurerm_mssql_database.demo_sql_database.max_size_gb
}

output "sku_name" {
    value = azurerm_mssql_database.demo_sql_database.sku_name
}