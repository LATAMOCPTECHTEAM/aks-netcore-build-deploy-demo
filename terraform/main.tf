module "resourcegroup" {
  source = "./modules/rg"

  location             = var.location
  rg_name_prefix       = var.rg_name_prefix
  tag_env              = var.tag_env
  resource_name_prefix = var.resource_name_prefix
}

module "acr" {
  source = "./modules/acr"

  resource_group_name         = module.resourcegroup.resource_group_name_shared
  tag_env                     = var.tag_env
  resource_name_prefix        = var.resource_name_prefix
  location                    = var.location
  service_principal_client_id = var.service_principal_client_id
  object_id                   = var.object_id
  subscription_id             = var.subscription_id
}

module "aks-app" {
  source                          = "./modules/aks"
  resource_group_name             = module.rg.resource_group_name_aks_app
  tag_env                         = var.tag_env
  resource_name_prefix            = var.resource_name_prefix
  location                        = var.location
  acr_name                        = module.acr.acr_name
  service_principal_client_id     = var.service_principal_client_id
  service_principal_client_secret = var.service_principal_client_secret

}