resource "azurerm_linux_virtual_machine" "msvm" {
    name = "Bas-vm"
    location = "south india"
    resource_group_name = "Bas-rg"
    size = "Standard_F2"
    admin_username = data.azurerm_key_vault_secret.username.value
    admin_password = data.azurerm_key_vault_secret.password.value
    disable_password_authentication = false
    network_interface_ids = [data.azurerm_network_interface.data_nic.id]

    os_disk {
        caching = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
    source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
