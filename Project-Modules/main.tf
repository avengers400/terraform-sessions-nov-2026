provider "aws" {
  region = "us-east-1"
}

module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = "10.0.0.0/16"             
}

module "ec2" {
    source = "./modules/ec2-sg"
    vpc_ec2_id = module.vpc.vpc_id
    ami_id = "ami-1234"
}