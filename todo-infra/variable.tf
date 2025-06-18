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

variable "vms" {
  type = map(object({
    vm_name                     = string
    #vm_location                 = string
    vm_size                     = string
    admin_username              = string
    admin_password              = string
    nic_name                    = string
   # nic_location                = string
   # resource_group_name         = string
    ip_configuration_name       = string
   # subnet_id                   = string
    private_ip_address_allocation = string
    public_ip_name              = string
   # public_ip_location          = string
    public_ip_allocation_method = string
    os_disk_caching             = string
    os_disk_storage_account_type = string
    image_publisher             = string
    image_offer                 = string
    image_sku                   = string
    image_version               = string
    disable_password_authentication = bool
    nsg_name                    = string
  }))
}

variable "key_vault" {
  description = "values for the key vault name."
  type = map(object({
    key_vault_name = string
    key_vault_resource_group_name = string
  }))
}


