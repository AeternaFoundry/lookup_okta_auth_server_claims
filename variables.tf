variable "auth_server_claims_lookup" {
  description = <<EOT
Map of auth_server_claims_lookup, attributes below
Required:
    - auth_server_id
EOT

  type = map(object({
    auth_server_id = string
  }))
}

