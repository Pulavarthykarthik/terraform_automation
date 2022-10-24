resource "azurerm_data_factory" "example" {
  name                = "DEMO-ADF-${var.environment}"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags = {
    environment = var.environment
  }
}
