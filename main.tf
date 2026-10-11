data "okta_auth_server_claims" "auth_server_claims_lookup" {
  for_each = var.auth_server_claims_lookup

  auth_server_id = each.value.auth_server_id
}

