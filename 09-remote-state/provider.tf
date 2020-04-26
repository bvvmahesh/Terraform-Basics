provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-remote-state-file"
    key    = "sample/tearraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-locking"
  }
}

resource "aws_security_group" "allow-sample" {
  name        = "sample"
  description = "sample"
}

resource "null_resource" "none" {
  provisioner "local-exec" {
    command = "sleep 90"
  }
}