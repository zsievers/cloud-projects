variable "location" {
  type = string
  default = "East US"
  description = "Location of resource"
}

variable "application_name" {
  type = string
  default = ""
  description = "Name of application"
}

variable "environment_name" {
  type = string
  default = ""
  description = "Environment of resource"
}
