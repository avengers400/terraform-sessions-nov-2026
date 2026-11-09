provider "aws" {
   region = "us-east-1"
}

resource "aws_instance" "myec23" {

    ami         = "ami-0d97d7f07b25dd693"
    instance_type = (terraform.workspace == "prod" ? "t2.micro" : "t3.micro" )

    tags = {
        "Name" : "demo-terraform-ec2-${terraform.workspace}"
    }
    
}