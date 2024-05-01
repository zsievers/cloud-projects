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

variable "rg-name" {
  type = string
  description = "resource group name"
  default = ""
}

variable location {
  type = string
  description = "resource location"
  default = "East US"
}