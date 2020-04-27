resource "null_resource" "na" {
  provisioner "local-exec" {
    command = "echo Hello Mahesh"
  }
}