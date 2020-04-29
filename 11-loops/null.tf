resource "null_resource" "loop" {
  count = 10
  provisioner "local-exec" {
    command = "echo Hello Mahesh - ${count.index};sleep 2"
  }
}