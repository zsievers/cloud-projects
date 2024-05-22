resource "azurerm_storage_account" "main" {
  name                     = var.sa-name
  resource_group_name      = var.rg-name
  location                 = var.location
  account_tier             = var.account-tier
  account_replication_type = var.redundancy

  tags = {
    environment = var.environment
  }
}
