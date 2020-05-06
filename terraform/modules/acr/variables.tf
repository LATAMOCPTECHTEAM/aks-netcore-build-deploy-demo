variable "resource_name_prefix" {
  type        = string
  description = "Resource prefix"
  default     = "itautedpoc"
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
  default     = "itau-tedpoc-rg-"
}

# Tags
variable "tag_env" {
  type        = string
  description = "The environment tag name"
  default     = "dev"
}

variable "resource_group_name" {
  type        = string
  description = "Resource prefix"
}
variable "service_principal_client_id" {
  type        = string
  description = "Client ID"
}

variable "subscription_id" {
  type        = string
  description = "Subscription Id"
}

variable "object_id" {
  type        = string
  description = "object Id"
}
