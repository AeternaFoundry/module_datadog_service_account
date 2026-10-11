resource "datadog_service_account" "service_accounts" {
  for_each = var.service_accounts

  email    = each.value.email
  disabled = each.value.disabled
  name     = each.value.name
  roles    = each.value.roles
}

