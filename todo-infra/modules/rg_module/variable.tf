variable "resource_group_name" {
  description = "The name of the resource group where the resources will be created."
  type        = string
}

variable "resource_group_location" {
  description = "The Azure region where the resource group will be created."
  type        = string
  default     = "East US"
}