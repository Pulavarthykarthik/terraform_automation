resource "azurerm_iothub" "example" {
  name                = "Example-IoTHub-demo"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags = {
    environment = var.environment
  }
  sku {
    name     = "B1"
    capacity = "1"
  }
}