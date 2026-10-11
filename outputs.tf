output "auth_server_claims_lookup_id" {
  description = "Map of id values across all auth_server_claims_lookup, keyed the same as var.auth_server_claims_lookup except keys with no id are omitted"
  value       = { for k, v in data.okta_auth_server_claims.auth_server_claims_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "auth_server_claims_lookup_auth_server_id" {
  description = "Map of auth_server_id values across all auth_server_claims_lookup, keyed the same as var.auth_server_claims_lookup except keys with no auth_server_id are omitted"
  value       = { for k, v in data.okta_auth_server_claims.auth_server_claims_lookup : k => v.auth_server_id if v.auth_server_id != null && length(v.auth_server_id) > 0 }
}
output "auth_server_claims_lookup_claims" {
  description = "Map of claims values across all auth_server_claims_lookup, keyed the same as var.auth_server_claims_lookup except keys with no claims are omitted"
  value       = { for k, v in data.okta_auth_server_claims.auth_server_claims_lookup : k => v.claims if v.claims != null && length(v.claims) > 0 }
}

