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
  default     = "contoso-rg-"
}

# Tags
variable "tag_env" {
  type        = string
  description = "The environment tag name"
  default     = "dev"
}