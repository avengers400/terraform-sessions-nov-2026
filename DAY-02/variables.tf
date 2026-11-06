variable "ami_id" {

    type = string
   
  
}

variable "instance_type" {

    type = string
    
}

variable "aws_region" {

    type = string
    default = "us-west-2"
}

variable "ami_ids" {
    type = map(strings)
    default = {
        "us-east-1"  = "ami-1234"
        "us-west-2" = "ami-5678"
        "ap-south-1" = "ami-9012"
    }
}

variable "instance_types" {
    type = list(string)
    default = ["t3.micro", "t2.small", "t2.medium"]
}
