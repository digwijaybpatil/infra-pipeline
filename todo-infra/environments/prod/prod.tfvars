rgs = {
    rg1 = {
        name     = "rg-prod"
        location = "central india"
    }
}

vnets = {
    vnet1 = {
        name          = "vnet-prod"
        location      = "central india"
        address_space = ["10.0.0.0/16"]
    }
}

subnets = {
    subnet1 = {
        name = "subnet-prod"
        address_prefix = ["10.0.0.0/24"]
    }
}
