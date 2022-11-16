variable "sql_name" {
    type = string
    description = "Enter the name of the SQL Server"
  
}

variable "resource_group_name" {
    type = string
    description = "name of the resource group"
}


variable "location" {
    type = string
    description = "Enter the location"
}


variable "administrator_login_name" {
    type = string
    description = "Enter the administrator login name"
}

variable "administrator_login_password" {
    type = string
    description = "Enter the administrator login password"
}

variable "environment" {
  type = string
}

variable "managed_identity_id" {
  type = string
  description = "Name of the user assigned managed identity"
}

variable "sql_datbase" {
    type = string
    description = "Enter the name of the SQL database"
  
}

variable "max_size_gb" {
    type = string
    description = "Enter the name of the size of the database"
  
}

variable "sku_name" {
    type = string
    description = "Enter the name of the sku_name"
  
}