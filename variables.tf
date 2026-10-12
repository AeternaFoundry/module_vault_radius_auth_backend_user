variable "radius_auth_backend_users" {
  description = <<EOT
Map of radius_auth_backend_users, attributes below
Required:
    - mount
    - username
Optional:
    - namespace
    - policies
EOT

  type = map(object({
    mount     = string
    username  = string
    namespace = optional(string)
    policies  = optional(set(string))
  }))
}

