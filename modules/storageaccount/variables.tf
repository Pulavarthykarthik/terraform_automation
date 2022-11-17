variable "container_name" {
    type = string
    description = "Enter the name of the container"
  
}

variable "location" {
    type = string
    description = "Enter the location"
}

variable "resource_group_name" {
    type = string
    description = "name of the resource group"
}


variable "environment" {
  type = string
}

# variable "managed_identity_id" {
#   type = string
#   description = "Name of the user assigned managed identity"
# }


variable "account_tier" {
  type = string
  description = "Name of the accesstier"
}

variable "replication_type" {
  type = string
  description = "Enter the replication type"
}