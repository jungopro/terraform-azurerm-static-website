output "id" {
  description = "Id of the storage account created."
  value       = "${azurerm_storage_account.storage_account.id}"
}

output "name" {
  description = "Name of the storage account created."
  value       = "${azurerm_storage_account.storage_account.name}"
}

output "access_key" {
  description = "Primary Access Key of the storage account created."
  value       = "${azurerm_storage_account.storage_account.primary_access_key}"
}

output "connection_string" {
  description = "Primary Connection String of the storage account created."
  value       = "${azurerm_storage_account.storage_account.primary_connection_string}"
}
