output "api_management_api_operation_tags_api_operation_id" {
  description = "Map of api_operation_id values across all api_management_api_operation_tags, keyed the same as var.api_management_api_operation_tags"
  value       = { for k, v in azurerm_api_management_api_operation_tag.api_management_api_operation_tags : k => v.api_operation_id }
}
output "api_management_api_operation_tags_display_name" {
  description = "Map of display_name values across all api_management_api_operation_tags, keyed the same as var.api_management_api_operation_tags"
  value       = { for k, v in azurerm_api_management_api_operation_tag.api_management_api_operation_tags : k => v.display_name }
}
output "api_management_api_operation_tags_name" {
  description = "Map of name values across all api_management_api_operation_tags, keyed the same as var.api_management_api_operation_tags"
  value       = { for k, v in azurerm_api_management_api_operation_tag.api_management_api_operation_tags : k => v.name }
}

