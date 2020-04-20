variable "NAME" {
  default = "Devops"
}

variable "NUMBER" {
  default = 100
}

output "NAME" {
  value = var.NAME
}


output "NUMBER" {
  value = var.NUMBER
}


