variable "NAME" {
  default = "Devops"
}

variable "NUMBER" {
  default = 100
}

variable "BOOLEAN" {
  default = true
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
