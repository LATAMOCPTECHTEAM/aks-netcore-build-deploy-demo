resource "azurerm_container_registry" "acr" {
  name                = "${var.resource_name_prefix}acr${var.tag_env}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "Basic"
  admin_enabled       = true

}
