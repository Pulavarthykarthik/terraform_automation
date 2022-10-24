resource "azurerm_resource_group" "example" {
  name     = "${var.base_name}Demo-RG-${var.environment}"
  location = var.location
  tags = {
    "environment" = var.environment
  }
}