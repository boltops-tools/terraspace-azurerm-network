resource "azurerm_resource_group" "this" {
  name     = "demo-resources"
  location = var.location
}

module "network" {
  source              = "../../modules/network"
  vnet_name           = "network-<%= Terraspace.env %>"
  resource_group_name = azurerm_resource_group.this.name
  address_space       = var.address_space
  subnet_prefixes     = var.subnet_prefixes
  subnet_names        = var.subnet_names

  tags = {
    environment = "dev"
    costcenter  = "it"
  }

  depends_on = [azurerm_resource_group.this]
}
