data "azurerm_key_vault_secret" "ssh_public_key" {
  name         = azurerm_key_vault_secret.ssh_public_key.name
  key_vault_id = azurerm_key_vault.main.id
}
