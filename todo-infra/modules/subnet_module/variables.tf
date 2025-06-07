variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string  
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}

variable "resource_group_name" {
  description = "The name of the resource group where the resources will be created."
  type        = string  
}