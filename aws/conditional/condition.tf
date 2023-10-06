provider "aws" {
    region = "ap-south-1"
  
}

variable "is-test" {
  is-tes
}

resource "aws_instance" "dev" {
  ami = "ami-05552d2dcf89c9b24"
  instance_type = "t2.micro"
  count = var.is-test == true ? 5 : 0
}

resource "aws_instance" "prod" {
    ami = "ami-05552d2dcf89c9b24"
    instance_type = "t2.large"
    count = var.is-test == false ? 1 : 0
  
}

--------------------------------------------------------------------------------

  /* make a new file for adding value for is-test conditions */
  is-test = true
/* is-test = false */ /*- if condition is false*/
