provider "aws" {
  region = "ap-south-1"

  access_key = "ENTER YOUR ACCESS KEY"
  secret_key = "ENTER YOUR SECRET KEY"
}

resource "aws_instance" "instance-1" {
    ami = "ami-02bb7d8191b50f4bb"
    instance_type = "t2.micro"
    count = 10
  
}
