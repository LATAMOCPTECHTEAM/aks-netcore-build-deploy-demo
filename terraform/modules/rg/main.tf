resource "azurerm_resource_group" "rg_aks_app" {
  name     = "${var.rg_name_prefix}aks-app"
  location = var.location
}