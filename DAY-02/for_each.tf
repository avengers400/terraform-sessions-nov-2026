variable "instance_types_new" {
    type = map(string)
    default = {
        "dev" = "t3.micro"
        "test" = "t2.small"
        "prod" = "t2.medium"
    }
}


resource "aws_instance" "myec21" {
  for_each = var.instance_types_new
  ami          = var.ami_id
  instance_type = each.value
  tags = {
    "Name" : each.value
    "Environment" : each.key
  }

}

# a = {
#         "dev" = "t3.micro"
#         "test" = "t2.small"
#         "prod" = "t2.medium"
#     }

# for i in a:
#   print(i)------------>"dev" = "t3.micro"  -   i.key------dev
#                                                i.value----t3.mic
#          ------------>"test" = "t2.small"  - i.key -----test
#                                                i.value----t2.small