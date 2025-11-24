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

variable "vm_name" {
  description = "Name of the Virtual Machine"
  type        = string
  default     = "jenkins-vm"
  
}

variable "vm_size" {
  description = "Size of the Virtual Machine"
  type        = string
  default     = "Standard_B2s"
  
}
variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
  default     = "azureuser"
  
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  default     = "P@ssw0rd1234!"
  
}

variable "vm_subnet_name" {
  type = string
}

variable "vm_subnet_prefixes" {
  type = list(string)
}

