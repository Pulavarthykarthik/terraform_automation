// output "secret_out" {
//   value = data.azurerm_key_vault_secret.example.value
//   sensitive = true
// }
output "mssql_servername_out" {
  value = resource.azurerm_mssql_server.example.name
}