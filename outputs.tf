output "service_accounts_id" {
  description = "Map of id values across all service_accounts, keyed the same as var.service_accounts except keys with no id are omitted"
  value       = { for k, v in datadog_service_account.service_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_accounts_disabled" {
  description = "Map of disabled values across all service_accounts, keyed the same as var.service_accounts except keys with no disabled are omitted"
  value       = { for k, v in datadog_service_account.service_accounts : k => v.disabled if v.disabled != null }
}
output "service_accounts_email" {
  description = "Map of email values across all service_accounts, keyed the same as var.service_accounts except keys with no email are omitted"
  value       = { for k, v in datadog_service_account.service_accounts : k => v.email if v.email != null && length(v.email) > 0 }
}
output "service_accounts_name" {
  description = "Map of name values across all service_accounts, keyed the same as var.service_accounts except keys with no name are omitted"
  value       = { for k, v in datadog_service_account.service_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "service_accounts_roles" {
  description = "Map of roles values across all service_accounts, keyed the same as var.service_accounts except keys with no roles are omitted"
  value       = { for k, v in datadog_service_account.service_accounts : k => v.roles if v.roles != null && length(v.roles) > 0 }
}

