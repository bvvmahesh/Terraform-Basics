provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "sample" {
  ami = "ami-004cd5eb616d96667"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080e9bce8cef41ff1"]
}