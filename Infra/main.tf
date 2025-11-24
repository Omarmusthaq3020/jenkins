module "rg" {
  source = "./Module/RG"

  resource_group_name = var.resource_group_name
  location            = var.location
}

module "vnet" {
  source = "./Module/Vnet"

  resource_group_name = module.rg.name
  location            = module.rg.location

  vnet_name          = var.vnet_name
  address_space      = var.address_space
  subnet_name        = var.subnet_name
  subnet_prefixes    = var.subnet_prefixes

  vm_subnet_name     = var.vm_subnet_name
  vm_subnet_prefixes = var.vm_subnet_prefixes

  delegation_name    = var.delegation_name
  delegation_service = var.delegation_service
}

module "vm" {
  source = "./Module/VM"

  resource_group_name = module.rg.name
  location            = module.rg.location

  vm_name        = var.vm_name
  vm_size        = var.vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password

  subnet_id = module.vnet.vm_subnet_id
}
