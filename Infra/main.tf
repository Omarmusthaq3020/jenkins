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

module "rg" {
  source = "./modules/RG"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "vnet" {
  source = "./modules/Vnet"

  resource_group_name = module.rg.name
  location            = module.rg.location

  vnet_name          = var.vnet_name
  address_space      = var.address_space
  subnet_name        = var.subnet_name
  subnet_prefixes    = var.subnet_prefixes
  delegation_name    = var.delegation_name
  delegation_service = var.delegation_service
}

module "vm" {
  source = "./modules/VM"

  resource_group_name = module.rg.name
  location            = module.rg.location
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password

  subnet_id = module.vnet.subnet_id   # needs output from VNet module
}
