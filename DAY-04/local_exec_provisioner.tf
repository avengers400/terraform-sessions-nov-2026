resource "aws_instance" "myec21" {

  ami          = "ami-0d97d7f07b25dd693"
  instance_type = "t2.micro"
  tags = {
    "Name" : "demo-terraform-ec2"
  }
  provisioner "local-exec" {
    command = "echo ec2 creation is done and the public ip is ${self.public_ip} > ec2_public.txt "
  }

}

