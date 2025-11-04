terraform {
  required_version = ">= 1.5.0"
}

provider "azurerm" {
  features {}
}

module "network" {
  source              = "../../modules/network"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  subnets             = var.subnets
}

module "compute" {
  source              = "../../modules/compute"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = module.network.subnet_ids["app"]
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  ssh_public_key      = file(var.ssh_public_key_path)
}

module "app" {
  source              = "../../modules/app"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = var.resource_group_name
}

output "app_url" {
  description = "Application URL"
  value       = module.app.app_url
}
