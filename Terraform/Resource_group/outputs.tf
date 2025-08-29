output "resource_group_name" {
     value = azurerm_resource_group.rg_name.name
}

output "resource_group_location" {
  value = azurerm_resource_group.rg_name.location
}