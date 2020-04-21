resource "aws_instance" "sample" {
  ami = "ami-004cd5eb616d96667"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-080e9bce8cef41ff1"]

  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "root"
      password = "DevOps321" // need to remove passwords later while we talk about password management.
      host     = self.public_ip
    }
    inline = [
      "cd /root",
      "export GIT_USER=bvvmahesh",
      "export GIT_PASSWORD=mahesh0524",
      "git clone https://${GIT_USER}:${GIT_PASSWORD}@github.com/bvvmahesh/Shell-Scripting.git",
      "env",
      "sh Shell-Scripting/robot-shop/project.sh"
    ]
  }
}
