
resource "aws_instance" "myec22" {

  ami          = lookup(var.ami_ids, var.aws_region, "ami-1234")
  instance_type = var.instance_type
  tags = {
    "Name" : "demo-terraform-ec2"
  }

}