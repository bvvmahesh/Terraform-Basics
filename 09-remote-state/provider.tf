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

resource "aws_security_group" "allow-ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "null_resource" "none" {
  provisioner "local-exec" {
    command = "sleep 90"
  }
}