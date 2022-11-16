variable "adf_name" {
    type = string
    description = "Enter the name of the ADF"
  
}


variable "managed_identity_id" {
  type = string
  description = "Name of the user assigned managed identity"
}

variable "environment" {
  type = string
}

variable "location" {
    type = string
    description = "Enter the location"
}


variable "resource_group_name" {
    type = string
    description = "name of the resource group"
}


# variable "github_account_name" {
#     type = string
#     description = "name of the github account"
# }


# variable "github_branch_name" {
#     type = string
#     description = "name of the github branch"
# }

# variable "github_url" {
#     type = string
#     description = "URL of the github"
# }


# variable "repo_name" {
#     type = string
#     description = "Name of the Repo"
# }

# variable "root_folder" {
#     type = string
#     description = "Name of the root folder"
# }