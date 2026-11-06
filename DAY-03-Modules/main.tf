provider "aws" {

    region = "us-east-1"
  
}

module "s3_bucket" {
    source = "./modules/s3"
    bucket_name = "myfirstbucket876543260"
}

module "s3_bucket" {
    source = "./modules/s3"
    bucket_name = "myfirst"
}


module "s3_bucket" {
    source = "./modules/s3"
    bucket_name = "myfirstbucket87"
}
