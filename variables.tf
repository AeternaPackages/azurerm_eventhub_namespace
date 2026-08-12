variable "eventhub_namespaces" {
  description = <<EOT
Map of eventhub_namespaces, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sku
Optional:
    - auto_inflate_enabled
    - capacity
    - dedicated_cluster_id
    - local_authentication_enabled
    - maximum_throughput_units
    - minimum_tls_version
    - public_network_access_enabled
    - tags
    - identity (block)
    - network_rulesets (block)
Nested eventhubs (azurerm_eventhub):
    Required:
        - name
        - partition_count
    Optional:
        - message_retention
        - status
        - capture_description (block)
        - retention_description (block)
    Nested eventhub_authorization_rules (azurerm_eventhub_authorization_rule):
        Required:
            - name
            - namespace_name
            - resource_group_name
        Optional:
            - listen
            - manage
            - send
    Nested eventhub_consumer_groups (azurerm_eventhub_consumer_group):
        Required:
            - name
            - namespace_name
            - resource_group_name
        Optional:
            - user_metadata
Nested eventhub_namespace_customer_managed_keys (azurerm_eventhub_namespace_customer_managed_key):
    Required:
        - key_vault_key_ids
    Optional:
        - infrastructure_encryption_enabled
        - user_assigned_identity_id
Nested eventhub_namespace_schema_groups (azurerm_eventhub_namespace_schema_group):
    Required:
        - name
        - schema_compatibility
        - schema_type
EOT

  type = map(object({
    location                      = string
    name                          = string
    resource_group_name           = string
    sku                           = string
    auto_inflate_enabled          = optional(bool)
    capacity                      = optional(number)
    dedicated_cluster_id          = optional(string)
    local_authentication_enabled  = optional(bool)
    maximum_throughput_units      = optional(number)
    minimum_tls_version           = optional(string)
    public_network_access_enabled = optional(bool)
    tags                          = optional(map(string))
    identity = optional(object({
      identity_ids = optional(set(string))
      type         = string
    }))
    network_rulesets = optional(list(object({
      default_action = optional(string)
      ip_rule = optional(list(object({
        action  = optional(string)
        ip_mask = optional(string)
      })))
      public_network_access_enabled  = optional(bool)
      trusted_service_access_enabled = optional(bool)
      virtual_network_rule = optional(list(object({
        ignore_missing_virtual_network_service_endpoint = optional(bool)
        subnet_id                                       = optional(string)
      })))
    })))
    eventhubs = optional(map(object({
      name              = string
      partition_count   = number
      message_retention = optional(number)
      status            = optional(string)
      capture_description = optional(object({
        destination = object({
          archive_name_format         = string
          blob_container_name         = string
          name                        = string
          storage_account_id          = string
          storage_authentication_id   = optional(string)
          storage_authentication_type = optional(string)
        })
        enabled             = bool
        encoding            = string
        interval_in_seconds = optional(number)
        size_limit_in_bytes = optional(number)
        skip_empty_archives = optional(bool)
      }))
      retention_description = optional(object({
        cleanup_policy                    = string
        retention_time_in_hours           = optional(number)
        tombstone_retention_time_in_hours = optional(number)
      }))
      eventhub_authorization_rules = optional(map(object({
        name                = string
        namespace_name      = string
        resource_group_name = string
        listen              = optional(bool)
        manage              = optional(bool)
        send                = optional(bool)
      })))
      eventhub_consumer_groups = optional(map(object({
        name                = string
        namespace_name      = string
        resource_group_name = string
        user_metadata       = optional(string)
      })))
    })))
    eventhub_namespace_customer_managed_keys = optional(map(object({
      key_vault_key_ids                 = set(string)
      infrastructure_encryption_enabled = optional(bool)
      user_assigned_identity_id         = optional(string)
    })))
    eventhub_namespace_schema_groups = optional(map(object({
      name                 = string
      schema_compatibility = string
      schema_type          = string
    })))
  }))

  validation {
    condition = alltrue(concat(
      [for kk in keys(var.eventhub_namespaces) : !strcontains(kk, "/")],
      flatten([for k0, v0 in var.eventhub_namespaces : [for kk in keys(coalesce(v0.eventhubs, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.eventhub_namespaces : [for k1, v1 in coalesce(v0.eventhubs, {}) : [for kk in keys(coalesce(v1.eventhub_authorization_rules, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.eventhub_namespaces : [for k1, v1 in coalesce(v0.eventhubs, {}) : [for kk in keys(coalesce(v1.eventhub_consumer_groups, {})) : !strcontains(kk, "/")]]]),
      flatten([for k0, v0 in var.eventhub_namespaces : [for kk in keys(coalesce(v0.eventhub_namespace_customer_managed_keys, {})) : !strcontains(kk, "/")]]),
      flatten([for k0, v0 in var.eventhub_namespaces : [for kk in keys(coalesce(v0.eventhub_namespace_schema_groups, {})) : !strcontains(kk, "/")]])
    ))
    error_message = "Map keys in this package must not contain '/': it is used internally as a nesting-key separator, so a key containing it can silently collide two different nested entries into one. Rename the offending key(s)."
  }
}
