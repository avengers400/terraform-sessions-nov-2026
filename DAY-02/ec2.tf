
resource "aws_instance" "myec21" {

  ami          = var.ami_id
  instance_type = var.instance_type
  tags = {
    "Name" : "demo-terraform-ec2"
  }

}

output "ec2_public_ip" {
  value = aws_instance.myec21.public_ip
}