resource "aws_security_group" "myec2sg" {


    name = "ec2-sg"
    vpc_id = var.vpc_ec2_id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "ssh"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        from_port = 80
        to_port = 80
        protocol = "http"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "myec2" {
    ami = var.ami_id
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.myec2sg.id]
    tags = {
        Name = "demo-terraform-ec2"
    }
    depends_on = [aws_security_group.myec2sg]
    
}
