## String variable

variable "NAME" {
  default = "Devops"
}

## Number variable

variable "NUMBER" {
  default = 100
}

## BOOLEAN Variable

variable "BOOLEAN" {
  default = true
}

variable "DEFAULT" {
  default = "simple default string"
}

## LIST

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

## MAP

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

## ENVIRONMENT VARIABLES

variable "SAMPLE_ENV" {}
output "EXAMPLE_OF_ENV_VARIABLES" {
  value = var.SAMPLE_ENV
}

## Input from tfvars

variable "ENVIRONMENT" {}
output "ENVIRONMENT_0F_TFVARS" {
  value = var.ENVIRONMENT
}