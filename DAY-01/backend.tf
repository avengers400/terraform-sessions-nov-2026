terraform {
  backend "s3" {
    bucket = "terraform-remote-state-file-0986"
    key = "rishav/terraform.tfstate"
    region = "us-east-1"
  }
}