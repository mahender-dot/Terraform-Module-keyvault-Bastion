data "azurerm_network_interface" "data_nic" {
    name = "Bas-nic"
    resource_group_name = "Bas-rg"
}

data "azurerm_key_vault" "data-key" {
  name = "Baskey"
  resource_group_name = "Bas-rg"
}

data "azurerm_key_vault_secret" "username" {
  name         = "Bas-username"
  key_vault_id = data.azurerm_key_vault.data-key.id
}

data "azurerm_key_vault_secret" "password" {
  name         = "Bas-password"
  key_vault_id = data.azurerm_key_vault.data-key.id
}
