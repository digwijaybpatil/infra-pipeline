module "rg_module" {
    
  source = "../modules/rg_module"
  for_each = var.rgs
  resource_group_name     = each.value.name
  resource_group_location = each.value.location
    
}