output "global_resource_group_name" {
  value = azurerm_resource_group.global.name
}

output "monitoring_resource_group_name" {
  value = azurerm_resource_group.monitoring.name
}

# Azure Container Registry (Global) Login Server
output "acr_login_server" {
  value       = azurerm_container_registry.main.login_server
  description = "URL of the ACR. Sample: myacr.azurecr.io"
}

output "acr_name" {
  value = azurerm_container_registry.main.name
}

output "cosmosdb_account_name" {
  value = azurerm_cosmosdb_account.main.name
}

output "cosmosdb_database_name" {
  value = azurerm_cosmosdb_sql_database.main.name
}

output "frontdoor_resource_id" {
  value = azurerm_cdn_frontdoor_profile.main.id
}

output "frontdoor_name" {
  value = azurerm_cdn_frontdoor_profile.main.name
}

# Azure Front Door Header ID
output "frontdoor_id_header" {
  value = azurerm_cdn_frontdoor_profile.main.resource_guid
}

# Azure Front Door FQDN
output "frontdoor_fqdn" {
  value = var.custom_fqdn != "" ? var.custom_fqdn : azurerm_cdn_frontdoor_endpoint.default.host_name
}

output "global_storage_account_name" {
  value = azurerm_storage_account.global.name
}

output "azure_monitor_action_group_resource_id" {
  value = azurerm_monitor_action_group.main.id
}
