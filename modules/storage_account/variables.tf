variable "base_name" {
  type        = string
  description = "The storage accuont base name"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "The location for the deployment"
}

variable "environment" {
  type = string
}
variable "contName" {
  type = string
}
variable "contCount" {
  
}

#newly added
#locals {
  #my_ip = ["122.176.159.113"]
  
#}