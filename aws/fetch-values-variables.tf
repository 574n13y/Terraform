provider "aws" {
  region     = "ap-south-1"
 
}

resource "aws_instance" "myec2" {
   ami = "ami-02bb7d8191b50f4bb"
   instance_type = var.list[2]
}

variable "list" {
  type = list
  default = ["m5.large","m5.xlarge","t2.medium"]
}

variable "types" {
  type = map
  default = {
    ap-south-1 = "t2.micro"
    us-west-2 = "t2.nano"
    us-west-1 = "t2.small"
  }
}