output "virtual_network_gateway_nat_rules" {
  description = "All virtual_network_gateway_nat_rule resources"
  value       = azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules
}
output "virtual_network_gateway_nat_rules_external_mapping" {
  description = "List of external_mapping values across all virtual_network_gateway_nat_rules"
  value       = [for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : v.external_mapping]
}
output "virtual_network_gateway_nat_rules_internal_mapping" {
  description = "List of internal_mapping values across all virtual_network_gateway_nat_rules"
  value       = [for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : v.internal_mapping]
}
output "virtual_network_gateway_nat_rules_ip_configuration_id" {
  description = "List of ip_configuration_id values across all virtual_network_gateway_nat_rules"
  value       = [for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : v.ip_configuration_id]
}
output "virtual_network_gateway_nat_rules_mode" {
  description = "List of mode values across all virtual_network_gateway_nat_rules"
  value       = [for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : v.mode]
}
output "virtual_network_gateway_nat_rules_name" {
  description = "List of name values across all virtual_network_gateway_nat_rules"
  value       = [for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : v.name]
}
output "virtual_network_gateway_nat_rules_resource_group_name" {
  description = "List of resource_group_name values across all virtual_network_gateway_nat_rules"
  value       = [for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : v.resource_group_name]
}
output "virtual_network_gateway_nat_rules_type" {
  description = "List of type values across all virtual_network_gateway_nat_rules"
  value       = [for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : v.type]
}
output "virtual_network_gateway_nat_rules_virtual_network_gateway_id" {
  description = "List of virtual_network_gateway_id values across all virtual_network_gateway_nat_rules"
  value       = [for k, v in azurerm_virtual_network_gateway_nat_rule.virtual_network_gateway_nat_rules : v.virtual_network_gateway_id]
}

