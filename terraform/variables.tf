# Global
variable "resource_name_prefix" {
  type        = string
  description = "Resource prefix"
  default     = "contoso"
}

# Resource group
variable "location" {
  type        = string
  description = "Azure location where the infrastructure will be provisioned"
  default     = "eastus"
}
variable "rg_name_prefix" {
  type        = string
  description = "Azure resource group name"
  default     = "rg-aks-demo"
}
# AKS

# Tags
variable "tag_env" {
  type        = string
  description = "The environment tag name"
  default     = "dev"
}

variable "service_principal_client_id" {
  type        = string
  description = "Client ID"
}

variable "service_principal_client_secret" {
  type        = string
  description = "Client Secret"
}

variable "subscription_id" {
  type        = string
  description = "Subscription Id"
}

variable "object_id" {
  type        = string
  description = "object Id"
}