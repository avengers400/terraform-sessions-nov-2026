resource "aws_instance" "myec22" {

  count = 2
  ami          = "ami-0d97d7f07b25dd693"
  instance_type = "t2.micro"
  tags = {
    "Name" : "remote-terraform-ec2"
  }
  provisioner "remote-exec" {
      inline = ["sudo apt update -y",
                "sudo apt install apache2 -y",
                "sudo systemctl start apache2"]
    
  }
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("./docker.pem")
    host = self.public_ip
  }
}