output "name" {
  description = "Created resource group name."
  value       = azurerm_resource_group.this.name
}

output "id" {
  description = "Created resource group ID."
  value       = azurerm_resource_group.this.id
}

output "location" {
  description = "Resource group location."
  value       = azurerm_resource_group.this.location
}
