data "azurerm_subnet" "data_bassub" {
    name = "AzureBastionSubnet"
    resource_group_name = "Bas-rg"
    virtual_network_name = "Bas-vnet"
}

data "azurerm_public_ip" "mspip" {
name = "Bas-pip"
resource_group_name = "Bas-rg"
}