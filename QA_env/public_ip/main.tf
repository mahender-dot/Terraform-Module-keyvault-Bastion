resource "azurerm_public_ip" "mspip" {
    name = "Bas-pip"
    location = "south india"
    resource_group_name = "Bas-rg"
    allocation_method = "Static"
    sku                 = "Standard"
}