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
  default     = "rg-prod"
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
