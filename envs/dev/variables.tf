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

variable "TF_VAR_SUBSCRIPTION_ID" {
  type = string
}

variable "TF_VAR_CLIENT_ID" {
  type = string
}

variable "TF_VAR_client_secret" {
  type = string
  sensitive = true
}

variable "TF_VAR_TENANT_ID" {
  type = string
}

