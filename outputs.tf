# --- azurerm_eventhub_namespace ---
output "eventhub_namespaces_id" {
  description = "Map of id values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_id
}

output "eventhub_namespaces_auto_inflate_enabled" {
  description = "Map of auto_inflate_enabled values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_auto_inflate_enabled
}

output "eventhub_namespaces_capacity" {
  description = "Map of capacity values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_capacity
}

output "eventhub_namespaces_dedicated_cluster_id" {
  description = "Map of dedicated_cluster_id values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_dedicated_cluster_id
}

output "eventhub_namespaces_default_primary_connection_string" {
  description = "Map of default_primary_connection_string values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_default_primary_connection_string
  sensitive   = true
}

output "eventhub_namespaces_default_primary_connection_string_alias" {
  description = "Map of default_primary_connection_string_alias values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_default_primary_connection_string_alias
  sensitive   = true
}

output "eventhub_namespaces_default_primary_key" {
  description = "Map of default_primary_key values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_default_primary_key
  sensitive   = true
}

output "eventhub_namespaces_default_secondary_connection_string" {
  description = "Map of default_secondary_connection_string values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_default_secondary_connection_string
  sensitive   = true
}

output "eventhub_namespaces_default_secondary_connection_string_alias" {
  description = "Map of default_secondary_connection_string_alias values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_default_secondary_connection_string_alias
  sensitive   = true
}

output "eventhub_namespaces_default_secondary_key" {
  description = "Map of default_secondary_key values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_default_secondary_key
  sensitive   = true
}

output "eventhub_namespaces_identity" {
  description = "Map of identity values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_identity
}

output "eventhub_namespaces_local_authentication_enabled" {
  description = "Map of local_authentication_enabled values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_local_authentication_enabled
}

output "eventhub_namespaces_location" {
  description = "Map of location values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_location
}

output "eventhub_namespaces_maximum_throughput_units" {
  description = "Map of maximum_throughput_units values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_maximum_throughput_units
}

output "eventhub_namespaces_minimum_tls_version" {
  description = "Map of minimum_tls_version values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_minimum_tls_version
}

output "eventhub_namespaces_name" {
  description = "Map of name values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_name
}

output "eventhub_namespaces_network_rulesets" {
  description = "Map of network_rulesets values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_network_rulesets
}

output "eventhub_namespaces_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_public_network_access_enabled
}

output "eventhub_namespaces_resource_group_name" {
  description = "Map of resource_group_name values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_resource_group_name
}

output "eventhub_namespaces_sku" {
  description = "Map of sku values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_sku
}

output "eventhub_namespaces_tags" {
  description = "Map of tags values across all eventhub_namespaces, keyed the same as var.eventhub_namespaces"
  value       = module.eventhub_namespaces.eventhub_namespaces_tags
}

# --- azurerm_eventhub_namespace_customer_managed_key ---
output "eventhub_namespace_customer_managed_keys_id" {
  description = "Map of id values across all eventhub_namespace_customer_managed_keys, keyed the same as var.eventhub_namespace_customer_managed_keys"
  value       = module.eventhub_namespace_customer_managed_keys.eventhub_namespace_customer_managed_keys_id
}

output "eventhub_namespace_customer_managed_keys_eventhub_namespace_id" {
  description = "Map of eventhub_namespace_id values across all eventhub_namespace_customer_managed_keys, keyed the same as var.eventhub_namespace_customer_managed_keys"
  value       = module.eventhub_namespace_customer_managed_keys.eventhub_namespace_customer_managed_keys_eventhub_namespace_id
}

output "eventhub_namespace_customer_managed_keys_infrastructure_encryption_enabled" {
  description = "Map of infrastructure_encryption_enabled values across all eventhub_namespace_customer_managed_keys, keyed the same as var.eventhub_namespace_customer_managed_keys"
  value       = module.eventhub_namespace_customer_managed_keys.eventhub_namespace_customer_managed_keys_infrastructure_encryption_enabled
}

output "eventhub_namespace_customer_managed_keys_key_vault_key_ids" {
  description = "Map of key_vault_key_ids values across all eventhub_namespace_customer_managed_keys, keyed the same as var.eventhub_namespace_customer_managed_keys"
  value       = module.eventhub_namespace_customer_managed_keys.eventhub_namespace_customer_managed_keys_key_vault_key_ids
}

output "eventhub_namespace_customer_managed_keys_user_assigned_identity_id" {
  description = "Map of user_assigned_identity_id values across all eventhub_namespace_customer_managed_keys, keyed the same as var.eventhub_namespace_customer_managed_keys"
  value       = module.eventhub_namespace_customer_managed_keys.eventhub_namespace_customer_managed_keys_user_assigned_identity_id
}


