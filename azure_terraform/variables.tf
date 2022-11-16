variable "resource_group_name" {
    type = string
    description = "name of the resource group"
}

variable "location" {
    type = string
    description = "Location of the Deployment"
}

variable "environment" {
  type = string
}

variable "account_tier" {
  type = string
  description = "Name of the account_tier"
}

variable "replication_type" {
  type = string
  description = "Enter the replication type"
}

variable "managed_identity" {
  type = string
  description = "Name of the user assigned managed identity"
}

# variable "managed_identity_id" {
#   type = string
#   description = "Name of the user assigned managed identity id"
# }

variable "container_name" {
    type = string
    description = "Enter the name of the container"
  
}


variable "adf_name" {
    type = string
    description = "Enter the name of the ADF"
  
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

variable "sql_name" {
    type = string
    description = "Enter the name of the SQL Server"
  
}

variable "administrator_login_name" {
    type = string
    description = "Enter the administrator login name"
}

variable "administrator_login_password" {
    type = string
    description = "Enter the administrator login password"
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
