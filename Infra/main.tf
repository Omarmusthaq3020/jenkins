module "rg" {
    source = "./Module/RG"
    resource_group_name = var.resource_group_name
    location = var.location
  
}

module "vnet" {
  source = "./Module/Vnet"

  resource_group_name = module.rg.resource_group_name
  location            = module.rg.resource_group_location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  subnet_name         = var.subnet_name
  subnet_prefixes     = var.subnet_prefixes

  delegation_name     = var.delegation_name
  delegation_service  = var.delegation_service
}

