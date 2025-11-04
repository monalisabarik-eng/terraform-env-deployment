terraform {
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "tfstateaccount"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source              = "../../modules/network"
  prefix              = "dev"
  location            = "eastus"
  resource_group_name = "rg-dev"
  address_space       = ["10.0.0.0/16"]
  subnets = {
    app = "10.0.1.0/24"
    db  = "10.0.2.0/24"
  }
}

module "compute" {
  source              = "../../modules/compute"
  prefix              = "dev"
  location            = "eastus"
  resource_group_name = "rg-dev"
  subnet_id           = module.network.subnet_ids["app"]
  ssh_public_key      = file("~/.ssh/id_rsa.pub")
}

module "app" {
  source              = "../../modules/app"
  prefix              = "dev"
  location            = "eastus"
  resource_group_name = "rg-dev"
}

output "app_url" {
  value = module.app.app_url
}
