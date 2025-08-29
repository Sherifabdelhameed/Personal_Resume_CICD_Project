resource "azurerm_resource_group" "rg_name" {
  name     = "my_web_app_rg"
  location = "West Europe"
}

resource "azurerm_virtual_network" "my_web_app_vnet" {
  name                = "my_web_app_vnet"
  resource_group_name = azurerm_resource_group.rg_name.name
  location            = azurerm_resource_group.rg_name.location
  address_space       = ["10.0.0.0/16"]
}