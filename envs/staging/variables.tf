variable "prefix" {
  type        = string
  description = "Prefix for all resource names"
}

variable "location" {
  type        = string
  description = "Azure region for resources"
}

variable "resource_group_name" {
  type        = string
  description = "Azure resource group name"
  default     = "rg-staging"
}

variable "address_space" {
  type        = list(string)
  description = "VNet address space"
}

variable "subnets" {
  type        = map(string)
  description = "Subnets map of name => CIDR"
}

variable "vm_size" {
  type        = string
  description = "Azure VM size"
}

variable "admin_username" {
  type        = string
  description = "VM admin username"
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
