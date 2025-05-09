resource "azurerm_subnet" "subnets" {
  for_each             = var.subnets
  name                 = each.value.name
  resource_group_name  = each.value.name
  virtual_network_name = each.value.name
  address_prefixes     = ["10.0.1.0/24"]
}