output "virtual_network_gateway_nat_rules_external_mapping" {
  description = "Map of external_mapping values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.external_mapping }
}
output "virtual_network_gateway_nat_rules_internal_mapping" {
  description = "Map of internal_mapping values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.internal_mapping }
}
output "virtual_network_gateway_nat_rules_ip_configuration_id" {
  description = "Map of ip_configuration_id values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.ip_configuration_id }
}
output "virtual_network_gateway_nat_rules_mode" {
  description = "Map of mode values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.mode }
}
output "virtual_network_gateway_nat_rules_name" {
  description = "Map of name values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.name }
}
output "virtual_network_gateway_nat_rules_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.resource_group_name }
}
output "virtual_network_gateway_nat_rules_type" {
  description = "Map of type values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.type }
}
output "virtual_network_gateway_nat_rules_virtual_network_gateway_id" {
  description = "Map of virtual_network_gateway_id values across all virtual_network_gateway_nat_rules, keyed the same as var.virtual_network_gateway_nat_rules"
  value       = { for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : k => v.virtual_network_gateway_id }
}

