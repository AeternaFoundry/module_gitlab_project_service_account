variable "project_service_accounts" {
  description = <<EOT
Map of project_service_accounts, attributes below
Required:
    - project
Optional:
    - email
    - name
    - skip_wait_for_deletion
    - timeouts
    - username
EOT

  type = map(object({
    project                = string
    email                  = optional(string)
    name                   = optional(string)
    skip_wait_for_deletion = optional(bool)
    timeouts = optional(object({
      delete = optional(string)
    }))
    username = optional(string)
  }))
}

