#Resource Group
resource "azurerm_resource_group" "RG" {
  name     = var.rg_name
  location = var.rg_location
  tags     = var.rg_tags
}
