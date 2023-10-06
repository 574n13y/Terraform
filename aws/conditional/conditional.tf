provider "aws" {
    region = "ap-south-1"
  
}
resource "aws_instance" "dev" {
  ami = "ami-05552d2dcf89c9b24"
  instance_type = "t2.micro"
}

resource "aws_instance" "prod" {
    ami = "ami-05552d2dcf89c9b24"
    instance_type = "t2.large"
  
