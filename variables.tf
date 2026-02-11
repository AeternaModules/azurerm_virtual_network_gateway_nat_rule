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
}

