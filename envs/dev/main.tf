terraform {
  required_version = ">= 1.5.0"
}

provider "azurerm" {
  features {}
  TF_VAR_SUBSCRIPTION_ID = var.TF_VAR_SUBSCRIPTION_ID
  TF_VAR_CLIENT_ID       = var.TF_VAR_CLIENT_ID
  TF_VAR_client_secret   = var.TF_VAR_client_secret
  TF_VAR_TENANT_ID       = var.TF_VAR_TENANT_ID
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
  ssh_public_key      = var.ssh_public_key
}


# output "vm_ip" {
#   description = "Compute VM NIC private IP"
#   value       = module.compute.prefix
# }
