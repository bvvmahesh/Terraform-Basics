resource "aws_instance" "sample" {
  ami = "ami-004cd5eb616d96667"
  instance_type = "t2.micro"
  vpc_security_group_ids = [var.SECURITY_GROUP]
}