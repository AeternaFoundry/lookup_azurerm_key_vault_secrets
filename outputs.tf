output "key_vault_secrets_lookup_id" {
  description = "Map of id values across all key_vault_secrets_lookup, keyed the same as var.key_vault_secrets_lookup"
  value       = { for k, v in data.azurerm_key_vault_secrets.key_vault_secrets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "key_vault_secrets_lookup_key_vault_id" {
  description = "Map of key_vault_id values across all key_vault_secrets_lookup, keyed the same as var.key_vault_secrets_lookup"
  value       = { for k, v in data.azurerm_key_vault_secrets.key_vault_secrets_lookup : k => v.key_vault_id if v.key_vault_id != null && length(v.key_vault_id) > 0 }
}
output "key_vault_secrets_lookup_names" {
  description = "Map of names values across all key_vault_secrets_lookup, keyed the same as var.key_vault_secrets_lookup"
  value       = { for k, v in data.azurerm_key_vault_secrets.key_vault_secrets_lookup : k => v.names if v.names != null && length(v.names) > 0 }
}
output "key_vault_secrets_lookup_secrets" {
  description = "Map of secrets values across all key_vault_secrets_lookup, keyed the same as var.key_vault_secrets_lookup"
  value       = { for k, v in data.azurerm_key_vault_secrets.key_vault_secrets_lookup : k => v.secrets if v.secrets != null && length(v.secrets) > 0 }
}

