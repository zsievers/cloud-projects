module "storage_account" {
  source   = "../modules/tf-mod-azurerm-storage-account"
  location = var.location
  sa-name  = "sa${var.application_name}${var.environment_name}${random_string.main.result}"
  rg-name  = azurerm_resource_group.main.name
}

resource "azurerm_resource_group" "main" {
  name     = "rg-${var.application_name}-${var.environment_name}"
  location = var.location
}

resource "random_string" "main" {
  length  = 8
  upper   = false
  special = false
}

