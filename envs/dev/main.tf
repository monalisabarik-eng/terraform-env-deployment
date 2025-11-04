terraform {
  required_version = ">= 1.5.0"
}

provider "azurerm" {
  features {}
}

# --- NETWORK ---
module "network" {
  source              = "../../modules/network"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  subnets             = var.subnets
}

# --- COMPUTE ---
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

# --- APP SERVICE ---
module "app" {
  source              = "../../modules/app"
  prefix              = var.prefix
  location            = var.location
  resource_group_name = var.resource_group_name
}

# --- OUTPUTS ---
output "app_url" {
  description = "Application URL"
  value       = module.app.app_url
}

output "vm_ip" {
  description = "Compute VM NIC private IP"
  value       = module.compute.prefix
}
