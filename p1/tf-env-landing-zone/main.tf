module "storage_account" {
  source = "../modules/tf-mod-azurerm-storage-account"
}

resource "azurerm_resource_group" "main" {
  name     = "rg-${var.application_name}-${var.environment_name}"
  location = var.location
}

module "kv" {
  source = "../modules/tf-mod-azurerm-key-vault"
  location            = azurerm_resource_group.main.location 
}

data azurerm_client_config current {}