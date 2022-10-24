resource "azurerm_databricks_workspace" "example" {
  name                = "databricks-demo-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "standard"

  tags = {
    environment = var.environment
  }
}