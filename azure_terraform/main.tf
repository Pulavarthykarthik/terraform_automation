terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.11.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

module "resource_grp" {
  source = "git@github.com:terraform_automation//modules/resource_grp"
  base_name = var.base_name
  location = var.location
  environment = "demo"
}

module "storage_account" {
  source = "git@github.com:Pulavarthykarthik/terraform_automation//modules/storage_account"
  base_name = var.base_name
  resource_group_name = module.resource_grp.rg_name_out
  location = var.location
  environment = var.environment
  contName = var.contName
  contCount = var.contCount
}

module "key_vault_sql"{
    source = "git@github.com:Pulavarthykarthik/terraform_automation//modules/key_vault"
    resource_group_name = module.resource_grp.rg_name_out
    location = var.location
    environment = var.environment
}

module "ADF" {
    source = "git@github.com:Pulavarthykarthik/terraform_automation//modules/ADF"
    resource_group_name= module.resource_grp.rg_name_out
    location = var.location
    environment = var.environment
  
}

module "DataBricks" {
  source ="git@github.com:Pulavarthykarthik/terraform_automation//modules/DataBricks"
  resource_group_name=module.resource_grp.rg_name_out
  location = var.location
  environment = var.environment
}

module "CosmosDBacc" {
  source="git@github.com:Pulavarthykarthik/terraform_automation//modules/CosmosDBacc"
  resource_group_name=module.resource_grp.rg_name_out
  location = var.location
  environment = var.environment
}

module "Synapse" {
  source = "git@github.com:Pulavarthykarthik/terraform_automation//modules/Synapse"
  resource_group_name=module.resource_grp.rg_name_out
  location = var.location
  environment = var.environment
}

module "IOThub" {
  source = "git@github.com:Pulavarthykarthik/terraform_automation//modules/IOThub"
  resource_group_name=module.resource_grp.rg_name_out
  location = var.location
  environment = var.environment
}

############################ run above code before ########################################
#how to add network rule for mssql server and database through terraform

data "azurerm_key_vault" "example" {
  name                = "kskey-demo"
  resource_group_name = "dem-admin-bi-rg"
}
data "azurerm_key_vault_secret" "secret1" {
  name         = "DEMO-SQL-pass3"
  key_vault_id = data.azurerm_key_vault.example.id
}

module "SQL" {
  source = "git@github.com:Pulavarthykarthik/terraform_automation//modules/SQL"
  #key_vault_id= module.key_vault_sql.kv_id_out
  administrator_login_password = data.azurerm_key_vault_secret.secret1.value
  resource_group_name = module.resource_grp.rg_name_out
  location = var.location
  environment = var.environment

  max_size_gb = var.max_size_gb
  sku_name = var.sku_name
}

