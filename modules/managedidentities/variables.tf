variable "resource_group_name" {
    type = string
    description = "name of the resource group"
}

variable "location" {
    type = string
    description = "Location of the Deployment"
}

variable "managed_identity" {
  type = string
  description = "Name of the user assigned managed identity"
}