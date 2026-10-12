output "radius_auth_backend_users_mount" {
  description = "Map of mount values across all radius_auth_backend_users, keyed the same as var.radius_auth_backend_users except keys with no mount are omitted"
  value       = { for k, v in vault_radius_auth_backend_user.radius_auth_backend_users : k => v.mount if v.mount != null && length(v.mount) > 0 }
}
output "radius_auth_backend_users_namespace" {
  description = "Map of namespace values across all radius_auth_backend_users, keyed the same as var.radius_auth_backend_users except keys with no namespace are omitted"
  value       = { for k, v in vault_radius_auth_backend_user.radius_auth_backend_users : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "radius_auth_backend_users_policies" {
  description = "Map of policies values across all radius_auth_backend_users, keyed the same as var.radius_auth_backend_users except keys with no policies are omitted"
  value       = { for k, v in vault_radius_auth_backend_user.radius_auth_backend_users : k => v.policies if v.policies != null && length(v.policies) > 0 }
}
output "radius_auth_backend_users_username" {
  description = "Map of username values across all radius_auth_backend_users, keyed the same as var.radius_auth_backend_users except keys with no username are omitted"
  value       = { for k, v in vault_radius_auth_backend_user.radius_auth_backend_users : k => v.username if v.username != null && length(v.username) > 0 }
}

