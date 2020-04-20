variable "NAME" {
  default = "Devops"
}

variable "NUMBER" {
  default = 100
}

variable "BOOLEAN" {
  default = true
}

variable "DEFAULT" {
  default = "simple default string"
}

variable "LIST" {
  default = ["apple", "banana", "grapes"]
}

output "NAME" {
  value = var.NAME
}


output "NUMBER" {
  value = var.NUMBER
}

output "BOOLEAN" {
  value = var.BOOLEAN
}

output "DEFAULT" {
  value = var.DEFAULT
}

output "LIST" {
  value = var.LIST
}

output "LIST1" {
  value = var.LIST[0]
}

variable "MAP" {
  default = {
    "red" = "apple",
    "green" = "mango",
    "yellow" = "banana"
  }
}

output "FRUIT_RED" {
  value = var.MAP["red"]
}

## Take input from the user

variable "SAMPLE" {}

output "SAMPLE" {
  value = var.SAMPLE
}

variable "SAMPLE_ENV" {}
output "EXAMPLE_OF_ENV_VARIABLES" {
  value = var.SAMPLE_ENV
}

## Input from tfvars

variable "ENVIRONMENT" {}
output "ENVIRONMENT_0F_TFVARS" {
  value = var.ENVIRONMENT
}