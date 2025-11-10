variable "prefix" {
  type = string
  default = "dev"
}
variable "location" {
  type = string
  default = "eastus"
}
variable "resource_group_name" {
  type = string
  default = "rg-dev"
}
variable "subnet_id" {
  type = string
}
variable "vm_size" {
  type    = string
  default = "Standard_B1ms"
}
variable "admin_username" {
  type    = string
  default = "azureuser"
}
variable "ssh_public_key" {
  type = string
}
