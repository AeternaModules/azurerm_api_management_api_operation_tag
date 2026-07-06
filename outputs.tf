output "api_management_api_operation_tags" {
  description = "All api_management_api_operation_tag resources"
  value       = azurerm_api_management_api_operation_tag.api_management_api_operation_tags
}
output "api_management_api_operation_tags_api_operation_id" {
  description = "List of api_operation_id values across all api_management_api_operation_tags"
  value       = [for k, v in azurerm_api_management_api_operation_tag.api_management_api_operation_tags : v.api_operation_id]
}
output "api_management_api_operation_tags_display_name" {
  description = "List of display_name values across all api_management_api_operation_tags"
  value       = [for k, v in azurerm_api_management_api_operation_tag.api_management_api_operation_tags : v.display_name]
}
output "api_management_api_operation_tags_name" {
  description = "List of name values across all api_management_api_operation_tags"
  value       = [for k, v in azurerm_api_management_api_operation_tag.api_management_api_operation_tags : v.name]
}

