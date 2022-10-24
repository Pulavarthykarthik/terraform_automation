output "StorageActName" {
  value = module.storage_account.stg_act_name_out
}

output "RgName" {
  value = module.resource_grp.rg_name_out
}
# output "secVal" {
#   value  = module.SQL.secret_out
#   sensitive = true
# }
output "mssqlName" {
  value= module.SQL.mssql_servername_out
}
output "adfName" {
  value = module.ADF.adf_name_out
}
output "DataBricksName" {
  value = module.DataBricks.databricks_name_out
}
output "cosmosdbName" {
  value= module.CosmosDBacc.cosmosdb_name_out
}
output "iothubName" {
  value = module.IOThub.iothub_name_out
}