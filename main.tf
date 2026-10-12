resource "vault_radius_auth_backend_user" "radius_auth_backend_users" {
  for_each = var.radius_auth_backend_users

  mount     = each.value.mount
  username  = each.value.username
  namespace = each.value.namespace
  policies  = each.value.policies
}

