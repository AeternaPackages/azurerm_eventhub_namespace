# --- azurerm_eventhub_namespace ---
output "eventhub_namespaces" {
  description = "All eventhub_namespace resources"
  value       = module.eventhub_namespaces.eventhub_namespaces
  sensitive   = true
}
output "eventhub_namespaces_auto_inflate_enabled" {
  description = "List of auto_inflate_enabled values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.auto_inflate_enabled]
}
output "eventhub_namespaces_capacity" {
  description = "List of capacity values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.capacity]
}
output "eventhub_namespaces_dedicated_cluster_id" {
  description = "List of dedicated_cluster_id values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.dedicated_cluster_id]
}
output "eventhub_namespaces_default_primary_connection_string" {
  description = "List of default_primary_connection_string values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.default_primary_connection_string]
  sensitive   = true
}
output "eventhub_namespaces_default_primary_connection_string_alias" {
  description = "List of default_primary_connection_string_alias values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.default_primary_connection_string_alias]
  sensitive   = true
}
output "eventhub_namespaces_default_primary_key" {
  description = "List of default_primary_key values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.default_primary_key]
  sensitive   = true
}
output "eventhub_namespaces_default_secondary_connection_string" {
  description = "List of default_secondary_connection_string values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.default_secondary_connection_string]
  sensitive   = true
}
output "eventhub_namespaces_default_secondary_connection_string_alias" {
  description = "List of default_secondary_connection_string_alias values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.default_secondary_connection_string_alias]
  sensitive   = true
}
output "eventhub_namespaces_default_secondary_key" {
  description = "List of default_secondary_key values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.default_secondary_key]
  sensitive   = true
}
output "eventhub_namespaces_identity" {
  description = "List of identity values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.identity]
}
output "eventhub_namespaces_local_authentication_enabled" {
  description = "List of local_authentication_enabled values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.local_authentication_enabled]
}
output "eventhub_namespaces_location" {
  description = "List of location values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.location]
}
output "eventhub_namespaces_maximum_throughput_units" {
  description = "List of maximum_throughput_units values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.maximum_throughput_units]
}
output "eventhub_namespaces_minimum_tls_version" {
  description = "List of minimum_tls_version values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.minimum_tls_version]
}
output "eventhub_namespaces_name" {
  description = "List of name values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.name]
}
output "eventhub_namespaces_network_rulesets" {
  description = "List of network_rulesets values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.network_rulesets]
}
output "eventhub_namespaces_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.public_network_access_enabled]
}
output "eventhub_namespaces_resource_group_name" {
  description = "List of resource_group_name values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.resource_group_name]
}
output "eventhub_namespaces_sku" {
  description = "List of sku values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.sku]
}
output "eventhub_namespaces_tags" {
  description = "List of tags values across all eventhub_namespaces"
  value       = [for k, v in module.eventhub_namespaces.eventhub_namespaces : v.tags]
}


# --- azurerm_eventhub_namespace_customer_managed_key ---
output "eventhub_namespace_customer_managed_keys" {
  description = "All eventhub_namespace_customer_managed_key resources"
  value       = module.eventhub_namespace_customer_managed_keys.eventhub_namespace_customer_managed_keys
}
output "eventhub_namespace_customer_managed_keys_eventhub_namespace_id" {
  description = "List of eventhub_namespace_id values across all eventhub_namespace_customer_managed_keys"
  value       = [for k, v in module.eventhub_namespace_customer_managed_keys.eventhub_namespace_customer_managed_keys : v.eventhub_namespace_id]
}
output "eventhub_namespace_customer_managed_keys_infrastructure_encryption_enabled" {
  description = "List of infrastructure_encryption_enabled values across all eventhub_namespace_customer_managed_keys"
  value       = [for k, v in module.eventhub_namespace_customer_managed_keys.eventhub_namespace_customer_managed_keys : v.infrastructure_encryption_enabled]
}
output "eventhub_namespace_customer_managed_keys_key_vault_key_ids" {
  description = "List of key_vault_key_ids values across all eventhub_namespace_customer_managed_keys"
  value       = [for k, v in module.eventhub_namespace_customer_managed_keys.eventhub_namespace_customer_managed_keys : v.key_vault_key_ids]
}
output "eventhub_namespace_customer_managed_keys_user_assigned_identity_id" {
  description = "List of user_assigned_identity_id values across all eventhub_namespace_customer_managed_keys"
  value       = [for k, v in module.eventhub_namespace_customer_managed_keys.eventhub_namespace_customer_managed_keys : v.user_assigned_identity_id]
}



