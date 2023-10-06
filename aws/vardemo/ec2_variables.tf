provider "aws" {
  region = "ap-south-1"

  access_key = "ENTER YOUR ACCESS KEY"
  secret_key = "ENTER YOUR SECRET KEY"
}

resource "aws_instance" "myec2" {
   ami = "ami-0700df939e7249d03"
   instance_type = "t2.micro"
}
