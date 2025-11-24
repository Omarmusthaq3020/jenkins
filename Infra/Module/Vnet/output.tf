output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_name" {
  value = azurerm_subnet.vnet_subnet.name
}

output "subnet_id" {
  value = azurerm_subnet.vnet_subnet.id
}

output "vm_subnet_id" {
  value = azurerm_subnet.vm_subnet.id
}
