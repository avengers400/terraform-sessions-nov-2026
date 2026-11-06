resource "aws_s3_bucket" "myfirsts3" {

    bucket = var.bucket_name
    tags = {
        Name = var.bucket_name
    }

  
}

