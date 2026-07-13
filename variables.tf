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
    mode                       = optional(string)
    type                       = optional(string)
    external_mapping = list(object({
      address_space = string
      port_range    = optional(string)
    }))
    internal_mapping = list(object({
      address_space = string
      port_range    = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_nat_rules : (
        length(v.external_mapping) >= 1
      )
    ])
    error_message = "Each external_mapping list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_nat_rules : (
        length(v.internal_mapping) >= 1
      )
    ])
    error_message = "Each internal_mapping list must contain at least 1 items"
  }
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
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_nat_rules : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_nat_rules : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_nat_rules : (
        alltrue([for item in v.external_mapping : (item.port_range == null || (length(item.port_range) > 0))])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_network_gateway_nat_rules : (
        alltrue([for item in v.internal_mapping : (item.port_range == null || (length(item.port_range) > 0))])
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

