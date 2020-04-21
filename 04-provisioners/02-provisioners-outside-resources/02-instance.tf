resource "aws_instance" "sample" {
  ami = "ami-004cd5eb616d96667"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080e9bce8cef41ff1"]
}
resource "null_resource" "remote-exec" {
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "root"
      password = "DevOps321" // need to remove passwords later while we talk about password management.
      host     = aws_instance.sample.public_ip
    }

    inline = [
      "cd /root",
      "export GIT_USER=bvvmahesh",
      "export GIT_PASSWORD=mahesh0524",
      "git clone https://bvvmahesh:mahesh0524@github.com/bvvmahesh/Shell-Scripting.git",
      "sh Shell-Scripting/01-hello.sh"
    ]
  }
}