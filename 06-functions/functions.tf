variable "Remove_spaces" {}

output "Removed_Spaces" {
  value = replace(var.Remove_spaces," " , "")
}


variable "string_to_list" {}

output "string_to_list" {
  value = split(",", var.string_to_list)
}