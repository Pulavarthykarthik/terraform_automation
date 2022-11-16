output "resource_group_name" {
    value = module.resourcegroup.rg_name_out
}

output "location" {
    value = module.resourcegroup.rg_location
}

output "managed_identity_name" {
    value = module.managedidentities.managed_identity_name
}




output "adf_name" {
    value = module.ADF.adf_name
  
}

# output "github_account_name" {
#     value = module.ADF.github_account_name
  
# }


# output "github_branch_name" {
#     value = module.ADF.github_branch_name
  
# }


# output "root_folder" {
#     value = module.ADF.root_folder
  
# }


output "SQL_server_name" {
  value = module.SQL.SQL_server_name
}


output "SQL_database_name" {
    value = module.SQL.SQL_database_name
}


output "max_size_gb" {
    value = module.SQL.max_size_gb
}

output "sku_name" {
    value = module.SQL.sku_name
}


output "storage_account_name" {
    value = module.storageaccount.storage_account_name
  
}

output "container_name" {
    value = module.storageaccount.container_name
  
}
