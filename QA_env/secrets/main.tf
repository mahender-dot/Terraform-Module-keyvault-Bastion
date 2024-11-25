resource "azurerm_key_vault_secret" "username" {
  name         = "Bas-username"
  value        = "mahender"
  key_vault_id = data.azurerm_key_vault.data-key.id
}

resource "azurerm_key_vault_secret" "password" {
  name         = "Bas-password"
  value        = "mahender@123"
  key_vault_id = data.azurerm_key_vault.data-key.id
}
