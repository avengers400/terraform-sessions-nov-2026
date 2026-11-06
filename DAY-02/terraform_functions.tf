
resource "aws_instance" "myec2" {

  ami = var.ami_id
  count = 3
  instance_type = var.instance_type
  tags = {
    "Name" : "demo-terraform-ec2-${count.index}"
  }

}
