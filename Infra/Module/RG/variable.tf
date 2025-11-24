variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}

variable "location" {
  description = "The location of the Resource Group"
  type        = string
  default     = "East US"  # You can set a default location, or make it optional
}
