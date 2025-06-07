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
        vnet_name = "vnet-prod"
    }
}
