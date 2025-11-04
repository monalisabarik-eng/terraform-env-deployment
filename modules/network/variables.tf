variable "prefix" {
  type        = string
  description = "Prefix for naming resources"
}

variable "location" {
  type        = string
  description = "Azure location"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "address_space" {
  type        = list(string)
  description = "VNet address space"
}

variable "subnets" {
  type        = map(string)
  description = "Subnets map of name => CIDR"
}
