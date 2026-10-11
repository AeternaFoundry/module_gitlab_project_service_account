resource "gitlab_project_service_account" "project_service_accounts" {
  for_each = var.project_service_accounts

  project                = each.value.project
  email                  = each.value.email
  name                   = each.value.name
  skip_wait_for_deletion = each.value.skip_wait_for_deletion
  timeouts               = each.value.timeouts
  username               = each.value.username
}

