output "virtual_network_gateway_nat_rules_id" {
  description = "Map of id values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "virtual_network_gateway_nat_rules_external_mapping" {
  description = "Map of external_mapping values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.external_mapping if v.external_mapping != null && length(v.external_mapping) > 0 }
}
output "virtual_network_gateway_nat_rules_internal_mapping" {
  description = "Map of internal_mapping values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.internal_mapping if v.internal_mapping != null && length(v.internal_mapping) > 0 }
}
output "virtual_network_gateway_nat_rules_ip_configuration_id" {
  description = "Map of ip_configuration_id values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.ip_configuration_id if v.ip_configuration_id != null && length(v.ip_configuration_id) > 0 }
}
output "virtual_network_gateway_nat_rules_mode" {
  description = "Map of mode values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.mode if v.mode != null && length(v.mode) > 0 }
}
output "virtual_network_gateway_nat_rules_name" {
  description = "Map of name values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.name if v.name != null && length(v.name) > 0 }
}
output "virtual_network_gateway_nat_rules_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "virtual_network_gateway_nat_rules_type" {
  description = "Map of type values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.type if v.type != null && length(v.type) > 0 }
}
output "virtual_network_gateway_nat_rules_virtual_network_gateway_id" {
  description = "Map of virtual_network_gateway_id values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.virtual_network_gateway_id if v.virtual_network_gateway_id != null && length(v.virtual_network_gateway_id) > 0 }
}

