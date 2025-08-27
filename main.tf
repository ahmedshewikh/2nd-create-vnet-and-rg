provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = "x"
  location = "East US"  # Change to your preferred region
}

resource "azurerm_virtual_network" "main" {
  name                = "x-vnet"
  address_space       = ["10.0.0.0/29"]  # 8 IPs total, 5 usable
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
}
