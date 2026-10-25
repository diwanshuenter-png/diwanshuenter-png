output "resource_group_name" {
  value       = module.resource_group.name
  description = "Preproduction resource group name."
}

output "storage_account_name" {
  value       = azurerm_storage_account.this.name
  description = "Preproduction storage account name."
}
