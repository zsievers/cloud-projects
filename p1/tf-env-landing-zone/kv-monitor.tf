resource "random_string" "keyvault_monitor" {
  length  = 8
  upper   = false
  special = false
}


resource "azurerm_monitor_diagnostic_setting" "kv-logs" {
  name                       = "diag-${random_string.keyvault_monitor.result}"
  target_resource_id         = azurerm_key_vault.main.id
  storage_account_id         = module.storage_account.storage_account_id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.main.id

  enabled_log {
    category_group = "audit"
  }
  enabled_log {
    category_group = "allLogs"
  }

  metric {
    category = "AllMetrics"
  }

}