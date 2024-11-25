resource "azurerm_network_interface" "msnic" {
    name = "Bas-nic"
    location = "south india"
    resource_group_name = "Bas-rg"
ip_configuration {
    name = "internal"
    subnet_id = data.azurerm_subnet.data_sub.id
    private_ip_address_allocation = "Dynamic"
}
}

