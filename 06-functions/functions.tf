variable "Remove_spaces" {}

output "Removed_Spaces" {
  value = replace(var.Remove_spaces," " , "")
}