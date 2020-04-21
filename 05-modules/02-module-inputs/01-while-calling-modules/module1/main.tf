resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "echo Hello mahesh ${var.NAME}"
  }
}