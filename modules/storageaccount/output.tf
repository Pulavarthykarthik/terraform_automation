output "storage_account_name" {
    value = azurerm_storage_account.demo_storage.name
  
}

output "container_name" {
    value = azurerm_storage_container.demo_blob.name
  
}