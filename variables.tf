variable "key_vault_secrets_lookup" {
  description = <<EOT
Map of key_vault_secrets_lookup, attributes below
Required:
    - key_vault_id
EOT

  type = map(object({
    key_vault_id = string
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

