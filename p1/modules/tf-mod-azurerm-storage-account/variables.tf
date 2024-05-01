variable application_name {
  type = string
  description = "name of application"
  default = "app1"
}

variable environment {
  type = string
  description = "name of environment"
  default = "dev"
}
variable "account-tier" {
  type    = string
  default = "Standard"
}

variable "redundancy" {
  type    = string
  default = "GRS"
}

variable "sku_name" {
  type = string
  default = "standard"
}