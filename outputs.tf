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

# --- azurerm_eventhub ---
output "eventhubs_id" {
  description = "Map of id values across all eventhubs, keyed the same as var.eventhubs"
  value       = module.eventhubs.eventhubs_id
}

output "eventhubs_capture_description" {
  description = "Map of capture_description values across all eventhubs, keyed the same as var.eventhubs"
  value       = module.eventhubs.eventhubs_capture_description
}

output "eventhubs_message_retention" {
  description = "Map of message_retention values across all eventhubs, keyed the same as var.eventhubs"
  value       = module.eventhubs.eventhubs_message_retention
}

output "eventhubs_name" {
  description = "Map of name values across all eventhubs, keyed the same as var.eventhubs"
  value       = module.eventhubs.eventhubs_name
}

output "eventhubs_namespace_id" {
  description = "Map of namespace_id values across all eventhubs, keyed the same as var.eventhubs"
  value       = module.eventhubs.eventhubs_namespace_id
}

output "eventhubs_partition_count" {
  description = "Map of partition_count values across all eventhubs, keyed the same as var.eventhubs"
  value       = module.eventhubs.eventhubs_partition_count
}

output "eventhubs_partition_ids" {
  description = "Map of partition_ids values across all eventhubs, keyed the same as var.eventhubs"
  value       = module.eventhubs.eventhubs_partition_ids
}

output "eventhubs_retention_description" {
  description = "Map of retention_description values across all eventhubs, keyed the same as var.eventhubs"
  value       = module.eventhubs.eventhubs_retention_description
}

output "eventhubs_status" {
  description = "Map of status values across all eventhubs, keyed the same as var.eventhubs"
  value       = module.eventhubs.eventhubs_status
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

# --- azurerm_eventhub_namespace_schema_group ---
output "eventhub_namespace_schema_groups_id" {
  description = "Map of id values across all eventhub_namespace_schema_groups, keyed the same as var.eventhub_namespace_schema_groups"
  value       = module.eventhub_namespace_schema_groups.eventhub_namespace_schema_groups_id
}

output "eventhub_namespace_schema_groups_name" {
  description = "Map of name values across all eventhub_namespace_schema_groups, keyed the same as var.eventhub_namespace_schema_groups"
  value       = module.eventhub_namespace_schema_groups.eventhub_namespace_schema_groups_name
}

output "eventhub_namespace_schema_groups_namespace_id" {
  description = "Map of namespace_id values across all eventhub_namespace_schema_groups, keyed the same as var.eventhub_namespace_schema_groups"
  value       = module.eventhub_namespace_schema_groups.eventhub_namespace_schema_groups_namespace_id
}

output "eventhub_namespace_schema_groups_schema_compatibility" {
  description = "Map of schema_compatibility values across all eventhub_namespace_schema_groups, keyed the same as var.eventhub_namespace_schema_groups"
  value       = module.eventhub_namespace_schema_groups.eventhub_namespace_schema_groups_schema_compatibility
}

output "eventhub_namespace_schema_groups_schema_type" {
  description = "Map of schema_type values across all eventhub_namespace_schema_groups, keyed the same as var.eventhub_namespace_schema_groups"
  value       = module.eventhub_namespace_schema_groups.eventhub_namespace_schema_groups_schema_type
}

# --- azurerm_eventhub_authorization_rule ---
output "eventhub_authorization_rules_id" {
  description = "Map of id values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_id
}

output "eventhub_authorization_rules_eventhub_name" {
  description = "Map of eventhub_name values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_eventhub_name
}

output "eventhub_authorization_rules_listen" {
  description = "Map of listen values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_listen
}

output "eventhub_authorization_rules_manage" {
  description = "Map of manage values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_manage
}

output "eventhub_authorization_rules_name" {
  description = "Map of name values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_name
}

output "eventhub_authorization_rules_namespace_name" {
  description = "Map of namespace_name values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_namespace_name
}

output "eventhub_authorization_rules_primary_connection_string" {
  description = "Map of primary_connection_string values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_primary_connection_string
  sensitive   = true
}

output "eventhub_authorization_rules_primary_connection_string_alias" {
  description = "Map of primary_connection_string_alias values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_primary_connection_string_alias
  sensitive   = true
}

output "eventhub_authorization_rules_primary_key" {
  description = "Map of primary_key values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_primary_key
  sensitive   = true
}

output "eventhub_authorization_rules_resource_group_name" {
  description = "Map of resource_group_name values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_resource_group_name
}

output "eventhub_authorization_rules_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_secondary_connection_string
  sensitive   = true
}

output "eventhub_authorization_rules_secondary_connection_string_alias" {
  description = "Map of secondary_connection_string_alias values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_secondary_connection_string_alias
  sensitive   = true
}

output "eventhub_authorization_rules_secondary_key" {
  description = "Map of secondary_key values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_secondary_key
  sensitive   = true
}

output "eventhub_authorization_rules_send" {
  description = "Map of send values across all eventhub_authorization_rules, keyed the same as var.eventhub_authorization_rules"
  value       = module.eventhub_authorization_rules.eventhub_authorization_rules_send
}

# --- azurerm_eventhub_consumer_group ---
output "eventhub_consumer_groups_id" {
  description = "Map of id values across all eventhub_consumer_groups, keyed the same as var.eventhub_consumer_groups"
  value       = module.eventhub_consumer_groups.eventhub_consumer_groups_id
}

output "eventhub_consumer_groups_eventhub_name" {
  description = "Map of eventhub_name values across all eventhub_consumer_groups, keyed the same as var.eventhub_consumer_groups"
  value       = module.eventhub_consumer_groups.eventhub_consumer_groups_eventhub_name
}

output "eventhub_consumer_groups_name" {
  description = "Map of name values across all eventhub_consumer_groups, keyed the same as var.eventhub_consumer_groups"
  value       = module.eventhub_consumer_groups.eventhub_consumer_groups_name
}

output "eventhub_consumer_groups_namespace_name" {
  description = "Map of namespace_name values across all eventhub_consumer_groups, keyed the same as var.eventhub_consumer_groups"
  value       = module.eventhub_consumer_groups.eventhub_consumer_groups_namespace_name
}

output "eventhub_consumer_groups_resource_group_name" {
  description = "Map of resource_group_name values across all eventhub_consumer_groups, keyed the same as var.eventhub_consumer_groups"
  value       = module.eventhub_consumer_groups.eventhub_consumer_groups_resource_group_name
}

output "eventhub_consumer_groups_user_metadata" {
  description = "Map of user_metadata values across all eventhub_consumer_groups, keyed the same as var.eventhub_consumer_groups"
  value       = module.eventhub_consumer_groups.eventhub_consumer_groups_user_metadata
}


