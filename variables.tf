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
  validation {
    condition = alltrue([
      for k, v in var.api_management_api_operation_tags : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

