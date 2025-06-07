variable "rgs" {
  description = "The name of the resource group where the resources will be created."
  type        = map(object({
    name = string
    location = string
  }))
}

variable "vnets" {
  description = "Map of virtual networks with their properties."
  type = map(object({
    name          = string
    address_space = list(string)
    location      = string
  }))  
}

variable "subnets" {
  description = "Map of subnets with their properties."
  type = map(object({
    name           = string
    address_prefix = list(string)    
  }))
  
}
