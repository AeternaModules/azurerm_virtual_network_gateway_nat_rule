variable "virtual_network_gateway_nat_rules" {
  description = <<EOT
Map of virtual_network_gateway_nat_rules, attributes below
Required:
    - name
    - resource_group_name
    - virtual_network_gateway_id
    - external_mapping (block):
        - address_space (required)
        - port_range (optional)
    - internal_mapping (block):
        - address_space (required)
        - port_range (optional)
Optional:
    - ip_configuration_id
    - mode
    - type
EOT

  type = map(object({
    name                       = string
    resource_group_name        = string
    virtual_network_gateway_id = string
    ip_configuration_id        = optional(string)
    mode                       = optional(string) # Default: "EgressSnat"
    type                       = optional(string) # Default: "Static"
    external_mapping = object({
      address_space = string
      port_range    = optional(string)
    })
    internal_mapping = object({
      address_space = string
      port_range    = optional(string)
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_nat_rules : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_nat_rules : (
        v.external_mapping.port_range == null || (length(v.external_mapping.port_range) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_nat_rules : (
        v.internal_mapping.port_range == null || (length(v.internal_mapping.port_range) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_virtual_network_gateway_nat_rule's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: virtual_network_gateway_id
  #   source:    [from virtualnetworkgateways.ValidateVirtualNetworkGatewayID] !ok
  # path: virtual_network_gateway_id
  #   source:    [from virtualnetworkgateways.ValidateVirtualNetworkGatewayID] err != nil
  # path: external_mapping.address_space
  #   source:    validation.IsCIDR(...) - no translation rule yet, add one
  # path: internal_mapping.address_space
  #   source:    validation.IsCIDR(...) - no translation rule yet, add one
  # path: mode
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: ip_configuration_id
  #   source:    [from validate.VirtualNetworkGatewayIpConfigurationID] !ok
  # path: ip_configuration_id
  #   source:    [from validate.VirtualNetworkGatewayIpConfigurationID] err != nil
}

