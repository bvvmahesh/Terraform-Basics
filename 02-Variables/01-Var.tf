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
  value = var.MAP
}