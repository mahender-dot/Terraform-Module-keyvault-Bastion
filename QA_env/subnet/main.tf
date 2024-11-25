resource "azurerm_subnet" "mvmsub" {
    name = "Bas-vmsub"
    resource_group_name = "Bas-rg"
    virtual_network_name = "Bas-vnet"
    address_prefixes = ["10.0.1.0/24"]
}

resource "azurerm_subnet" "mbassub" {
    name = "AzureBastionSubnet"
    resource_group_name = "Bas-rg"
    virtual_network_name = "Bas-vnet"
    address_prefixes = ["10.0.2.0/24"]
}