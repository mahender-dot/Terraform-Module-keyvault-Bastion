resource "azurerm_virtual_network" "mvnet" {
    name = "Bas-vnet"
    location = "south india"
    resource_group_name = "Bas-rg"
    address_space = ["10.0.0.0/16"]
}