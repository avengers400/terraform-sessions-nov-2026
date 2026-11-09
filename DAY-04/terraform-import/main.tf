provider "aws" {
   region = "us-east-1"
}

import {
   to = aws_instance.importec2
   id = i-032a4e0eebe0a541d
}

resource "aws_instance" "importec2" {
    
}