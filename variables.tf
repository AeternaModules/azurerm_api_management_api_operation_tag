variable "api_management_api_operation_tags" {
  description = <<EOT
Map of api_management_api_operation_tags, attributes below
Required:
    - api_operation_id
    - display_name
    - name
EOT

  type = map(object({
    api_operation_id = string
    display_name     = string
    name             = string
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_api_management_api_operation_tag's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: api_operation_id
  #   source:    [from validate.ApiOperationID] !ok
  # path: api_operation_id
  #   source:    [from validate.ApiOperationID] err != nil
  # path: name
  #   source:    [from validate.ApiManagementChildName] !matched
  # path: display_name
  #   condition: length(value) > 0
  #   message:   must not be empty
}

