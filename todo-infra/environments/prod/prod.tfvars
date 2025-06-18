rgs = {
    resource1 = {
        name     = "rg-prod"
        location = "central india"
    }
}

vnets = {
    resource1 = {
        name          = "vnet-prod"
        location      = "central india"
        address_space = ["10.0.0.0/16"]
    }
}

subnets = {
    resource1 = {
        name = "subnet-prod"
        address_prefix = ["10.0.0.0/24"]        
    }
}

vms = {
  resource1 = {
    vm_name                     = "vm-prod"
   # vm_location                 = "central india"
    vm_size                     = "Standard_B1s"
    # admin_username              = "admin-digwi"
    # admin_password              = "Admin-digwi6564#"
    nic_name                    = "vm-prod-nic"
    #nic_location                = "central india"
    #resource_group_name         = "rg-prod"
    ip_configuration_name       = "internal"
    #subnet_id                   = "/subscriptions/xxx/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVnet/subnets/default"
    private_ip_address_allocation = "Dynamic"
    public_ip_name              = "vm-prod-publicip"
    #public_ip_location          = "eastus"
    public_ip_allocation_method = "Static"
    os_disk_caching             = "ReadWrite"
    os_disk_storage_account_type = "Standard_LRS"
    image_publisher             = "Canonical"
    image_offer                 = "UbuntuServer"
    image_sku                   = "18.04-LTS"
    image_version               = "latest"
    disable_password_authentication = false
    nsg_name                    = "nsg-prod"
   
  }
}


key_vault_name            = "digwi-keyvault"
key_vault_resource_group_name = "rg-keyvault"
