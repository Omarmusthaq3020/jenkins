variable "resource_group_name" {
  description = "Name of RG"
  type        = string
  default     = "jenkins-demo-rg"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "centralindia"
}

variable "vnet_name" {
  description = "Name of VNet"
  type        = string
  default     = "jenkins-vnet"
}

variable "address_space" {
  description = "VNet CIDR"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
  default     = "jenkins-subnet"
}

variable "subnet_prefixes" {
  description = "Subnet CIDR"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "delegation_name" {
  type    = string
  default = "subnet-delegation"
}

variable "delegation_service" {
  type    = string
  default = "Microsoft.Web/serverFarms"
}
