variable "Remove_spaces" {}

output "Removed_Spaces" {
  value = replace(var.Remove_spaces," " , "")
}


variable "string_to_list" {}

output "string_to_list" {
  value = split(",", var.string_to_list)
}

variable "lower_case_to_upper_case" {}

output "upper_case" {
  value = upper(var.lower_case_to_upper_case)
}
