resource "azurerm_data_factory" "demo_adf" {
  name                = var.adf_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags = {
    environment = var.environment
  }
  # identity {
  #   type = "UserAssigned"
  #   identity_ids = [ var.managed_identity_id ]
  # }
  # github_configuration {
  #   account_name = var.github_account_name
  #   branch_name = var.github_branch_name
  #   git_url = var.github_url
  #   repository_name = var.repo_name
  #   root_folder = var.root_folder
  # }
}
