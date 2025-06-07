output "subnet_name" {
  description = "The name of the subnet"
  value = azurerm_resource_group.rg.name
}

output "subnet_id" {
  description = "The ID of the subnet"
  value = azurerm_subnet.subnet.id  
}