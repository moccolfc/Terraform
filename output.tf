output "primary_location" {
    value = azurerm_resource_group.Main-RG.location
    description = "Primary Location"
}

output "vnet_address_space" {
    value = azurerm_virtual_network.Main-Network.address_space
    description = "VNET Address Space"
}