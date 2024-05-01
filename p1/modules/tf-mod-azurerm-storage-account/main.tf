resource "azurerm_storage_account" "main" {
  name                     = "sa-${var.application_name}-${var.environment}"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = var.account-tier
  account_replication_type = var.redundancy

  tags = {
    environment = var.environment
  }
}
