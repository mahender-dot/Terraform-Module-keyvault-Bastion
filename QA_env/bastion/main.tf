resource "azurerm_bastion_host" "msbastion" {
  name                = "Bas-bastion"
  location            = "south india"
  resource_group_name = "Bas-rg"

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.data_bassub.id
    public_ip_address_id = data.azurerm_public_ip.mspip.id
  }
}