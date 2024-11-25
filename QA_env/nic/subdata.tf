data "azurerm_subnet" "data_sub" {
    name = "Bas-vmsub"
    resource_group_name = "Bas-rg"
    virtual_network_name = "Bas-vnet"
}