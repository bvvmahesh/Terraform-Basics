variable "DATA" {
  default = "Hello world"
}
provider "local" {}

resource "local_file" "mahesh" {
  content     = var.DATA
  filename = "/tmp/foo.bar"
}