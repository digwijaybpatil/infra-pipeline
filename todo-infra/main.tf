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
  address_prefixes         = each.value.address_prefix
}

data "azurerm_key_vault" "kv" {
  for_each = var.key_vault
  name = each.value.key_vault_name
  resource_group_name = each.value.key_vault_resource_group_name
}

data "azurerm_key_vault_secret" "admin_username" {
  name = "admin-username"
  key_vault_id = data.azurerm_key_vault.kv.id
}

data "azurerm_key_vault_secret" "admin_password" {
  name = "admin-password"
  key_vault_id = data.azurerm_key_vault.kv.id
}

module "vm_module" {
  source = "./modules/vm_module"
  for_each = var.vms
  nic_name = each.value.nic_name
  nic_location = module.rg_module[each.key].resource_group_location
  resource_group_name = module.rg_module[each.key].resource_group_name
  ip_configuration_name = each.value.ip_configuration_name
  subnet_id = module.subnet_module[each.key].subnet_id
  private_ip_address_allocation = each.value.private_ip_address_allocation
  public_ip_name = each.value.public_ip_name
  public_ip_location = module.rg_module[each.key].resource_group_location
  public_ip_allocation_method = each.value.public_ip_allocation_method
  vm_name = each.value.vm_name
  vm_location = module.rg_module[each.key].resource_group_location
  vm_size = each.value.vm_size
  admin_username = data.azurerm_key_vault_secret.admin_username.value
  # admin_username = each.value.admin_username
  # admin_password = each.value.admin_password
  admin_password = data.azurerm_key_vault_secret.admin_password.value
  os_disk_caching = each.value.os_disk_caching
  os_disk_storage_account_type = each.value.os_disk_storage_account_type
  image_publisher = each.value.image_publisher
  image_offer = each.value.image_offer
  image_sku = each.value.image_sku
  image_version = each.value.image_version
  disable_password_authentication = each.value.disable_password_authentication
  nsg_name = each.value.nsg_name
  nsg_location = module.rg_module[each.key].resource_group_location
}