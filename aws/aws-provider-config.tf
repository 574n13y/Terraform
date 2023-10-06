provider "aws" {
  region     = "ap-south-1"
#keys are configured in awscliconfig.
}

resource "aws_iam_user" "test" {
    name = "test-user"
  }
