##########general
variable "location" {
  
}
variable "environment" {
  
}
##########resource group
variable "base_name" {
    type = string
    description = "The base of the name for the resource group and storage account"
}
##########SQL
variable "max_size_gb" {
  
}
variable "sku_name" {
  
}
###########STORAGE ACCOUNT
variable "contName" {
  type = string
}
variable "contCount" {
}
