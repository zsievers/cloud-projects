# resource "azurerm_subnet" "bastion" {
#   name                 = "AzureBastionSubnet"
#   resource_group_name  = azurerm_resource_group.main.name
#   virtual_network_name = azurerm_virtual_network.main.name
#   address_prefixes     = ["10.0.0.0/24"]
# }

# resource "azurerm_public_ip" "bastion" {
#   name                = "pip-bas${random_string.main.result}"
#   location            = azurerm_resource_group.main.location
#   resource_group_name = azurerm_resource_group.main.name
#   allocation_method   = "Static"
#   sku                 = "Standard"
# }

# resource "azurerm_bastion_host" "main" {
#   name                = "bas-${random_string.main.result}"
#   location            = azurerm_resource_group.main.location
#   resource_group_name = azurerm_resource_group.main.name

#   ip_configuration {
#     name                 = "configuration"
#     subnet_id            = azurerm_subnet.bastion.id
#     public_ip_address_id = azurerm_public_ip.bastion.id
#   }
# }

/*
1. Bastion needs its own subnet, but is powerful to spin up more vm's without having to manually create pips
2. Also offers more security due to not connecting via public internet
3. Expensive for learning projects
*/