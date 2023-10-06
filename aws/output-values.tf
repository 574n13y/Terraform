provider "aws" {
  region = "ap-south-1"
}

resource "aws_eip" "lb" {
  domain = "vpc"
}

output "getip" {
  value = "https://${aws_eip.lb.public_ip}:8080"
}