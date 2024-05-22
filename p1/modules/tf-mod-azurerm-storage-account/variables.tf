variable "location" {
  type = string
}

variable "rg-name" {
  type = string
  description = "resource group name"
  default = ""
}
variable "sa-name" {
  type = string
  description = "storage account name"
}

variable "environment" {
  type = string
  default = "Dev"
}

variable "account-tier" {
  type    = string
  default = "Standard"
}

variable "redundancy" {
  type    = string
  default = "LRS" 
}

variable "sku_name" {
  type = string
  default = "Standard"
}