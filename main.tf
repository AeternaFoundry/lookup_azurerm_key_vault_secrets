data "azurerm_key_vault_secrets" "key_vault_secrets_lookup" {
  for_each = var.key_vault_secrets_lookup

  key_vault_id = each.value.key_vault_id
}

