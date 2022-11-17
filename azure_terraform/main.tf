terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "3.31.0"
    }
    random = {
        source = "hashicorp/random"
        version = "3.4.3"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}





module "resourcegroup" {
    source = "git::https://github.com/Pulavarthykarthik/terraform_automation.git//modules/resourcegroup"
    resource_group_name = var.resource_group_name
    location = var.location
    environment = var.environment
  
}


# module "managedidentities" {
#     source = "git::https://github.com/Pulavarthykarthik/terraform_automation.git//modules/managedidentities"
#     managed_identity = var.managed_identity
#     resource_group_name = module.resourcegroup.rg_name_out
#     location = module.resourcegroup.rg_location
  
# }


module "storageaccount" {
    source = "git::https://github.com/Pulavarthykarthik/terraform_automation.git//modules/storageaccount"
    location = module.resourcegroup.rg_location
    resource_group_name = module.resourcegroup.rg_name_out
    account_tier = var.account_tier
    replication_type = var.replication_type
    environment = var.environment
    # managed_identity_id = module.managedidentities.managed_identity_id
    container_name = var.container_name


  
}

module "ADF" {
    source = "git::https://github.com/Pulavarthykarthik/terraform_automation.git//modules/ADF"
    adf_name = var.adf_name
    location = module.resourcegroup.rg_location
    resource_group_name = module.resourcegroup.rg_name_out
    environment = var.environment
    # managed_identity_id = module.managedidentities.managed_identity_id
    # github_account_name = var.github_account_name
    # github_branch_name = var.github_branch_name
    # github_url = var.github_url
    # repo_name = var.repo_name
    # root_folder = var.root_folder

  
}


module "SQL" {
    source = "git::https://github.com/Pulavarthykarthik/terraform_automation.git//modules/SQL"
    sql_name = var.sql_name
    resource_group_name = module.resourcegroup.rg_name_out
    location = module.resourcegroup.rg_location
    environment = var.environment
    # managed_identity_id = module.managedidentities.managed_identity_id
    administrator_login_name = var.administrator_login_name
    administrator_login_password = var.administrator_login_password
    sql_datbase = var.sql_datbase
    max_size_gb = var.max_size_gb
    sku_name = var.sku_name


  
}