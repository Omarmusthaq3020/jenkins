variable "resource_group_name" {
  description = "Name of the Resource Group"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}

variable "subnet_prefixes" {
  description = "values for the Subnet prefixes"
  type = list(string)
}

variable "delegation_name" {
  description = "Name of the delegation block"
  type        = string
}

variable "delegation_service" {
  description = "Service to delegate the subnet to"
  type        = string
}

variable "vm_subnet_name" { type = string }
variable "vm_subnet_prefixes" { type = list(string) }