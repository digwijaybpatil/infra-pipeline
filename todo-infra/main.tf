module "rg_module" {    
  source = "./modules/rg_module"
  for_each = var.rgs
  resource_group_name     = each.value.name
  resource_group_location = each.value.location    
}

module "vnet_module" {
  source = "./modules/vnet_module"
  for_each = var.vnets
  vnet_name                = each.value.name
  resource_group_name      = module.rg_module[each.key].resource_group_name
  vnet_location            = each.value.location
  address_space            = each.value.address_space
}

module "subnet_module" {
  source = "./modules/subnet_module"
  for_each = var.subnets
  subnet_name              = each.value.name
  resource_group_name      = module.rg_module[each.key].resource_group_name
  vnet_name                = module.vnet_module[each.key].vnet_name
  address_prefixes         = each.value.address_prefixes
}