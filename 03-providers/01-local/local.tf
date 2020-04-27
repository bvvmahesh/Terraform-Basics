variable "DATA" {
  default = "Hello world"
}
//provider "local" {}

resource "local_file" "foo" {
  content     = var.DATA
  filename = "/tmp/foo.bar"
}