variable "prefix" {
  description = "Prefix for all resource names"
  type        = string
}

variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
  default     = "rg-dev"
}

variable "address_space" {
  description = "VNet address space"
  type        = list(string)
}

variable "subnets" {
  description = "Subnets map name => CIDR"
  type        = map(string)
}

variable "vm_size" {
  description = "Azure VM size"
  type        = string
  default     = "Standard_B1ms"
}

variable "admin_username" {
  description = "Admin username for VM"
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "Path to SSH public key for VM access"
  type        = string
}

variable "client_id" {
  description = "The Azure client ID for the service principal."
  type        = string
  sensitive   = true
}

variable "client_secret" {
  description = "The Azure client secret for the service principal."
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "The Azure tenant ID."
  type        = string
}

variable "subscription_id" {
  description = "The Azure subscription ID."
  type        = string
}
