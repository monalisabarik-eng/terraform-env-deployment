resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

   tags = {
    Environment = var.environment
    Project     = "Thermofisher"
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.prefix}-vnet"
  address_space       = var.address_space
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  for_each = var.subnets

  name                 = each.key
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [each.value]
}

output "subnet_ids" {
  value = { for k, v in azurerm_subnet.subnet : k => v.id }
}
