variable "service_accounts" {
  description = <<EOT
Map of service_accounts, attributes below
Required:
    - email
Optional:
    - disabled
    - name
    - roles
EOT

  type = map(object({
    email    = string
    disabled = optional(bool)
    name     = optional(string)
    roles    = optional(set(string))
  }))
}

