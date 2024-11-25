terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "4.0.1"
        }
    }
}

provider "azurerm" {
    features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
subscription_id = "a1077f3f-5356-42c5-85f8-509319827796"

}