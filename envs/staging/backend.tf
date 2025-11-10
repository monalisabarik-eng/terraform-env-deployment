# terraform {
#   backend "azurerm" {
#     resource_group_name  = "rg-terraform-state"
#     storage_account_name = "tfstateaccounttf"
#     container_name       = "tfstate"
#     key                  = "staging.terraform.tfstate"
#   }
# }

terraform {
  cloud {
    organization = "ntt-poc-org"  # Replace with your Terraform Cloud org name

    workspaces {
      name = "myapp-staging"         # Replace with your TFC workspace name (dev/staging/prod)
    }
  }

  # required_providers {
  #   azurerm = {
  #     source  = "hashicorp/azurerm"
  #     version = "~> 4.0"
  #   }
  # }

  # required_version = ">= 1.5.0"
}