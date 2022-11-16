output "managed_identity_name" {
  value = azurerm_user_assigned_identity.demo_umi.name
}


output "managed_identity_id" {
  value = azurerm_user_assigned_identity.demo_umi.id
}

