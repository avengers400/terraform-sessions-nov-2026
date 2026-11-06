


resource "aws_instance" "myec2" {

  ami          = "ami-0d97d7f07b25dd693"
  instance_type = "t3.micro"
  tags = {
    "Name" : "demo-terraform-ec2"
  }

}
