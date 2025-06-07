variable "resource_group_name" {
  description = "The name of the resource group where the resources will be created."
  type        = string
}

variable "vnet_location" {
  description = "The Azure region where the resource group will be created."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)      
}