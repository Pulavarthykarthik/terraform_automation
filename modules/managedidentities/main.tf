resource "azurerm_user_assigned_identity" "demo_umi" {
  name = var.managed_identity
  location = var.location
  resource_group_name = var.resource_group_name
}