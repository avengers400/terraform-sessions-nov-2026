
resource "aws_instance" "myec21" {
  count = 3
  ami          = var.ami_id
  instance_type = element(var.instance_types, count.index)
  tags = {
    "Name" : "demo-terraform-ec2-${count.index}"
  }

}

# 0 - element(var.instance_types, 0)= t3.micro
# 1 - element(var.instance_types, 1)= t2.small
# 2 - element(var.instance_types, 2)= t2.medium