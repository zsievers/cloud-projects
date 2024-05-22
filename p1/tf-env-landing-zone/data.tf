data "azurerm_key_vault" "main" {
name = azurerm_key_vault.main.name
resource_group_name = azurerm_resource_group.main.name
}

data "azurerm_key_vault_secret" "ssh_public_key" {
name = azurerm_key_vault_secret.ssh_public_key.name
key_vault_id = azurerm_key_vault.main.id
}
