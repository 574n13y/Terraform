provider "aws" {
  region = "ap-south-1"

  access_key = "ENTER YOUR ACCESS KEY"
  secret_key = "ENTER YOUR SECRET KEY"
}

resource "aws_eip" "lb" {
  domain   = "vpc"
}

resource "aws_eip" "lb2" {
  domain   = "vpc"
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"


  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}
