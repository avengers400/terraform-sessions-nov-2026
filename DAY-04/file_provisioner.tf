# resource "aws_instance" "myec22" {

#   count = 2
#   ami          = "ami-0d97d7f07b25dd693"
#   instance_type = "t2.micro"
#   user_data = file("./install_apache2.sh")
#   tags = {
#     "Name" : "remote-terraform-ec2"
#   }
# }
