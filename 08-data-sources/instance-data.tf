data "aws_instance" "foo" {
  instance_id = "i-06656e96ba93e7a1f"
}

provider "aws" {
  region = "us-east-1"
}

output "PUBLIC_ADDRESS" {
  value = data.aws_instance.foo.public_ip
}