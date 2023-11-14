# Get latest CentOS Linux 6.x AMI
data "aws_ami" "debian-linux-8" {
  most_recent = true
  owners      = ["679593333241"]
  filter {
    name   = "name"
    values = ["debian-jessie*"]
  }
}

# Get latest Debian Linux Stretch 9 AMI
data "aws_ami" "debian-linux-9" {
  most_recent = true
  owners      = ["679593333241"]
  filter {
    name   = "name"
    values = ["debian-stretch*"]
  }
}

# Get latest Debian Linux 10 AMI
data "aws_ami" "debian-linux-10" {
  most_recent = true
  owners      = ["679593333241"]
  filter {
    name   = "name"
    values = ["debian-10*"]
  }
}
