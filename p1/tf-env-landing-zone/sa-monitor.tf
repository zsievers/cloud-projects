resource "random_string" "activity_logs" {
  length  = 8
  upper   = false
  special = false
}

data "azurerm_subscription" "current" {}

resource "azurerm_monitor_diagnostic_setting" "activity_logs" {
  name                       = "diag-${random_string.activity_logs.result}"
  target_resource_id         = data.azurerm_subscription.current.id
  storage_account_id         = module.storage_account.storage_account_id
  log_analytics_workspace_id = azurerm_log_analytics_workspace.main.id

  enabled_log {
    category = "Administrative"
  }

  enabled_log {
    category = "Security"
  }
  enabled_log {
    category = "ServiceHealth"
  }
  enabled_log {
    category = "Alert"
  }
  enabled_log {
    category = "Recommendation"
  }
  enabled_log {
    category = "ResourceHealth"
  }
  enabled_log {
    category = "Policy"
  }


}

resource "azurerm_log_analytics_workspace" "main" {
  name                = "log-${var.application_name}-${var.environment_name}-${random_string.main.result}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}