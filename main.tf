locals {
  eventhub_namespaces = { for k1, v1 in var.eventhub_namespaces : k1 => { auto_inflate_enabled = v1.auto_inflate_enabled, capacity = v1.capacity, dedicated_cluster_id = v1.dedicated_cluster_id, identity = v1.identity, local_authentication_enabled = v1.local_authentication_enabled, location = v1.location, maximum_throughput_units = v1.maximum_throughput_units, minimum_tls_version = v1.minimum_tls_version, name = v1.name, network_rulesets = v1.network_rulesets, public_network_access_enabled = v1.public_network_access_enabled, resource_group_name = v1.resource_group_name, sku = v1.sku, tags = v1.tags } }

  eventhubs = merge([
    for k1, v1 in var.eventhub_namespaces : {
      for k2, v2 in coalesce(v1.eventhubs, {}) :
      "${k1}/${k2}" => merge(v2, {
        namespace_id = module.eventhub_namespaces.eventhub_namespaces_id["${k1}"]
      })
    }
  ]...)

  eventhub_namespace_customer_managed_keys = merge([
    for k1, v1 in var.eventhub_namespaces : {
      for k2, v2 in coalesce(v1.eventhub_namespace_customer_managed_keys, {}) :
      "${k1}/${k2}" => merge(v2, {
        eventhub_namespace_id = module.eventhub_namespaces.eventhub_namespaces_id["${k1}"]
      })
    }
  ]...)

  eventhub_namespace_schema_groups = merge([
    for k1, v1 in var.eventhub_namespaces : {
      for k2, v2 in coalesce(v1.eventhub_namespace_schema_groups, {}) :
      "${k1}/${k2}" => merge(v2, {
        namespace_id = module.eventhub_namespaces.eventhub_namespaces_id["${k1}"]
      })
    }
  ]...)

  eventhub_authorization_rules = merge([
    for k1, v1 in var.eventhub_namespaces : merge([
      for k2, v2 in coalesce(v1.eventhubs, {}) : {
        for k3, v3 in coalesce(v2.eventhub_authorization_rules, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          eventhub_name = module.eventhubs.eventhubs_name["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)

  eventhub_consumer_groups = merge([
    for k1, v1 in var.eventhub_namespaces : merge([
      for k2, v2 in coalesce(v1.eventhubs, {}) : {
        for k3, v3 in coalesce(v2.eventhub_consumer_groups, {}) :
        "${k1}/${k2}/${k3}" => merge(v3, {
          eventhub_name = module.eventhubs.eventhubs_name["${k1}/${k2}"]
        })
      }
    ]...)
  ]...)
}

module "eventhub_namespaces" {
  source              = "git::https://github.com/AeternaModules/azurerm_eventhub_namespace.git?ref=v5.0.0"
  eventhub_namespaces = local.eventhub_namespaces
}

module "eventhubs" {
  source     = "git::https://github.com/AeternaModules/azurerm_eventhub.git?ref=v5.0.0"
  eventhubs  = local.eventhubs
  depends_on = [module.eventhub_namespaces]
}

module "eventhub_namespace_customer_managed_keys" {
  source                                   = "git::https://github.com/AeternaModules/azurerm_eventhub_namespace_customer_managed_key.git?ref=v5.0.0"
  eventhub_namespace_customer_managed_keys = local.eventhub_namespace_customer_managed_keys
  depends_on                               = [module.eventhub_namespaces]
}

module "eventhub_namespace_schema_groups" {
  source                           = "git::https://github.com/AeternaModules/azurerm_eventhub_namespace_schema_group.git?ref=v5.0.0"
  eventhub_namespace_schema_groups = local.eventhub_namespace_schema_groups
  depends_on                       = [module.eventhub_namespaces]
}

module "eventhub_authorization_rules" {
  source                       = "git::https://github.com/AeternaModules/azurerm_eventhub_authorization_rule.git?ref=v5.0.0"
  eventhub_authorization_rules = local.eventhub_authorization_rules
  depends_on                   = [module.eventhubs]
}

module "eventhub_consumer_groups" {
  source                   = "git::https://github.com/AeternaModules/azurerm_eventhub_consumer_group.git?ref=v5.0.0"
  eventhub_consumer_groups = local.eventhub_consumer_groups
  depends_on               = [module.eventhubs]
}

